package servlet;

import service.TypeService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "admin_type_delete",urlPatterns = "/admin/type_delete")
public class AdminTypeDeleteServlet extends HttpServlet {
    private TypeService tService = new TypeService();
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        boolean isSuccess = tService.delete(id);
        if(isSuccess) {
            request.setAttribute("msg", "删除成功");
        }else {
            request.setAttribute("failMsg", "类目下包含商品，无法直接删除类目！");
        }
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
