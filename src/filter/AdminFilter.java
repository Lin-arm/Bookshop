package filter;

import model.User;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @className: AdminFilter
 * @author: Lin
 * @描述: 处理非法访问后台 "/admin/*"
 * @date: 2022/11/24 0:29
 * @version: 1.0
 */
@WebFilter(filterName = "AdminFilter",urlPatterns = "/admin/*")
public class AdminFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        //基于HTTP
        HttpServletRequest request = (HttpServletRequest)req;
        HttpServletResponse requestp = (HttpServletResponse)resp;
        User u = (User) request.getSession().getAttribute("user");
        //用户为空 或 不是管理员
        if(u==null || u.isIsadmin()==false) {
            requestp.sendRedirect("../index");
        }else {
            //放行资源
            chain.doFilter(req, resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
