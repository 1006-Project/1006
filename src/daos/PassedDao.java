package daos;
import java.sql.*;
import java.util.ArrayList;
import beans.test_stu;

public class PassedDao
{
    public ArrayList queryAllPasseds() throws Exception
    {
        //建立一个可变数组
        ArrayList<test_stu> passeds = new ArrayList<test_stu>();

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
                String sql = "SELECT * FROM passed";  //查询语句
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(sql);

                while (rs.next())
                {
                    test_stu passed = new test_stu();
                    passed.setAccount(rs.getString("account"));
                    passed.setPassword(rs.getString("password"));
                    passed.setName(rs.getString("name"));

                    passeds.add(passed);
                }


            }


            conn.close();
        } catch (ClassNotFoundException e) {
            System.out.println("数据库驱动没有安装");

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库连接失败");
        }



        return passeds;
    }


}
