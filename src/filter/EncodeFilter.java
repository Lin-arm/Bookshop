package filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import model.User;

import java.io.IOException;

/**
 * @className: EncodeFilter
 * @author: Lin
 * @描述: 过滤器: 统一全站编码，以防止出现乱码
 * @date: 2022/11/23 17:23
 * @version: 1.0
 */
@WebFilter(filterName = "EncodeFilter",urlPatterns = "/*")
public class EncodeFilter implements Filter {
    public void destroy() {
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("EncodeFilter处理乱码的过滤器正在初始化--------");
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        chain.doFilter(req, resp);           //放行
    }

}
