package actions;

import java.sql.*;

public class AdministratorLoginAction
{
    private String account;
    private String password;

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String execute() throws Exception
    {
        Connection conn;
        //jdbc驱动
        String driver="com.mysql.cj.jdbc.Driver";
        //这里我的数据库是cxxt
        String url="jdbc:mysql://localhost:3306/tongxunlu?&useSSL=false&serverTimezone=UTC";
        String user="root";
        String pwd="wjq123";
        String jieguo = "error";
        try {
            //注册JDBC驱动程序
            Class.forName(driver);
            //建立连接
            conn = DriverManager.getConnection(url, user, pwd);
            if (!conn.isClosed()) {
                String sql = "SELECT * FROM administrator";  //查询语句
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(sql);
                while (rs.next())
                {
                    System.out.println(rs.getString(1) + "<br>");
                    System.out.println(rs.getString(2) + "<br>");
                    if(account.equals(rs.getString("account")) && password.equals(rs.getString("password")))
                    {
                        jieguo = "success";
                        break;
                    }
                }
            }


            conn.close();
        } catch (ClassNotFoundException e) {
            System.out.println("数据库驱动没有安装");

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库连接失败");
        }


        System.out.println(jieguo);
        return jieguo;
    }
}
