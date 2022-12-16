package servlet;

import model.User;
import org.apache.commons.beanutils.BeanUtils;
import service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

/**
 * @className: UserRegisterServlet
 * @author: Lin
 * @描述: 用户注册操作
 * @date: 2022/11/26 19:02
 * @version: 1.0.2
 */
@WebServlet(name = "user_register",urlPatterns = "/user_rigister")
public class UserRegisterServlet extends HttpServlet {
    private UserService uService = new UserService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();
        try {
            //将所有信息封装到 user对象中
            BeanUtils.copyProperties(user, request.getParameterMap());
        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }

        //调用service层(业务逻辑层)的方法完成注册操作
        if(uService.register(user)) {
            request.setAttribute("msg", "注册成功，请登录！");
            request.getRequestDispatcher("user_login.jsp").forward(request, response);
        }else {
            request.setAttribute("msg", "用户名或邮箱重复，请重新填写！");
            request.getRequestDispatcher("user_register.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
