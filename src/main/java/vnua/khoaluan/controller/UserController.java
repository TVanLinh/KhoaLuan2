package vnua.khoaluan.controller;

import java.util.List;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import vnua.khoaluan.User;
import vnua.khoaluan.common.Constant;
import vnua.khoaluan.service.UserService;

@Controller
//@RequestMapping("/user")
public class UserController {

//	private static Logger log = Logger.getLogger(UserController.class);
//
//	@Autowired
//	private UserService userService;
//
//	// Displaying the initial users list.
//	@RequestMapping(value = "/list", method = RequestMethod.GET)
//	public String getPersons(Model model) {
//		log.debug("Request to fetch all users from the mongo database");
//		List<User> user_list = userService.getAll();
//		model.addAttribute("users", user_list);
//		return "welcome";
//	}
//
//	// Opening the add new user form page.
//	@RequestMapping(value = "/add", method = RequestMethod.GET)
//	public String addUser(Model model) {
//		log.debug("Request to open the new user form page");
//		model.addAttribute("userAttr", new User());
//		return "form";
//	}
//
//	// Opening the edit user form page.
//	@RequestMapping(value = "/edit", method = RequestMethod.GET)
//	public String editUser(@RequestParam(value="id", required=true) String id, Model model) {
//		log.debug("Request to open the edit user form page");
//		model.addAttribute("userAttr", userService.findUserId(id));
//		return "form";
//	}
//
//	// Deleting the specified user.
//	@RequestMapping(value = "/delete", method = RequestMethod.GET)
//	public String delete(@RequestParam(value="id", required=true) String id, Model model) {
//		userService.delete(id);
//		return "redirect:list";
//	}
//
//	// Adding a new user or updating an existing user.
//	@RequestMapping(value = "/save", method = RequestMethod.POST)
//	public String save(@ModelAttribute("userAttr") User user) {
//		if(user.getId() != null && !user.getId().trim().equals("")) {
//			userService.edit(user);
//		} else {
//			userService.add(user);
//		}
//		return "redirect:list";
//	}

	@RequestMapping(value = {"/login"}, method = RequestMethod.GET)
	public String login() {
		return Constant.TEMPLATE_VIEW.LOGIN;
	}

	@RequestMapping(value = {"/register"}, method = RequestMethod.GET)
	public String register() {
		return Constant.TEMPLATE_VIEW.REGISTER;
	}
}