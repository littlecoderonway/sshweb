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

<title>新闻管理</title>
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
    <a href="<s:url value="/jsp/news/addNews.jsp"/>">添加新闻</a>|<a href="<s:url value="/listUser.action"/>">返回列表</a>
    </h2>
    <!-- 用户列表 -->	
    <table border="0" cellspacing="0" cellpadding="3" width="100%">
    <tr width="100%" align="center">
    <td width="30%">标题</td>
    <td width="30%">来源</td>
    <td width="20%">时间</td>
    <td width="20%">操作</td>
    </tr>
    <s:iterator value="newsList" id="news">
    	<tr width="100%" align="center">
    	<td width="30%"><s:property value="newsName"/></td>
    	<td width="30%"><s:property value="newsSource"/></td>
    	<td width="20%"><s:property value="newsTime"/></td>
    	<td width="20%">
    		<a href="<s:url value="/deleteNews.action"><s:param name="newsId" value="newsId" /></s:url>">删除</a>
    		|<a href="<s:url value="/editNews.action"><s:param name="newsId" value="newsId" /></s:url>">编辑</a>
			|<a href="<s:url value="/viewNews.action"><s:param name="newsId" value="newsId" /></s:url>">查看</a>
    	</td>
    </tr>
    </s:iterator>
    </table>	
    <div align="center">
        共 <s:property value="total"/> 页 第 <s:property value="cpage"/> 页 
        <pages:pages cpage="%{cpage}" total="%{total}" url="%{url}"/>
        </div>
    </div>
    </div>
    <jsp:include page="/bottom.jsp"></jsp:include>
  </body>
</html>
