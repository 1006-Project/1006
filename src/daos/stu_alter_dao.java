package daos;
import beans.student;

import java.sql.*;

public class stu_alter_dao {
    public void alters(String st1,String st2,String st3,String st4,
                       String st5,String st6,String st7,String st8,
                       String st9,String st10) throws SQLException {


        System.out.println("断点");
        String account = st1;
        String name = st2;
        String major = st3;
        String classes = st4;
        String in_year = st5;
        String out_year = st6;
        String unit = st7;
        String city = st8;
        String phone = st9;
        String email = st10;

        Connection conn = null;
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
                String sql = "update student set name = '"+name+"',major = '"+major+"',classes = '"+classes+"'" +
                        ",in_year = '"+in_year+"',out_year = '"+out_year+"',unit = '"+unit+"'," +
                        "city = '"+city+"',phone = '"+phone+"',email = '"+email+"' where account = '"+account+"'";  //更新学生信息
                Statement stmt = conn.createStatement();
                int i = stmt.executeUpdate(sql);
           if(i == 1){
               System.out.println("成功修改信息!");
           }

                }
            conn.close();
            }
        catch (ClassNotFoundException e) {
            System.out.println("数据库驱动没有安装");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库连接失败");
        }
        }
    }

