package daos;



import beans.student;

import java.sql.*;
import java.util.ArrayList;

public class StudentDao
{
    public ArrayList queryAllStudents() throws Exception
    {
        //建立一个可变数组
        ArrayList<student> students = new ArrayList<student>();

        Connection conn;
        //jdbc驱动
        String driver="com.mysql.cj.jdbc.Driver";
        //这里我的数据库是cxxt
        String url="jdbc:mysql://localhost:3306/tongxunlu?&useSSL=false&serverTimezone=UTC";
        String user="root";
        String pwd="wjq123";
        try
        {
            //注册JDBC驱动程序
            Class.forName(driver);
            //建立连接
            conn = DriverManager.getConnection(url, user, pwd);
            if (!conn.isClosed())
            {
                String sql = "SELECT * FROM student;";  //查询语句
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(sql);
                while (rs.next())
                {
                    student stu = new student();
                    stu.setAccount(rs.getString("account"));
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
                    stu.setPassword(rs.getString("password"));

                    students.add(stu);
                }
                return students;
            }


            conn.close();
        }
        catch (ClassNotFoundException e)
        {
            System.out.println("数据库驱动没有安装");


        }
        catch (SQLException e)
        {
            e.printStackTrace();
            System.out.println("数据库连接失败");

        }
        return students;


    }

}
