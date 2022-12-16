package servlet;

import model.Order;
import model.User;
import service.OrderService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "order_list", urlPatterns = "/order_list")
public class OrderListServlet extends HttpServlet {
    private OrderService oService = new OrderService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User u = (User) request.getSession().getAttribute("user");
        if(u==null)  //如果未登录
        {
            response.sendRedirect("/index");
            return;
        }
//        System.out.println("OrderListServlet------"+u.toString());
        List<Order> list = oService.selectAll(u.getId());

        request.setAttribute("orderList", list);
        request.getRequestDispatcher("/order_list.jsp").forward(request, response);
    }
}
