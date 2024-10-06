package DB_Connectivity;

import java.sql.*;

public class DB_ConnectionClass {
    public static void main(String[] args) throws SQLException {
        //String query="show tables";
        String insertQuery = "insert into employeeDtl (empcode, empname, empage, esalary)\n" +
                "values\n" +
                "(101,\"Jenny\",25,10000),\n" +
                "(102,\"Jacky\",30,20000),\n" +
                "(103,\"Joe\",20,40000),\n" +
                "(104,\"John\",40,80000),\n" +
                "(105,\"Shameer\",25,90000);";
        Connection connection =  DriverManager
                .getConnection("jdbc:mysql://localhost/employees?user=root&password=0812@Aju..mysql");
        PreparedStatement preparedStatement =  connection.prepareCall(insertQuery);
        preparedStatement.execute();
        //boolean resultSet =  preparedStatement.execute();
        //System.out.println(resultSet);
       connection.close();
    }
}
