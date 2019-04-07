package vnua.khoaluan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import vnua.khoaluan.common.Constant;

@Controller
public class ProductController {
    @RequestMapping(value = {"/product"}, method = RequestMethod.GET)
    public String product() {
        return Constant.TEMPLATE_VIEW.PRODUCT;
    }


    @RequestMapping(value = {"/product/{id}"}, method = RequestMethod.GET)
    public String productDetail(@PathVariable(value = "id") String productId) {
        return Constant.TEMPLATE_VIEW.PRODUCT_DETAIL;
    }

}
