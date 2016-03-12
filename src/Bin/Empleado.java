package Bin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import Conexion.Conexion;
/**
 * Created by PT116-ORACLE on 11/03/2016.
 */
public class Empleado {
    Connection connection;
    public List<Entidad_empleado> getEmployees() {
        Conexion cn = new Conexion();
        String sql = "SELECT * FROM employees";
        List<Entidad_empleado> employees = new ArrayList<>();
        if (cn.connect()) {
            try {
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery(sql);
                while(resultSet.next()){
                    Entidad_empleado employee = new Entidad_empleado();
                    employee.setEmployeeId(resultSet.getInt("employee_id"));
                    employee.setFirstName(resultSet.getString("first_name"));
                    employee.setLastName(resultSet.getString("last_name"));
                    employees.add(employee);
                }
                resultSet.close();
                statement.close();
                return employees;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    };
}
