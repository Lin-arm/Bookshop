package servlet;

import model.User;
import service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "user_changepwd",urlPatterns = "/user_changepwd")
public class UserChangePwd extends HttpServlet {

    private UserService uService = new UserService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password = request.getParameter("password");
        String newPwd = request.getParameter("newPassword");

        User u = (User) request.getSession().getAttribute("user");
        if(password.equals(u.getPassword())) {
            u.setPassword(newPwd);
            uService.updatePwd(u);
            request.setAttribute("msg", "修改成功！");
            request.getRequestDispatcher("/user_center.jsp").forward(request, response);
        }else {
            request.setAttribute("failMsg", "修改失败，原密码不正确，你再想想！");
            request.getRequestDispatcher("/user_center.jsp").forward(request, response);
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        this.doPost(request, response);
    }
}
