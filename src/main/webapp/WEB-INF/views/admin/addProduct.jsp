<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../template/admin_header.jsp"/>

<div class="dashboard-wrapper">
    <div class="dashboard-ecommerce">
        <div class="container-fluid dashboard-content ">
            <form>
                <div class="form-group"><label class="control-label" for="catalog">
                    Chọn loại sản phẩm</label>
                    <select name="catalog" id="catalog" class="form-control">
                        <option value="">1</option>
                    </select>
                </div>

                <div class="form-group"><label class="control-label" for="productCode">
                    Mã sản phẩm</label>
                    <input type="text" class="form-control" id="productCode">
                </div>

                <div class="form-group"><label class="control-label" for="productName">
                    Tên sản phẩm</label>
                    <input type="text" class="form-control" id="productName">
                </div>

                <div class="form-group"><label class="control-label" for="price">
                    Giá</label>
                    <input type="number" class="form-control" min="0" id="price">
                </div>

                <div class="form-group"><label class="control-label" for="description">
                    Mô tả </label>
                    <textarea name="" id="description" class="form-control" cols="30" rows="10"></textarea>
                </div>

                <div class="form-group"><label class="control-label" for="imageSmall">
                    Ảnh hiện thị </label>
                    <input type="file" name="imageSmall" id="imageSmall">
                </div>

                <div class="form-group"><label class="control-label" for="imageLarge">
                    Ảnh hiện thị chi tiết</label>
                    <input type="file" name="imageLarge" id="imageLarge">
                </div>
                <div class="form-group">
                    <buton class="btn btn-primary">Thêm sản phẩm</buton>
                </div>
            </form>

        </div>
    </div>
    <!-- ============================================================== -->
</div>

<jsp:include page="../template/admin_footer.jsp"/>