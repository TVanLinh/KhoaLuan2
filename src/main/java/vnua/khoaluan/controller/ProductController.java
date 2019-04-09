package vnua.khoaluan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import vnua.khoaluan.common.Constant;

@Controller
public class ProductController  extends  BaseController{
    @RequestMapping(value = {"/product"}, method = RequestMethod.GET)
    public String product() {
        return Constant.TEMPLATE_VIEW.PRODUCT;
    }

    @RequestMapping(value = {"/product/{id}"}, method = RequestMethod.GET)
    public String productDetail(@PathVariable(value = "id") String productId) {
        return Constant.TEMPLATE_VIEW.PRODUCT_DETAIL;
    }

// ------------------- Phan code admin ---------------------------------------
    @RequestMapping(value = {"/admin/product"}, method = RequestMethod.GET)
    public String adProduct() {
        return Constant.TEMPLATE_VIEW.ADMIN_PRODUCT;
    }

    @RequestMapping(value = {"/admin/product/add"}, method = RequestMethod.GET)
    public String adProductAdd() {
        return Constant.TEMPLATE_VIEW.ADMIN_ADD_PRODUCT;
    }

    @RequestMapping(value = {"/admin/product/add"}, method = RequestMethod.POST)
    public String adProductAddProcess() {
        return Constant.TEMPLATE_VIEW.ADMIN_ADD_PRODUCT;
    }

    @RequestMapping(value = {"/admin/product/update/{productId}"}, method = RequestMethod.GET)
    public String adProductUpdate(@PathVariable(value = "productId") String productId) {
        return Constant.TEMPLATE_VIEW.ADMIN_ADD_PRODUCT;
    }

    @RequestMapping(value = {"/admin/product/update/{productId}"}, method = RequestMethod.POST)
    public String adProductUpdateProcess(@PathVariable(value = "productId") String productId) {
        return Constant.TEMPLATE_VIEW.ADMIN_ADD_PRODUCT;
    }

}
