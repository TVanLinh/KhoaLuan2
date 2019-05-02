package vnua.khoaluan.service.impl;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import vnua.khoaluan.common.StringUtil;
import vnua.khoaluan.entities.Product;
import vnua.khoaluan.entities.User;
import vnua.khoaluan.bean.Result;
import vnua.khoaluan.common.Constant;
import vnua.khoaluan.entities.Order;
import vnua.khoaluan.service.IOrderService;
import vnua.khoaluan.service.IUserService;

import java.io.File;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.List;

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
        result.setStatus(Constant.STATUS.OK);
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

    public Order findOrderByOrderCode(String userID, String orderCode) {
       try{
            User user = this.iUserService.findByEmail(userID);
            if(user != null) {
                for(Order order: user.getOrders()) {
                    if(order.getCode().equals(orderCode) && order.getUserID().equals(userID)) {
                        return order;
                    }
                }
            }
       }catch (Exception ex) {
           logger.error(ex.getMessage(), ex);
       }
       return null;
    }

    public Result printOrder(String userName, String orderCode) {
        Result result = new Result();
        result.setStatus(Constant.STATUS.OK);
        try{
            User user = this.iUserService.findByEmail(userName);
            Order order = null;
            if(user != null) {
                for(Order item: user.getOrders()) {
                    if(item.getCode().equals(orderCode)) {
                        order = item;
                        break;
                    }
                }
                if(order != null) {
                    String dir = Constant.ROOT_CART.concat(orderCode);
                    File file = new File(dir);
                    file.mkdirs();
                    FileUtils.cleanDirectory(file);
                    DateFormat dateFormat = new SimpleDateFormat(Constant.DATE_FORMAT.ORDER_CODE_FORMAT);
                    String fileName =  dir.concat(File.separator)
                                      .concat(dateFormat.format(new Date()))
                                      .concat(".pdf");
                    Document document = new Document();
                    PdfWriter.getInstance(document, new FileOutputStream(fileName));
                    document.open();
                    PdfPTable table;
                    Paragraph paragraph = new Paragraph("Vu Thi Hoai Linh");
                    paragraph.setIndentationLeft(5);
                    paragraph.setAlignment(Element.ALIGN_LEFT);
                    Font font = new Font();
                    font.setSize(20);
                    document.add(paragraph);
                    paragraph = new Paragraph();
                    paragraph.setSpacingBefore(10);
                    paragraph.setIndentationLeft(100);
                    document.add(paragraph);

                    // In Thong tin hoa don
                    table = new PdfPTable(2);
//                    table.setWidths(new int[] {50, 50});
                    table.setWidthPercentage(100);
                    PdfPCell cell;
                    // In dia chi
                    font.setSize(10);
                    cell = new PdfPCell(new Paragraph("Trau Quy Gia Lam", font));
                    cell.setUseVariableBorders(true);
                    cell.setBorderColor(BaseColor.WHITE);
                    cell.setBorderWidth(0);
                    cell.setHorizontalAlignment(Element.ALIGN_LEFT);
                    cell.setPadding(5);
                    table.addCell(cell);

                    // // In dia chi
                    cell = new PdfPCell(new Paragraph(""));
                    cell.setUseVariableBorders(true);
                    cell.setBorderColor(BaseColor.WHITE);
                    cell.setBorderWidth(0);
                    cell.setHorizontalAlignment(Element.ALIGN_LEFT);
                    cell.setPadding(5);
                    table.addCell(cell);


                    cell = new PdfPCell(new Paragraph("Trau Quy Gia Lam Ha Noi", font));
                    cell.setUseVariableBorders(true);
                    cell.setBorderColor(BaseColor.WHITE);
                    cell.setBorderWidth(0);
                    cell.setHorizontalAlignment(Element.ALIGN_LEFT);
                    cell.setPadding(5);
                    table.addCell(cell);

                    cell = new PdfPCell(new Paragraph("INVOICE#" + orderCode, font));
                    cell.setUseVariableBorders(true);
                    cell.setBorderColorTop(BaseColor.WHITE);
                    cell.setBorderColorBottom(BaseColor.WHITE);
                    cell.setBorderWidth(0);
                    cell.setHorizontalAlignment(Element.ALIGN_RIGHT);
                    cell.setPadding(5);
                    table.addCell(cell);


                    cell = new PdfPCell(new Paragraph("Phone - 01644952648", font));
                    cell.setUseVariableBorders(true);
                    cell.setBorderColor(BaseColor.WHITE);
                    cell.setBorderWidth(0);
                    cell.setHorizontalAlignment(Element.ALIGN_LEFT);
                    cell.setPadding(5);
                    table.addCell(cell);

                    cell = new PdfPCell(new Paragraph("DATE: " + order.getCreateDate(), font));
                    cell.setUseVariableBorders(true);
                    cell.setBorderColor(BaseColor.WHITE);
                    cell.setBorderWidth(0);
                    cell.setHorizontalAlignment(Element.ALIGN_RIGHT);
                    cell.setPadding(5);
                    table.addCell(cell);


                    ///==========================
                    //=========================================
                    document.add(table);
                    document.close();
                }
            }
       }catch (Exception ex) {
           logger.error(ex.getMessage(), ex);
           result.setStatus(Constant.STATUS.ERROR);
       }
        return  result;
    }

    public Result getOrders(String textSearch, String fromDate, String toDate, int status, int offset,int limit) {
        Result result = new Result();
        result.setStatus(Constant.STATUS.OK);
        try{
            List<User> users = this.iUserService.findALL();
            List<Order> orders = new LinkedList<Order>();
            for(User user: users) {
                orders.addAll(user.getOrders());
            }

            // Sap xep order
            Collections.sort(orders, new Comparator<Order>() {
                public int compare(Order o1, Order o2) {
                    return o1.getCreateDate().compareTo(o2.getCreateDate());
                }
            });

            // Tim kiem order
            List<Order> orderSearch = new LinkedList<Order>();
            if(StringUtil.isEmptyWithTrim(textSearch)) {
                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
                if(StringUtil.isEmptyWithTrim(fromDate)) {
                    fromDate =  dateFormat.format(new Date());
                }

                Calendar createDate = Calendar.getInstance();
                createDate.setTime(dateFormat.parse(fromDate));
                createDate.set(Calendar.HOUR, 0);
                createDate.set(Calendar.MINUTE, 0);
                createDate.set(Calendar.SECOND, 0);

                Calendar calToDate = Calendar.getInstance();

                Calendar calendarOrder = Calendar.getInstance();
                for(Order order: orders) {
                    calendarOrder.setTime(dateFormat.parse(order.getCreateDate().substring(8).trim()));
                    calendarOrder.set(Calendar.HOUR, 0);
                    calendarOrder.set(Calendar.MINUTE, 0);
                    calendarOrder.set(Calendar.SECOND, 0);
                    if(!StringUtil.isEmptyWithTrim(toDate)) {
                        calToDate.setTime(dateFormat.parse(toDate));
                        if((calendarOrder.after(createDate) || createDate.equals(calendarOrder) )
                                && (calendarOrder.before(calToDate) || calendarOrder.equals(calToDate) )) {
                            if(status == -1) {
                                orderSearch.add(order);
                            }else{
                                if(order.getStatus() == status) {
                                    orderSearch.add(order);
                                }
                            }
                        }
                    }else{
                        if(createDate.after(calendarOrder) || createDate.equals(calendarOrder)) {
                            if(status == -1) {
                                orderSearch.add(order);
                            }else{
                                if(order.getStatus() == status) {
                                    orderSearch.add(order);
                                }
                            }
                        }
                    }
                }
            }else{ // truong hop ma don hang khac null, tim kiem theo ma don hang
                for(Order order: orders) {
                    if((order.getCode().toLowerCase()).indexOf(textSearch.toLowerCase().trim()) != -1) {
                        orderSearch.add(order);
                    }
                }
            }

            // sort
            Collections.sort(orderSearch, new Comparator<Order>() {
                public int compare(Order o1, Order o2) {
                    return o1.getCode().compareTo(o2.getCode());
                }
            });

            List<Order> orderResult;

            if(offset == 0 && orderSearch.size() < offset + limit) {
                limit = orderSearch.size();
            }else if(offset > orderSearch.size()) {
                offset = orderSearch.size() - 1;
                limit = 0;
            } else if(orderSearch.size() < offset + limit) {
                limit = orderSearch.size() - offset;
            }

            result.setTotal(orderSearch.size());
            orderResult = new ArrayList<Order>(orderSearch).subList(offset, offset + limit);
            result.getOrders().addAll(orderResult);
            result.setStatus(Constant.STATUS.OK);
            return  result;
        }catch (Exception ex) {
            result.setStatus(Constant.STATUS.ERROR);
            logger.error(ex.getMessage(), ex);
        }
        return result;
    }
}
