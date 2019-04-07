package vnua.khoaluan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import vnua.khoaluan.common.Constant;

@Controller
public class MainController {
    @RequestMapping(value = "/")
    public String index(){
        return Constant.TEMPLATE_VIEW.INDEX;
    }
}
