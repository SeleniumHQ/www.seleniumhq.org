package org.seleniumhq.website;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;
import java.util.HashMap;
import java.io.IOException;

public class UrlAliasFilter implements Filter {
    private static final Map<String, String> aliasMap = new HashMap<String, String>();

    static {
        aliasMap.put("/index.html", "/");
        aliasMap.put("/about/news.html", "/about/news.jsp");
    }

    public void init(FilterConfig filterConfig) throws ServletException {
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        String path = req.getRequestURI();

        if (path.startsWith("/documentation")) {
            res.sendRedirect("/docs/");
            return;
        }

        String newUrl = aliasMap.get(path);

        if (newUrl == null) {
            chain.doFilter(request, response);
        } else {
            res.sendRedirect(newUrl);
        }
    }

    public void destroy() {
    }
}
