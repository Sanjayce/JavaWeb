<!-- page指令 -->
<%@ page language="java" import="java.util.*"contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
</head>
<!-- JSP内置对象 -->
<body>
    <h2>JSP内置对象知识</h2><hr>
	<%!
	   String user;
	   String pass;
	%>
	<!-- out对象 -->
	<%
		out.println("我是out对象！" + "<br>");
	%>
	<br>
	<!-- request对象-->
	<%
	    out.println("我是request对象！" + "<br>");
		user = request.getParameter("username");
		pass = request.getParameter("password");
	%>
	<br>
	<!-- response对象 -->
	<%
		out.println("我是response对象！" + "<br>");
		out.println("当前时间:" + new Date().toString());
	%>
	<br>
	<!-- session对象 -->
	<%
		out.println("我是session对象！" + "<br>");
		if (user != null && pass != null) {
			session.setAttribute("username", user);
			session.setAttribute("possword", pass);
		}
	%>
	<br>
	<!-- application对象 -->
	<%
		out.println("我是application对象！" + "<br>");
	%>
	服务器信息<%=application.getServerInfo()%>
	<br> 
	上下文路径<%=application.getContextPath()%>
	<br>
	<!-- page对象 -->
	<%
		out.println("我是page对象！" + "<br>");
		out.println("page对象的类名" + page.getClass() + "<br>");
		out.println("page对象的完全路径" + page.toString());
	%>
	<br>
	<!-- page context 对象 -->
	<%
		pageContext.getOut().println("我是pagecontext 对象！");
	%>
</body>
</html>
