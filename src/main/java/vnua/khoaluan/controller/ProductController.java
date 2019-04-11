package vnua.khoaluan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.web.context.HttpRequestResponseHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import vnua.khoaluan.common.Constant;
import vnua.khoaluan.entities.Product;
import vnua.khoaluan.form.ProductForm;
import vnua.khoaluan.service.ICatalogService;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.*;

@Controller
public class ProductController extends BaseController {
    @Autowired
    ICatalogService catalogService;

    @RequestMapping(value = {"/product"}, method = RequestMethod.GET)
    public String product() {
        return Constant.TEMPLATE_VIEW.PRODUCT;
    }

    @RequestMapping(value = {"/product/{id}"}, method = RequestMethod.GET)
    public String productDetail(@PathVariable(value = "id") String productId) {
        return Constant.TEMPLATE_VIEW.PRODUCT_DETAIL;
    }

    @RequestMapping(value = {"/product/imageURL/{catalogCode}/{productCode}/{option}"}, method = RequestMethod.GET)
    public void viewProduct(@PathVariable(value = "catalogCode") String catalogCode,
                            @PathVariable(value = "productCode") String productCode,
                            @PathVariable(value = "option") String option,
                            HttpServletResponse response) {
        try {
            Product product = this.catalogService.findProductByProductCode(catalogCode, productCode);
            if(product != null) {
                InputStream is ;
                if("small".equals(option)) {
                    is = loadImage(Constant.ROOT_IMAGE_URL + product.getImageSmall());
                }else{
                    is = loadImage(Constant.ROOT_IMAGE_URL + product.getImageLarge());
                }

                response.setContentType("image/jpeg");
                response.setHeader("Content-Disposition", String.format("inline; filename=\"" + productCode + "\""));

                OutputStream outputStream;

                outputStream = response.getOutputStream();
                FileCopyUtils.copy(is, outputStream);
            }
        } catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
        }
    }

    private InputStream loadImage(String url) {
        try {
            BufferedImage bufferedImage = ImageIO.read(new File(url));
            ByteArrayOutputStream os = new ByteArrayOutputStream();
            ImageIO.write(bufferedImage, "gif", os);
            InputStream is = new ByteArrayInputStream(os.toByteArray());
            return is;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    // ------------------- Phan code admin ---------------------------------------
    @RequestMapping(value = {"/admin/product"}, method = RequestMethod.GET)
    public String adProduct() {
        return Constant.TEMPLATE_VIEW.ADMIN_PRODUCT;
    }

    //
    @ModelAttribute(value = "productForm")
    public ProductForm initProduct() {
        return new ProductForm();
    }

    @RequestMapping(value = {"/admin/product/add"}, method = RequestMethod.GET)
    public String adProductAdd(Model model) {
        model.addAttribute("catalogList", catalogService.findALL());
        return Constant.TEMPLATE_VIEW.ADMIN_ADD_PRODUCT;
    }

    @RequestMapping(value = {"/admin/product/add"}, method = RequestMethod.POST)
    public String adProductAddProcess(@ModelAttribute(value = "productForm") ProductForm productForm,
                                      Model model) {
        try {
            model.addAttribute("catalogList", catalogService.findALL());
            catalogService.addProduct(productForm);
        } catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
        }
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
