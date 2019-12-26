package daos;

import beans.student;

import java.sql.*;
import java.util.ArrayList;

public class stu_dao {
    public ArrayList<student> Login(String str) throws Exception {
        String account = str;
        ArrayList<student> array = new ArrayList<student>();
        Connection conn;
        //jdbc驱动
        String driver="com.mysql.cj.jdbc.Driver";
        //这里我的数据库是cxxt
        String url="jdbc:mysql://localhost:3306/tongxunlu?&useSSL=false&serverTimezone=UTC";
        String user="root";
        String pwd="wjq123";
        try {
            //注册JDBC驱动程序
            Class.forName(driver);
            //建立连接
            conn = DriverManager.getConnection(url, user, pwd);
            if (!conn.isClosed()) {
                String sql = "select * from student where account = '"+account+"'";  //查询语句
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(sql);


            while(rs.next()) {
                student stu = new student();  //实例化VO
                stu.setAccount(rs.getString("account"));
                stu.setPassword(rs.getString("password"));
                stu.setName(rs.getString("name"));
                stu.setMajor(rs.getString("major"));
                stu.setClasses(rs.getString("classes"));
                stu.setIn_year(rs.getString("in_year"));
                stu.setOut_year(rs.getString("out_year"));
                stu.setUnit(rs.getString("unit"));
                stu.setCity(rs.getString("city"));
                stu.setPhone(rs.getString("phone"));
                stu.setEmail(rs.getString("email"));
                stu.setTime(rs.getString("time"));
                stu.setSum(rs.getString("sum"));

                array.add(stu);

                //System.out.println(rs.getString("account")+" "+ rs.getString("password"));
                //System.out.println(array);
            }
            }
            conn.close();
        } catch (ClassNotFoundException e) {
            System.out.println("数据库驱动没有安装");

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库连接失败");
        }

        return array;

    }
}
