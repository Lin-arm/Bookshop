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

@WebServlet(name = "admin_user_edit",urlPatterns = "/admin/user_edit")
public class AdminUserEditServlet extends HttpServlet {
    private UserService uService = new UserService();
    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User u = new User();
        try {
            BeanUtils.copyProperties(u, request.getParameterMap());
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        uService.updateUserAddress(u);
        request.getRequestDispatcher("/admin/user_list").forward(request, response);
    }
}
