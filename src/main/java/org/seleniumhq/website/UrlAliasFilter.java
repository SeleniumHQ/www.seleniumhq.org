package org.seleniumhq.website;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlAliasFilter implements Filter {
    
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

        if (path.endsWith(".html")) {
        	res.sendRedirect(path.replaceFirst(".html", ".jsp"));
        } else {
            chain.doFilter(request, response);
        }
    }

    public void destroy() {
    }
}
