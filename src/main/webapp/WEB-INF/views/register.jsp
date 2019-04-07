<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="template/header.jsp"/>
<style>
    .form-group .form-control {
        margin-bottom: 15px;
    }
</style>
<div class="container " style="margin-top: 25px;">
    <div class="row">
        <div class="col-xs-12">
            <form>
                <fieldset id="account">
                    <legend>Chi tiết tài khoản</legend>
                    <div class="form-group required" style="display: none;"><label class="col-sm-2 control-label">Nhóm
                        Khách
                        hàng</label>
                        <div class="col-sm-10">
                            <div class="radio"><label> <input type="radio" name="customer_group_id" value="1"
                                                              checked="checked"> Mặc định</label></div>
                        </div>
                    </div>
                    <div class="form-group required"><label class="col-sm-2 control-label" for="input-firstname">Họ
                        &amp;
                        Tên đệm</label>
                        <div class="col-sm-10"><input type="text" name="firstname" value=""
                                                      placeholder="Họ &amp; Tên đệm"
                                                      id="input-firstname" class="form-control"></div>
                    </div>
                    <div class="form-group required"><label class="col-sm-2 control-label"
                                                            for="input-lastname">Tên</label>
                        <div class="col-sm-10"><input type="text" name="lastname" value="" placeholder="Tên"
                                                      id="input-lastname" class="form-control"></div>
                    </div>
                    <div class="form-group required"><label class="col-sm-2 control-label"
                                                            for="input-email">Email</label>
                        <div class="col-sm-10"><input type="email" name="email" value="" placeholder="Email"
                                                      id="input-email" class="form-control"></div>
                    </div>
                    <div class="form-group required"><label class="col-sm-2 control-label" for="input-telephone">Điện
                        thoại</label>
                        <div class="col-sm-10"><input type="tel" name="telephone" value="" placeholder="Điện thoại"
                                                      id="input-telephone" class="form-control"></div>
                    </div>
                    <div class="form-group required"><label class="col-sm-2 control-label" for="input-address-1">Địa
                        chỉ</label>
                        <div class="col-sm-10"><input type="text" name="address_1" value="" placeholder="Địa chỉ"
                                                      id="input-address-1" class="form-control"></div>
                    </div>
                </fieldset>
                <%--Dia chi--%>
                <%-- Mat khau--%>
                <fieldset style="margin-bottom: 15px;">
                    <legend>Mật khẩu</legend>
                    <div class="form-group required"><label class="col-sm-2 control-label" for="input-password">Mật
                        khẩu</label>
                        <div class="col-sm-10"><input type="password" name="password" value="" placeholder="Mật khẩu"
                                                      id="input-password" class="form-control"></div>
                    </div>
                    <div class="form-group required"><label class="col-sm-2 control-label" for="input-confirm">Mật khẩu
                        xác
                        nhận</label>
                        <div class="col-sm-10"><input type="password" name="confirm" value=""
                                                      placeholder="Mật khẩu xác nhận" id="input-confirm"
                                                      class="form-control"></div>
                    </div>
                </fieldset>
                <%----%>
                <div class="buttons">
                    <input type="submit" value="Tiếp tục" class="btn btn-primary">
                </div>

            </form>
        </div>

    </div>
</div>
</div>


<jsp:include page="template/partner.jsp"/>
<jsp:include page="template/footer.jsp"/>
