package vnua.khoaluan.service;

import vnua.khoaluan.entities.User;

public interface IUserService {
    User findByEmail (String email);
}
