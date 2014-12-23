<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="pages" uri="/WEB-INF/page.tld"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0035)http://english.visitbeijing.com.cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>

<title>添加新闻</title>
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
</script>
</head>
  <body>
    <jsp:include page="/head.jsp"></jsp:include>
    <div  class="area" id="fCut01">
    <div class="middle">
    	<h1>
    	<a>新闻管理</a>
    	</h1>
    
    <h2>
    <a href="<s:url value="/listNews.action"/>">返回列表</a>
    </h2>
	    <center>
    <table border="0">
    <tr>
    <td>
           新闻标题：
    </td>
    <td>
    <s:property value="news.newsName"/>
    </td>
    </tr>
    <tr>
    <td>
            新闻日期：
    </td>
    <td >
        <s:property value="news.newsTime"/>
	</td>
	</tr>
    <tr>
    <td>
            新闻来源：
    </td>
    <td >
        <s:property value="news.newsSource"/>
	</td>
	</tr>
	<tr>
	<td >
		新闻内容
	</td>
	<td width="70%" height="30%">
		<s:property value="news.newsDetail"/>
	</td>
	</tr>
	
    </table>    
    <br /><br /><br />
    </center>
    </div>
    </div>
    <jsp:include page="/bottom.jsp"></jsp:include>
  </body>
</html>
