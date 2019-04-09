package vnua.khoaluan.service.impl;

import org.apache.log4j.Logger;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import vnua.khoaluan.bean.Result;
import vnua.khoaluan.common.Constant;
import vnua.khoaluan.entities.User;
import vnua.khoaluan.form.UserForm;
import vnua.khoaluan.service.IUserService;

import java.util.Arrays;
import java.util.List;


@Service
@Transactional
public class UserServiceImpl implements IUserService {
    private static final Logger logger = Logger.getLogger(UserServiceImpl.class);

    @Autowired(required = true)
    private MongoTemplate mongoTemplate;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public User findByEmail(String email) {
        try {
            Query query = new Query();
            query.addCriteria(Criteria.where("email").is(email));
            List<User> users = mongoTemplate.find(query, User.class);
            if (users.size() > 0) {
                return users.get(0);
            }
        } catch (Exception ex) {
            logger.error(ex.getMessage());
        }
        return null;
    }

    public Result registerUser(UserForm user) {
        Result result = new Result();
        try {
            // TODO valid user
            User userDb = new User();
            BeanUtils.copyProperties(user, userDb);
            if (user.getRoles() == null || user.getRoles().size() == 0) {
                user.setRoles(Arrays.asList(Constant.ROLE.USER));
            }
            user.setPassWord(passwordEncoder.encode(user.getPassWord()));
            mongoTemplate.save(user, "user");
            result.setStatus(Constant.STATUS.OK);
        } catch (Exception ex) {
            result.setStatus(Constant.STATUS.ERROR);
            logger.error(ex.getMessage(), ex);
        }
        return result;
    }

//    public static void main(String[] args) {
//        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
//        System.out.println( passwordEncoder.encode("123456789"));;
//    }
}
