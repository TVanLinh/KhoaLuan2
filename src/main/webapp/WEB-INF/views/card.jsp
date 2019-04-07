<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="template/header.jsp"/>

<div class="container">
    <div class="row">
        <div class="clearfix"></div>
        <div id="content" class="col-sm-12 col-xs-12 col-md-12"><h3>Giỏ hàng</h3>
            <form action="http://ggffg.myzozo.net/checkout/cart/edit" method="post" enctype="multipart/form-data">
                <div class="table-responsive table-cart-content">
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <td class="text-center"><strong>Ảnh</strong></td>
                            <td class="text-center"><strong>Sản phẩm</strong></td>
                            <td class="text-center"><strong>Đơn giá</strong></td>
                            <td class="text-center"><strong>Số lượng</strong></td>
                            <td class="text-center"><strong>Tổng</strong></td>
                            <td class="text-center"><strong>Xóa</strong></td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="text-center"><img
                                    src="http://ggffg.myzozo.net/image/cache/catalog/san-pham/Cam-200x200.jpg"
                                    alt="Cam Mỹ" title="Cam Mỹ" width="100"/></td>
                            <td class="text-left"><a href="http://ggffg.myzozo.net/cam-my">Cam Mỹ</a></td>
                            <td class="text-right"> 156,000đ</td>
                            <td class="text-left">
                                <div class="input-group btn-block"><input type="text" name="quantity[938]"
                                                                          value="12" size="1" class="form-control"/>
                                    <span class="input-group-btn"> <button type="submit" data-toggle="tooltip"
                                                                           title="Cập nhật" class="btn btn-primary"><i
                                            class="fa fa-refresh"></i></button> </span></div>
                            </td>
                            <td class="text-right"> 1,872,000đ</td>
                            <td class="text-center">
                                <button type="button" data-toggle="tooltip" title="Xóa" class="btn btn-danger"
                                        onclick="cart.remove('938');"><i class="fa fa-times-circle"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center"><img
                                    src="http://ggffg.myzozo.net/image/cache/catalog/san-pham/cach-giam-can-thanh-mat-tu-qua-kiwi1-200x200.jpg"
                                    alt="Kiwi xanh" title="Kiwi xanh" width="100"/></td>
                            <td class="text-left"><a href="http://ggffg.myzozo.net/kiwi-xanh">Kiwi xanh</a></td>
                            <td class="text-right"> 119,000đ</td>
                            <td class="text-left">
                                <div class="input-group btn-block"><input type="text" name="quantity[939]" value="1"
                                                                          size="1" class="form-control"/> <span
                                        class="input-group-btn"> <button type="submit" data-toggle="tooltip"
                                                                         title="Cập nhật" class="btn btn-primary"><i
                                        class="fa fa-refresh"></i></button> </span></div>
                            </td>
                            <td class="text-right"> 119,000đ</td>
                            <td class="text-center">
                                <button type="button" data-toggle="tooltip" title="Xóa" class="btn btn-danger"
                                        onclick="cart.remove('939');"><i class="fa fa-times-circle"></i></button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </form>
            <div class="row">
                <div class="col-sm-12"></div>
                <div class="col-sm-4 col-sm-offset-8">
                    <table class="table table-bordered">
                        <tr>
                            <td class="text-right">Thành tiền:</td>
                            <td class="text-right"><strong>1,991,000đ</strong></td>
                        </tr>
                        <tr>
                            <td class="text-right">Phí vận chuyển Toàn Quốc:</td>
                            <td class="text-right"><strong>35,000đ</strong></td>
                        </tr>
                        <tr>
                            <td class="text-right">Tổng số:</td>
                            <td class="text-right"><strong>2,026,000đ</strong></td>
                        </tr>
                    </table>
                </div>
                <div class="clearfix"></div>
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-6 col-xs-6 col_button_shopping"><a href="http://ggffg.myzozo.net/"
                                                                              class="btn btn-default pull-left button_shopping">Tiếp
                            tục mua hàng</a></div>
                        <div class="col-sm-6 col-xs-6 col_button_checkout"><a
                                href="${pageContext.request.contextPath}/cart/checkout"
                                class="btn btn-primary pull-right button_checkout">Tiến hành đặt hàng</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>

<jsp:include page="template/footer.jsp"/>