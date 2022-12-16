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

@WebServlet(name = "user_changeaddress",urlPatterns = "/user_changeaddress")
public class UserChangeAddressServlet extends HttpServlet {

    private UserService uService = new UserService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User loginUser = (User) request.getSession().getAttribute("user");

        try {
            BeanUtils.copyProperties(loginUser, request.getParameterMap());
        } catch (IllegalAccessException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        uService.updateUserAddress(loginUser);
        request.setAttribute("msg", "收件信息更新成功！");
        request.getRequestDispatcher("/user_center.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
