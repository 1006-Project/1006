package daos;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class stu_new_dao {
    public void insert (String st1,String st2,String st3){
        String account = st1;
        String password = st2;
        String name = st3;



        Connection conn = null;
        String driver="com.mysql.cj.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/tongxunlu?&useSSL=false&serverTimezone=UTC";
        String user="root";
        String pwd="wjq123";
        try {
            //注册JDBC驱动程序
            Class.forName(driver);
            //建立连接
            conn = DriverManager.getConnection(url, user, pwd);
            if (!conn.isClosed()) {
                String sql = "insert into unchecked values ('"+account+"','"+password+"','"+name+"')";  //查询语句
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
