<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="../template/admin_header.jsp"/>

<div class="dashboard-wrapper">
    <div class="dashboard-ecommerce">
        <div class="container-fluid dashboard-content ">
            <form:form modelAttribute="productForm"
                       action="${pageContext.request.contextPath}/admin/product/add" enctype="multipart/form-data">
                <div class="form-group"><label class="control-label" for="catalog">
                    Chọn loại sản phẩm</label>
                    <form:select path="catalogCode" name="catalog" id="catalog" class="form-control">
                       <c:forEach items="${catalogList}" var="item">
                           <option value="${item.code}" ${item.code eq productForm.catalogCode ? 'selected' : ''}>${item.name}</option>
                       </c:forEach>
                    </form:select>
                </div>

                <div class="form-group"><label class="control-label" for="productCode">
                    Mã sản phẩm</label>
                    <form:input  path="code" type="text" class="form-control" id="productCode"/>
                </div>

                <div class="form-group"><label class="control-label" for="productName">
                    Tên sản phẩm</label>
                    <form:input path="name" type="text" class="form-control" id="productName"/>
                </div>

                <div class="form-group"><label class="control-label" for="price">
                    Giá</label>
                    <form:input path="price" type="number" class="form-control" min="0" id="price"/>
                </div>

                <div class="form-group"><label class="control-label" for="discount">
                    Giảm giá</label>
                    <form:input path="discount" type="number" min="0" max="100" class="form-control" id="discount"/>
                </div>

                <div class="form-group"><label class="control-label" for="description">
                    Mô tả </label>
                    <form:textarea path="discription" name="" id="description" class="form-control" cols="30" rows="10"></form:textarea>
                </div>

                <div class="form-group"><label class="control-label" for="imageSmallFile">
                    Ảnh hiện thị </label>
                    <form:input path="imageSmallFile" type="file"  id="imageSmallFile"/>
                </div>

                <div class="form-group"><label class="control-label" for="imageLargeFile">
                    Ảnh hiện thị chi tiết sản phẩm: </label>
                    <form:input path="imageLargeFile" type="file" id="imageLargeFile"/>
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary" value="Thêm sản phẩm"></buton>
                </div>
            </form:form>

        </div>
    </div>
    <!-- ============================================================== -->
</div>

<jsp:include page="../template/admin_footer.jsp"/>