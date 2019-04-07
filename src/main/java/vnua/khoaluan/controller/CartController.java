package vnua.khoaluan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import vnua.khoaluan.common.Constant;

@Controller
public class CartController {
    @RequestMapping(value = {"/cart"}, method = RequestMethod.GET)
    public String product() {
        return Constant.TEMPLATE_VIEW.CARD;
    }


    @RequestMapping(value = {"/cart/add/{product_id}"}, method = RequestMethod.GET)
    public String addProduct(@PathVariable(value = "product_id") String productId ) {
        return Constant.TEMPLATE_VIEW.CARD;
    }

    @RequestMapping(value = {"/cart/remove/{product_id}"}, method = RequestMethod.GET)
    public String removeProduct(@PathVariable(value = "product_id") String productId ) {
        return Constant.TEMPLATE_VIEW.CARD;
    }

    @RequestMapping(value = {"/cart/update/{product_id}"}, method = RequestMethod.GET)
    public String updateProduct(@PathVariable(value = "product_id") String productId ) {
        return Constant.TEMPLATE_VIEW.CARD;
    }

    @RequestMapping(value = {"/cart/checkout"}, method = RequestMethod.GET)
    public String checkout( String productId ) {
        return Constant.TEMPLATE_VIEW.CHECKOUT;
    }
}
