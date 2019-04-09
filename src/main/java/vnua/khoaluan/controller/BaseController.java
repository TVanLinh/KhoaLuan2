package vnua.khoaluan.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import vnua.khoaluan.entities.User;
import vnua.khoaluan.service.IUserService;

@Controller
public class BaseController {
    protected static final Logger logger = Logger.getLogger(BaseController.class);

    @Autowired
    IUserService iUserService;

    @ModelAttribute("user")
    public User userCurrent() {
        try{
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            if(authentication != null) {
                return this.iUserService.findByEmail(authentication.getName());
            }
            return null;
        }catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            ex.printStackTrace();
        }
        return null;
    }
}
