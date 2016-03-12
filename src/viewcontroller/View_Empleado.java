package viewcontroller;

import Bin.Empleado;
import Bin.Entidad_empleado;
import Conexion.Conexion;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Created by PT116-ORACLE on 11/03/2016.
 */
@WebServlet(name = "View_Empleado")
public class View_Empleado extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
        Conexion da = new Conexion();
        if (da.connect()) {
            Empleado ep = new Empleado();
            List<Entidad_empleado> employees = ep.getEmployees();
            try {
                PrintWriter out = response.getWriter();
                out.println("<HTML>");
                out.println("<BODY");
                out.println("<TABLE>");
                // header columns
                for(Entidad_empleado employee : employees) {
                    out.println(employee.getFirstName());
                    out.println(employee.getEmployeeId());
                    // separator
                    out.println(employee.getLastName());
                }
            } catch (IOException e) {
                e.printStackTrace();
            }

        }

    }
}
