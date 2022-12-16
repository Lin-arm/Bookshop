package servlet;

import model.Type;
import org.apache.commons.beanutils.BeanUtils;
import service.TypeService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "admin_type_edit",urlPatterns = "/admin/type_edit")
public class AdminTypeEditServlet extends HttpServlet {
    private TypeService tService = new TypeService();
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Type t = new Type();
        try {
            BeanUtils.copyProperties(t, request.getParameterMap());
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        tService.update(t);
        request.getRequestDispatcher("/admin/type_list").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
