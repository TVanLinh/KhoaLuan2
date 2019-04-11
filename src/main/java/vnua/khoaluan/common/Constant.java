package vnua.khoaluan.common;

import java.io.File;

public class Constant {
    public static class TEMPLATE_VIEW {
        // Trang chu
        public static final String INDEX = "index";
        // Trang tat ca san pham
        public static final String PRODUCT = "product";
        // Gio hang
        public static final String CARD = "card";
        // Trang chu admin
        public static final String ADMIN = "admin";
        // Chi tiet mot san pham
        public static final String PRODUCT_DETAIL = "productDetail";
        // trang tin tuc
        public static final String INFOMATION = "information";
        // dang nhap
        public static final String LOGIN = "login";
        // dang ki
        public static final String REGISTER = "register";
        // dat hang
        public static final String CHECKOUT = "checkout";
        // lien he
        public static final String CONTACT = "contact";
        //gioi thieu
        public static final String INTRODUCE = "introduce";

        // ------------------ Phan cho admin ----------------------
        public static final String ADMIN_PRODUCT = "admin/product";
        public static final String ADMIN_ADD_PRODUCT = "admin/addProduct";
        public static final String ADMIN_UPDATE_PRODUCT = "admin/editProduct";
        public static final String ADMIN_CATALOG = "admin/catalog";
        public static final String ACCESS_DENIED = "acessdenied";

    }

    public static class ROLE {
        public static final String ADMIN = "ADMIN";
        public static final String USER = "USER";
    }

    public  static  class STATUS {
        public  static  final  int OK = 1;
        public  static final  int ERROR = 0;
    }

    public  static  class MSG_CODE {
        public static final String MSG_001 = "MSG_001";
        public static final String MSG_002 = "MSG_002";
        public static final String MSG_003 = "MSG_003";
        public static final String MSG_004 = "MSG_004";
        public static final String MSG_005 = "MSG_005";
        public static final String MSG_006 = "MSG_006";
        public static final String MSG_007 = "MSG_007";
        public static final String MSG_008 = "MSG_008";
        public static final String MSG_009 = "MSG_009";
        public static final String MSG_010 = "MSG_010";

    }

    public static final String ROOT_IMAGE_URL = "D:\\KhoaLuan\\images\\" ;

}
