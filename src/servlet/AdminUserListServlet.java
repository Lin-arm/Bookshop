package servlet;

import model.Page;
import service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "admin_user_list",urlPatterns = "/admin/user_list")
public class AdminUserListServlet extends HttpServlet {
    private UserService uService = new UserService();
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pageNumber = 1;
        if(request.getParameter("pageNumber") != null) {
            try {
                pageNumber=Integer.parseInt(request.getParameter("pageNumber") ) ;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if(pageNumber<=0)
            pageNumber=1;
        Page p = uService.getUserPage(pageNumber);
        if(p.getTotalPage()==0) {
            p.setTotalPage(1);
            p.setPageNumber(1);
        } else {
            if(pageNumber>=p.getTotalPage()+1) {
                p = uService.getUserPage(pageNumber);
            }
        }
        request.setAttribute("p", p);
        request.getRequestDispatcher("/admin/user_list.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
