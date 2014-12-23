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

<title></title>
<link type="text/css" rel="stylesheet" href="<s:url value="/css/css.css"/>"></link>
<script src="<s:url value="/js/jsBank.js"/>" language="javascript" type="text/javascript"></script>
<script src="<s:url value="/js/js.js"/>" language="javascript" type="text/javascript"></script>

</head>
 
  <body>
   		<div class="poster"><a href="http://english.visitbeijing.com.cn/food/fashionable/vegetarian/index.shtml"><img src="./playMain_files/Img214675284.jpg" width="280" height="136"></a></div>
        <dl class="list pointB">
        	<dt>最近新闻</dt>
            
            <s:iterator value="newsList" id="news" status="st">
            <s:if test="#st.index<=2">
            	<dd><b class="bB"><s:property value="#st.index+1"/></b><p>
            	<a href="<s:url value="/viewNews.action"><s:param name="newsId" value="newsId"/></s:url>"><s:property value="newsName"/></a>
            	</p></dd>
            </s:if>
            <s:else>
            	<dd><b><s:property value="#st.index+1"/></b><p>
            	<a href="<s:url value="/viewNews.action"><s:param name="newsId" value="newsId"/></s:url>"><s:property value="newsName"/></a>
            </s:else>
            </s:iterator>
            <dd><b></b><p><a href="<s:url value="/listNews.action"/>">
            	&nbsp; &nbsp;&nbsp;&nbsp;更多新闻...</a></p></dd>
        </dl>    
   		    
        <div class="poster"><a href="http://english.visitbeijing.com.cn/play/entertainment/n214670056.shtml"><img src="./playMain_files/Img214675851.jpg" width="280" height="136"></a></div>
        <dl class="list pointA">
        	<dt>推荐景点</dt>
            <s:iterator value="sightList" id="sight" status="st">
            <s:if test="#st.index<=2">
            	<dd><b class="bA"><s:property value="#st.index+1"/></b><p>
            	<a href="<s:url value="/viewSight.action"><s:param name="sightId" value="sightId"/></s:url>"><s:property value="sightName"/></a>
            	</p></dd>
            </s:if>
            <s:else>
            	<dd><b><s:property value="#st.index+1"/></b><p>
            	<a href="<s:url value="/viewSight.action"><s:param name="sightId" value="sightId"/></s:url>"><s:property value="sightName"/></a>
            </s:else>
            </s:iterator>
            <dd><b>10</b><p><a href="http://english.visitbeijing.com.cn/sightseeing/n214674859.shtml">Miaofeng Mountain</a></p><span class="ub">102</span></dd>
        </dl>
        
        
    </div>
</div>
  </body>
</html>
