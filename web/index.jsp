<%@ page import="Bin.Entidad_empleado" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Bin.Empleado" %><%--
  Created by IntelliJ IDEA.
  User: PT116-ORACLE
  Date: 11/03/2016
  Time: 08:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Bin.Empleado" %>
<html>
  <head>
    <title>HR Sample Application</title>
  </head>
  <body>
  <jsp:useBean id="ObjectLista" class="Bin.Empleado"/>
  <p><jsp:getProperty name="ObjectLista" property="employees"/></p>
  </body>
</html>
