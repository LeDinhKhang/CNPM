<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
  <div class='snow-container'>
        <div class='snow foreground'></div>
        <div class='snow foreground layered'></div>
        <div class='snow middleground'></div>
        <div class='snow middleground layered'></div>
        <div class='snow background'></div>
        <div class='snow background layered'></div>
    </div>
  <header>
	<nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
            <div class="container">
                <a href="home?tenkhachhang=${tenkhachhang }&tenTK=${tenTK}&soluong=${soluong}" class="navbar-branch">
                    <img src="./image/logo.jpg" height ="40">
                </a>
                <form method="POST" action="search?tenkhachhang=${tenkhachhang }&tenTK=${tenTK}&soluong=${soluong}">
                	<input type="text" placeholder="Bạn tìm gì ..." class="input" id="navbarResponsive" name="search">
                	<input type="submit" value="Tìm Kiếm" class="submit" id="navbarResponsive">
                </form>
                <button class="navbar-toggler" type="button" data-toggle="collapse" 
                data-target="#navbarResponsive">
                <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                <c:if test="${empty tenkhachhang}">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item button">
                            <a class="nav-link" id="navbarResponsive" href="${pageContext.request.contextPath}/DangKi">Đăng Kí</a>
                        </li>
                        <li class="nav-item button">
                            <a class="nav-link" id="navbarResponsive" href="${pageContext.request.contextPath}/DangNhap">Đăng Nhập</a>
                        </li>
                    </ul>
                </c:if>
                <c:if test="${not empty tenkhachhang}">
                	<ul class="navbar-nav ml-auto">
                		<li class="nav-item">
                			<a href="GioHang?tenTK=${tenTK}&tenkhachhang=${tenkhachhang }&soluong=${soluong}" class="cart" id="navbarResponsive">
                    			<i class="fas fa-shopping-cart">  Giỏ hàng: ${soluong}</i>
                			</a>
                		</li>
                		<li class="nav-item">
                			<a href="donhang?tenTK=${tenTK }&tenkhachhang=${tenkhachhang }&soluong=${soluong}" class="donhang" id="navbarResponsive">
                    			Thông Tin Đơn Hàng
                			</a>
                		</li>
                        <li class="nav-item ">
                			<span style="margin-left: 10px;">${tenkhachhang }</span>
                    		<a href="${pageContext.request.contextPath}/DangXuat" style="margin-left:10px; color:black">Thoát</a>
                    	</li>
                    </ul>
                </c:if>
                </div>
            </div>
        </nav>
    </header>
    <!-- xử lí phần menu -->
    <div class="menuxanh">
        <div class="container">
            <ul class="row menu">
                <li class="col-md-2 chung " >
                    <a href="DienThoaiList?tenkhachhang=${tenkhachhang}&tenTK=${tenTK}&soluong=${soluong}">
                        <i class="fas fa-mobile-alt">   Điện thoại</i> 
                    </a>
                </li>
                <li class="col-md-2 chung">
                    <a href="LTList?tenkhachhang=${tenkhachhang }&tenTK=${tenTK}&soluong=${soluong}">
                        <i class="fas fa-laptop">  LapTop</i>
                    </a>
                </li>
                <li class="col-md-2 chung">
                    <a href="TBList?tenkhachhang=${tenkhachhang }&tenTK=${tenTK}&soluong=${soluong}">
                        <i class="fas fa-tablet-alt">  Tablet</i>
                    </a>
                </li>
                <li class="col-md-2 chung">
                    <a href="PKList?tenkhachhang=${tenkhachhang }&tenTK=${tenTK}&soluong=${soluong}">
                        <i class="fas fa-headphones">  Phụ kiện</i>
                    </a>
                </li>
                <li class="col-md-2 chung">
                    <a href="DongHoList?tenkhachhang=${tenkhachhang }&tenTK=${tenTK}&soluong=${soluong}">
                        <i class="fas fa-clock">   Đồng hồ</i>
                    </a>
                </li>
                <li class="col-md-2 chung">
                    <a href="PCList?tenkhachhang=${tenkhachhang }&tenTK=${tenTK}&soluong=${soluong}">
                        <i class="fas fa-desktop">  PC,Máy in</i>
                    </a>
                </li>
            </ul>
        </div>
    </div>