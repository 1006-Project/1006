import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.IOException;
import java.io.PrintWriter;

import daos.ajax_dao;
import beans.student;
import org.jetbrains.annotations.NotNull;

public class CheckServlet extends HttpServlet {
    public void doPost(@NotNull HttpServletRequest request, @NotNull HttpServletResponse response)
            throws ServletException, IOException {
        response.setHeader("Cache-Control", "no-cache");
        response.setContentType("text/html;charset=utf-8");

        String account = request.getParameter("account");
        ajax_dao cdao = new ajax_dao();
        student cus = null;
        try {
            cus = cdao.getStudentByAccount(account);
        } catch (Exception e) {
            e.printStackTrace();
        }
        PrintWriter out = response.getWriter();
        if(cus==null){
            JOptionPane.showMessageDialog(new JFrame(),"OK! Do it!");
             System.out.println("OK! Do it!");
        }
        else{
            JOptionPane.showMessageDialog(new JFrame(),"Sorry! You can't do it!");
            System.out.println("Sorry! You can't do it!");
        }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doPost(request, response);
    }
}
