package servlet;

import model.Order;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "goods_lessen",urlPatterns = "/goods_lessen")
public class GoodsLessenServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Order o = (Order) request.getSession().getAttribute("order");
        int goodsid = Integer.parseInt(request.getParameter("goodsid"));
        o.lessen(goodsid);
        response.getWriter().print("ok");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
