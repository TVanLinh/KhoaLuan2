package vnua.khoaluan.service;

import vnua.khoaluan.entities.User;

import java.util.List;

public interface IUserService {
    User findByEmail (String email);

    List<String> registerUser(User user);
}
