package vnua.khoaluan.service;

import vnua.khoaluan.bean.Result;
import vnua.khoaluan.entities.User;
import vnua.khoaluan.form.UserForm;

public interface IUserService {
    User findByEmail (String email);

    Result registerUser(UserForm user);
}
