package vnua.khoaluan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import vnua.khoaluan.bean.Cart;
import vnua.khoaluan.bean.Result;
import vnua.khoaluan.common.Constant;
import vnua.khoaluan.common.StringUtil;
import vnua.khoaluan.entities.Config;
import vnua.khoaluan.entities.Product;
import vnua.khoaluan.form.CartForm;
import vnua.khoaluan.service.ICartService;
import vnua.khoaluan.service.ICatalogService;
import vnua.khoaluan.service.IConfigService;
import vnua.khoaluan.service.IProductService;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

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

    @ModelAttribute(value = "cartForm")
    public CartForm initCartForm() {
        return   new CartForm();
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
    public String checkout( String productId ) {
        return Constant.TEMPLATE_VIEW.CHECKOUT;
    }
}
