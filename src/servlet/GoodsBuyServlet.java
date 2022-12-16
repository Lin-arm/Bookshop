package servlet;

import model.Goods;
import model.Order;
import service.GoodsService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "goods_buy",urlPatterns = "/goods_buy")
public class GoodsBuyServlet extends HttpServlet {
    private GoodsService gService = new GoodsService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Order o = null;
        if(request.getSession().getAttribute("order") != null) {
            o = (Order) request.getSession().getAttribute("order");
        }else {
            o = new Order();
            request.getSession().setAttribute("order", o);
        }
        int goodsid = Integer.parseInt(request.getParameter("goodsid"));
        Goods goods = gService.getGoodsById(goodsid);
        if(goods.getStock()>0) {
            o.addGoods(goods);
            response.getWriter().print("ok");
        }else {
            response.getWriter().print("fail");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
