package vnua.khoaluan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vnua.khoaluan.bean.Cart;
import vnua.khoaluan.bean.Result;
import vnua.khoaluan.common.Constant;
import vnua.khoaluan.common.StringUtil;
import vnua.khoaluan.entities.Config;
import vnua.khoaluan.entities.Order;
import vnua.khoaluan.entities.Product;
import vnua.khoaluan.form.CartForm;
import vnua.khoaluan.service.*;

import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
public class CartController extends BaseController {

    @Autowired
    ICartService iCartService;

    @Autowired
    IProductService iProductService;

    @Autowired
    ICatalogService iCatalogService;

    @Autowired
    IConfigService iConfigService;

    @Autowired
    IOrderService iOrderService;

    @RequestMapping(value = {"/cart"}, method = RequestMethod.GET)
    public String product(HttpSession httpSession, Model model) {
      try{
        Result result = iCartService.getProductBySession(httpSession, 0, 0);
        model.addAttribute("result", result);
          model.addAttribute("carts", result.getCarts().values());

          String feeTransfer = this.iConfigService.getConfigByKey(Constant.CONFIG.FEE_TRANSFER);
          if(feeTransfer == null || StringUtil.isEmptyWithTrim(feeTransfer)) {
              feeTransfer = "35000";
          }

          model.addAttribute("feeTransfer", 35000);

      }catch (Exception ex) {
        logger.error(ex.getMessage(), ex);
      }
      return Constant.TEMPLATE_VIEW.CARD;
    }


    @RequestMapping(value = {"/cart/add/{catalogId}/{product_id}"}, method = RequestMethod.GET)
    public String addProduct(HttpSession session, @PathVariable(value = "catalogId") String catalogId,
                            @PathVariable(value = "product_id") String productId ) {
        try{
            Product product = this.iCatalogService.findProductByProductCode(catalogId, productId);
            if(product != null) {
                Cart cart = new Cart();
                cart.setAmount(1);
                cart.setProduct(product);
                Result result =  this.iCartService.updateCart(session, cart);
                session.setAttribute(Constant.SESSION_CODE.AD_FLAG, Constant.CART_CODE.ADD);
            }
        }catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
        }
        return "redirect:/cart";
    }

    @RequestMapping(value = {"/cart/remove/{product_id}"}, method = RequestMethod.GET)
    public String removeProduct(HttpSession session,
                                @PathVariable(value = "product_id") String productId ) {
        try{
            this.iCartService.removeProductInCart(session, productId);
            session.setAttribute(Constant.SESSION_CODE.AD_FLAG, Constant.CART_CODE.DELETE);
        }catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
        }
        return "redirect:/cart";
    }

    @RequestMapping(value = {"/cart/update"}, method = RequestMethod.POST)
    public String updateProduct(HttpSession httpSession, @ModelAttribute(value = "cartForm")CartForm cartForm) {
        try{
            Product product = this.iCatalogService.findProductByProductCode(cartForm.getCatalogCode(), cartForm.getProductCode());
            if(product != null) {
                Cart cart = new Cart();
                cart.setAmount(cartForm.getAmount());
                cart.setProduct(product);
                Result result =  this.iCartService.updateCart(httpSession, cart);
                httpSession.setAttribute(Constant.SESSION_CODE.AD_FLAG, Constant.CART_CODE.UPDATE);
            }
        }catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
        }
        return "redirect:/cart";
    }

    @RequestMapping(value = {"/cart/checkout"}, method = RequestMethod.GET)
    public String checkout(HttpSession httpSession) {
        try{
            //TODO validate
            if(this.userCurrent() == null) {
                httpSession.setAttribute(Constant.SESSION_CODE.CART_CHECKOUT_REDIRIECT, "true");
                return "redirect:/login";
            }else{
                Order order = new Order();
                Result result = this.iCartService.getProductBySession(httpSession);
                order.getCarts().addAll(result.getCarts().values());
                this.iOrderService.saveOrder(this.userCurrent(), order);
                return "redirect:/cart/order";
            }
            //--------------
        }catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
        }
        return Constant.TEMPLATE_VIEW.CARD;
    }

    @RequestMapping(value = {"/cart/order"}, method = RequestMethod.GET)
    public String listProduct(Model model, @RequestParam(value = "page", required =  false, defaultValue = "1") int page) {
        try{
            List<Order> orders = this.userCurrent().getOrders();
            Collections.sort(orders, new Comparator<Order>() {
                public int compare(Order o1, Order o2) {
                   return o1.getCode().compareTo(o2.getCode());
                }
            });
            Collections.reverse(orders);
            this.pargingInfo.setPageCurrent(page);
            this.pargingInfo.setTotal(orders.size());

            int offset = (this.pargingInfo.getPageCurrent() - 1) * this.pargingInfo.maxItemView;
            int limit = this.pargingInfo.maxItemView;

            if(offset == 0 && orders.size() < offset + this.pargingInfo.maxItemView) {
                limit = orders.size();
            }else  if(offset > orders.size()) {
                offset = orders.size() - 1;
                limit = 0;
            } else if(orders.size() < offset + limit) {
                limit = orders.size() - offset;
            }
            orders = orders.subList(offset, offset + limit);
            model.addAttribute("orders", orders);
        }catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
        }
        return Constant.TEMPLATE_VIEW.LIST_ORDER;
    }
}
