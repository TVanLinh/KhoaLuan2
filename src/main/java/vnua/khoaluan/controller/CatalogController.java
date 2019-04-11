package vnua.khoaluan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import vnua.khoaluan.common.Constant;
import vnua.khoaluan.entities.Catalog;
import vnua.khoaluan.service.ICatalogService;

@Controller
public class CatalogController extends BaseController {
    @Autowired
    ICatalogService iCatalogService;

    @RequestMapping(value = {"/admin/catalog"}, method = RequestMethod.GET)
    public String adCatalog(Model model) {
        try{
            model.addAttribute("catalogList", iCatalogService.findALL());
        }catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
        }

        return Constant.TEMPLATE_VIEW.ADMIN_CATALOG;
    }

    @RequestMapping(value = {"/admin/catalog/insertTest"}, method = RequestMethod.GET)
    public  String insertTest() {
        try{
            Catalog catalog = new Catalog();
            catalog.setCode("CP00001");
            catalog.setName("Hai san tuoi song");
            this.iCatalogService.insert(catalog);

            catalog.setCode("CP00002");
            catalog.setName("Do uong");
            this.iCatalogService.insert(catalog);

            catalog.setCode("CP00003");
            catalog.setName("Trai cay nhap khau");
            this.iCatalogService.insert(catalog);
        }catch (Exception ex) {

        }
        return Constant.TEMPLATE_VIEW.ADMIN_CATALOG;
    }

}
