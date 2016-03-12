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
<html>
  <head>
    <title>HR Sample Application</title>
  </head>
  <body>
  Welcome to our sample.
  <table>
    <thead>
      <tr>
        <th>Nombre</th>
        <th>Apellido</th>
        <th>Email</th>
        <th>Acciones</th>
      </tr>
    </thead>
    <%
      ArrayList<Entidad_empleado> posts=(ArrayList<Entidad_empleado>) request.getAttribute("employees");
      for (Entidad_empleado post: posts) {
    %>
    <tr>
      <td><%=post.getEmployeeId()%></td>
      <td><%=post.getLastName()%></td>
      <td><%=post.getFirstName()%></td>
    </tr>
    <%}%>
  </table>

  </body>
</html>
