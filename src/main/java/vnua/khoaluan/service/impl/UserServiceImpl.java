package vnua.khoaluan.service.impl;

import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import vnua.khoaluan.entities.User;
import vnua.khoaluan.service.IUserService;
import vnua.khoaluan.service.MongoUserDetailsService;

import java.util.List;


@Service
@Transactional
public class UserServiceImpl implements IUserService {
    private static final Logger logger = Logger.getLogger(UserServiceImpl.class);

    @Autowired(required = true)
    private MongoTemplate mongoTemplate;

    public User findByEmail(String email) {
        try{
            Query query = new Query();
            query.addCriteria(Criteria.where("email").is(email));
            List<User> users = mongoTemplate.find(query,User.class);
            if(users.size() > 0) {
                return users.get(0);
            }
        }catch (Exception ex) {
            logger.error(ex.getMessage());
        }
        return  null;
    }

    public List<String> registerUser(User user) {
        return null;
    }

//    public static void main(String[] args) {
//        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
//        System.out.println( passwordEncoder.encode("123456789"));;
//    }
}
