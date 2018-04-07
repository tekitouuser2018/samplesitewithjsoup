<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="controller.MainController" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<link rel="stylesheet" type="text/css" href="./css/style.css">
<script type="text/javascript" src='<c:url value="./js/openclose.js"/>'></script>

<title>Index Page</title>
</head>

<body>

<div id="container">


<p style ="text-align: center;  font-size:30px ; font-face:Impact; font-family: Meiryo; font-weight: bold">これはテストサイトです</p>

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
<dd>ページの作成</dd>
</dl>
</section>

<section>


<h3><a href="./News">News Display</a></h3>
<!--
<p>
	<form action ="./Main" method ="post">
		<input type = "submit" name ="display" value ="NEWS">
	</form>
</p>
  -->

</section>

</div>
<!--/container-->

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




</body>
</html>