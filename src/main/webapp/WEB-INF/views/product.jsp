<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="template/header.jsp"/>

<div class="container " style="margin-top: 25px;">
    <div class="row">
        <div class="col-xs-12">
            <ul class="breadcrumb" itemscope="" itemtype="http://schema.org/BreadcrumbList">
                <li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem"><a itemprop="item"
                                                                                                     href="http://ggffg.myzozo.net/">
                    <span itemprop="name"><i class="fa fa-home"></i></span> </a> <span><i class="fa fa-angle-right"></i></span>
                    <meta itemprop="position" content="1">
                </li>
                <li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem"><a itemprop="item"
                                                                                                     href="http://ggffg.myzozo.net/gioi-thieu">
                    <strong itemprop="name">Sản phẩm</strong> </a>
                    <meta itemprop="position" content="2">
                </li>
            </ul>
        </div>

    </div>
</div>

<div class="container">
  <div class="row">
      <div class="col-xs-3">
          <div class="item">
              <div class="product-box"
                   itemscope=""
                   itemtype="/Product">
                  <div class="product-thumbnail flexbox-grid">
                      <a href="product/1"
                         title="Kiwi xanh"> <img
                              src="<c:url value='/resources/images/kiwi1-228x228.jpg'/>"
                              alt="Kiwi xanh"
                              itemprop="image">
                      </a>
                      <div class="product-action hidden-md hidden-sm hidden-xs clearfix">
                          <form class="form variants form-nut-grid margin-bottom-0">
                              <div>
                                  <a class="btn-buy btn-cart btn btn-primary left-to add_to_cart"
                                     data-toggle="tooltip"
                                     title=""
                                     href="card/add/86&amp;redirect=true"
                                     data-original-title="Mua ngay">
                                      <i class="fa fa-shopping-bag"></i>
                                  </a> <a
                                      href="product/1"
                                      data-toggle="tooltip"
                                      title=""
                                      class="btn-gray btn_view btn right-to"
                                      data-original-title="Xem"><i
                                      class="fa fa-eye"></i></a>
                              </div>
                          </form>
                      </div>
                  </div>
                  <div class="product-info a-center">
                      <h3 class="product-name"><a
                              href="product/1"
                              title="Kiwi xanh"
                              itemprop="url">
                          <span itemprop="name">Kiwi xanh</span>
                      </a></h3>
                      <div class="price-box clearfix"
                           itemprop="offers"
                           itemscope=""
                           itemtype="/Offer">
                          <div class="special-price">
                              <span class="price product-price">119,000đ</span>
                          </div>
                          <meta itemprop="price"
                                content="119000">
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
</div>



<jsp:include page="template/partner.jsp"/>
<jsp:include page="template/footer.jsp"/>