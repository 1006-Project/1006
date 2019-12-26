package actions;

import com.opensymphony.xwork2.ActionContext;
import daos.alter_sum_time_dao;
import daos.stu_dao;
import beans.student;
import java.util.ArrayList;
import java.util.Map;

public class stu_action {
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
    public String execute() throws Exception{      //登录验证
        boolean temp = false;
        String results = "";
        stu_dao dao = new stu_dao();
        ArrayList<student> array = dao.Login(account);
        for(int i = 0; i < array.size(); i++)
        {
            student test = array.get(i);
            //System.out.println(i);
            //.out.println(array.get(i));

            //System.out.println("test.getAccount() = " + test.getAccount());
            //System.out.println("account = " + account);
            //.out.println("test.getPassword() = " + test.getPassword());
            //System.out.println("password = " + password);

            if(test.getAccount().equals(account) && test.getPassword().equals(password)) {
                temp = true;
                results = "success";

                //更新登陆次数和最后登录时间
               alter_sum_time_dao daot = new alter_sum_time_dao();
                daot.altert(account);

                //将提交表单中的account存入session
                Map<String, Object> session = ActionContext.getContext().getSession();
                session.put("account", account);
                session.put("name", test.getName());

            }
            else
                results = "fail";

            if(temp == true)
                break;
        }
        //System.out.println("result = " + results);
        return results;

    }
}
