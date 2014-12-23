<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0035)http://english.visitbeijing.com.cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>

<title><s:property value="news.newsName"/></title>
<link type="text/css" rel="stylesheet" href="<s:url value="/css/css.css"/>"></link>
<script src="<s:url value="/js/jsBank.js"/>" language="javascript" type="text/javascript"></script>
<script src="<s:url value="/js/js.js"/>" language="javascript" type="text/javascript"></script>
<script language="javascript">
window.onload=function ()
{
	nav("nav");
	focusL("focusL");
	state("state");
};
 function reWrite()
	{
		document.getElementsByName("userName")[0].value="";
		document.getElementsByName("passWord")[0].value="";
	}
</script>
</head>
 
  <body>
    <jsp:include page="/head_common.jsp"></jsp:include>
    <DIV class=advert><A 
	href="http://english.visitbeijing.com.cn/play/entertainment/#"><IMG 
	src="listnews_files/Img214675353.jpg" width=960 height=120></A></DIV>
	
	<DIV id=fCut01 class=area>
		<DIV class=left>
		<H1>
		<A href="http://english.visitbeijing.com.cn/">首页</A> &gt; 
		<A href="<s:url value="/listNews.action"/>">新闻浏览</A> 
		</H1>
		
		<DIV class=blockA><SPAN id=print_title>
<H2><s:property value="news.newsName"/></H2></SPAN>
<P class=title><SPAN id=print_date><s:property value="news.newsTime"/></SPAN></P>
<DIV id=cont class=cont>



<P><FONT face="arial, helvetica, sans-serif">
	<s:property value="news.newsDetail"/>
</FONT></P>

</DIV>
<DIV id=newPages class=page>
<SCRIPT type=text/javascript src="viewnews_files/page.js"></SCRIPT>
</DIV></DIV>

<DIV class=blockB></DIV>

<DIV class=blockC>
<H2><SPAN><A href="http://english.visitbeijing.com.cn/index.shtml" 
target=_blank>返回&gt;&gt;</A></SPAN></H2>
</DIV>
	</DIV>
	
	<DIV class="right">
		<s:action name="rankSight" executeResult="true"></s:action>
	</DIV>

	
	</DIV>
    <jsp:include page="/bottom.jsp"></jsp:include>
  </body>
</html>











