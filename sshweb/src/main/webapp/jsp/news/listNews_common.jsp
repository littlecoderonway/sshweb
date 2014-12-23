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

<title>新闻浏览</title>
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
	src="listArticle_files/Img214675353.jpg" width=960 height=120></A></DIV>
	
	<DIV id=fCut01 class=area>
		<DIV class=left>
		<H1><A 
		href="http://english.visitbeijing.com.cn/">首页</A> &gt; <A 
		href="<s:url value="/listNews.action"/>">新闻浏览</A> 
		</H1>
		
		<DIV class=template2>
		<H4></H4>
		
		<DIV class=list14>
		<UL>				
		<s:iterator value="newsList" id="news">
  		<LI><A href="<s:url value="viewNews.action"><s:param name="newsId" value="newsId"/></s:url>">
  			<s:property value="newsName"/></A><SPAN> <s:property value="newsTime"/></SPAN></LI>
		</s:iterator>
  		</UL>
  		</DIV>
		<DIV class=page align="center">
			 共 <s:property value="total"/> 页 第 <s:property value="cpage"/> 页 
        <pages:pages cpage="%{cpage}" total="%{total}" url="%{url}"/>
		</DIV>
		</DIV>
	</DIV>
	<DIV class="right">
		<s:action name="rankSight" executeResult="true"></s:action>
	</DIV>
	</DIV>
    <jsp:include page="/bottom.jsp"></jsp:include>
  </body>
</html>











