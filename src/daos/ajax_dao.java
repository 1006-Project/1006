package daos;
import beans.student;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ajax_dao {
    Connection conn = null;

    public void initConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");  ////驱动程序名
        String url = "jdbc:mysql://localhost:3306/tongxunlu?&useSSL=false&serverTimezone=UTC"; //数据库名
        String username = "root";  //数据库用户名
        String pwd = "wjq123";  //数据库用户密码
        conn = DriverManager.getConnection(url, username, pwd);  //连接状态
    }
    public void closeConnection() throws Exception {
        conn.close();
    }

    public student getStudentByAccount(String account) throws Exception {
        String sql = "select * from student where account=?";
        this.initConnection();
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, account);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            student cus = new student();
            cus.setAccount(rs.getString("account"));

            System.out.println("account = " + account);

            cus.setPassword(rs.getString("password"));
            cus.setName(rs.getString("name"));
            return cus;
        }
        closeConnection();
        return null;
    }
}
