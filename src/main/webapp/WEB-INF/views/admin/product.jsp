<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../template/admin_header.jsp"/>

<div class="dashboard-wrapper">
    <div class="dashboard-ecommerce">
        <div class="container-fluid dashboard-content ">
            noi dung
            <button class="btn btn-primary" onclick="window.location = '${pageContext.request.contextPath}/admin/product/add'">
                Them san pham
            </button>
        </div>
    </div>
    <!-- ============================================================== -->
</div>

<jsp:include page="../template/admin_footer.jsp"/>