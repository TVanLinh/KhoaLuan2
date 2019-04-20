package vnua.khoaluan.service.impl;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import vnua.khoaluan.entities.User;
import vnua.khoaluan.bean.Result;
import vnua.khoaluan.common.Constant;
import vnua.khoaluan.entities.Order;
import vnua.khoaluan.service.IOrderService;
import vnua.khoaluan.service.IUserService;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

@Service
@Transactional
public class OrderServiceImpl implements IOrderService {
    private static final Logger logger = Logger.getLogger(OrderServiceImpl.class);

    @Autowired(required = true)
    private MongoTemplate mongoTemplate;

    @Autowired
    private IUserService iUserService;

    DateFormat dateFormat = new SimpleDateFormat(Constant.DATE_FORMAT.ORDER_FORMAT);

    public Result saveOrder(User userInfo, Order order) {
        Result result = new Result();
        try{
            // TODO validate
            DateFormat dateFormat = new SimpleDateFormat(Constant.DATE_FORMAT.ORDER_CODE_FORMAT);
            order.setCreateDate(this.dateFormat.format(new Date()));
            order.setCode(dateFormat.format(new Date()));
            order.setUserID(userInfo.getEmail());
            order.setStatus(Constant.ORDER_STATUS.INIT);
            userInfo.getOrders().add(order);
            this.mongoTemplate.save(userInfo);
        }catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            result.setStatus(Constant.STATUS.ERROR);
        }
        return  result;
    }

    public Result updateStatusOrder(String userId, String orderCode, int status) {
        Result result = new Result();
        result.setStatus(Constant.STATUS.OK);
        try {
            User user = this.iUserService.findByEmail(userId);
            if(user != null) {
                for(Order order: user.getOrders()) {
                    if(order.getCode().equals(orderCode)) {
                        order.setStatus(status);
                        order.setUpdateDate(this.dateFormat.format(new Date()));
                        this.mongoTemplate.save(user);
                        break;
                    }
                }
            }
        }catch (Exception ex ) {
            logger.error(ex.getMessage(), ex);
            result.setStatus(Constant.STATUS.ERROR);
        }
        return  result;
    }
}
