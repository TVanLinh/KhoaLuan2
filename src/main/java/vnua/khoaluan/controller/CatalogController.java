package vnua.khoaluan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import vnua.khoaluan.common.Constant;

@Controller
public class CatalogController {
    @RequestMapping(value = {"/admin/catalog"}, method = RequestMethod.GET)
    public String adProduct() {
        return Constant.TEMPLATE_VIEW.ADMIN_CATALOG;
    }
}
