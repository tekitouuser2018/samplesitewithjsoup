<%@page import="org.jsoup.nodes.Element"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="controller.MainController" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- HTML4
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 -->
 <!DOCTYPE html>

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- css,javascript-->
<link rel="stylesheet" type="text/css" href="./css/style.css">
<script type="text/javascript" src='<c:url value="./js/openclose.js"/>'></script>



<!-- slick
<link rel="stylesheet" href="./slick-1.8.0/slick/slick.css">
<script src="./slick-1.8.0/slick/slick.min.js"></script>
-->

<!-- Add the slick-theme.css if you want default styling -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.css"/>
<!-- Add the slick-theme.css if you want default styling -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick-theme.css"/>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<script type="text/javascript">
$(function(){
	$('.slider').slick({
		accessibility: false,
		dots: true,
		autoplay: true,
		autoplaySpeed: 3000,
		speed: 400,
		pauseOnHover: true,
		infinite: true,
		slidesToShow: 2,
		slidesToScroll: 2
	});
});
$(function() {
	$('.slick-box').slick();
});

</script>


<%@ include file="_CssPartial.jsp" %>
<title ><div style="font-size:20px">News Page</div></title>
</head>
<body>

<div id="container">


<nav id="menubar">
<ul>
<li><a href="./Main"><b>Home</b></a></li>
<li><a href="./News"><b>News Page</b></a></li>
</ul>
</nav>

<section id="new">
<h2 id="newinfo_hdr" class="close">更新情報・お知らせ</h2>
<dl id="newinfo">
	<dt>2018/03/27</dt>
	<dd>yahooニュースの表示</dd>
	<dt>2018/03/28</dt>
	<dd>グノシーグルメニュースの表示</dd>
</dl>
</section>

<nav id="menubar">
<ul>
<li><a href="#yahoo"><b>yahoo</b></a></li>
<li><a href="#gourmet"><b>gourmet</b></a></li>
</ul>
</nav>

<section>

<h2 style="color: white">
News Display
</h2>


<h3 id="yahoo">
<p style="text-align:center" ><i><font face="Impact">Yahoo News</font></i></p><hr size="5px">


<div style=”border-style: solid ; border-width: 1px; padding: 10px 5px 10px 20px;”>
<%= request.getAttribute("element")%>
</div>
</h3>



<h3 id="gourmet">
<p style="text-align:center" ><i><font face="Impact">Gunosy Groumet News</font></i></p><hr size="5px">




<div class="slider">
  <%= request.getAttribute("gourmet")%>
</div>

<!--
<p><hr size="10">
<ul class=" slider">
	<li><a href="./images/sample1.jpg"><img src="./images/sample1.jpg"></a></li>
	<li><a href="./images/sample2.jpg"><img src="./images/sample2.jpg"></a></li>
	<li><a href="./images/sample3.jpg"><img src="./images/sample3.jpg"></a></li>
	<li><a href="./images/sample4.jpg"><img src="./images/sample4.jpg"></a></li>
</ul>
</p>
-->

</h3>








</section>
<p>
<a href="#menubar"><b>Top</b></a></li>
</p>

</div>
<!--/container-->







<%@ include file="_JqueryPartial.jsp" %>


<footer>
<small>Copyright&copy; <a href="./Main">SIMPLE SITE</a> All Rights Reserved.</small>
<span class="pr">《<a href="http://template-party.com/" target="_blank">Web Design:Template-Party</a>》</span>
</footer>

<!--スマホ用更新情報　600px以下-->
<script type="text/javascript">
if (OCwindowWidth() <= 600) {
	open_close("newinfo_hdr", "newinfo");
}
</script>

<script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src='<c:url value="./slick-1.8.0/slick/slick.min.js"/>'></script>

</body>
</html>