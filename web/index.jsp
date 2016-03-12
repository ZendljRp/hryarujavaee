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
    <tbody>
    <% ArrayList<Entidad_empleado> list = (ArrayList<Entidad_empleado>) request.getAttribute("View_Empleado");

// print the information about every category of the list
      for(Entidad_empleado emp : list) {
        out.println(emp.getFirstName());
        out.println(emp.getEmployeeId());
        out.println(emp.getLastName());
      }
    %>
    </tbody>
  </table>

  </body>
</html>
