package daos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

public class alter_sum_time_dao {
    public void altert(String st1) throws SQLException {
        String account = st1;
        Date date = new Date();  //获取当前时间
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //格式化为：年月日 时分秒 以匹配数据库相应字段的类型
        String datetime = sdf.format(date);

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
                String sql = "update student set sum = sum+1,time = '"+datetime+"' where account = '"+account+"'";  //更新学生信息
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
