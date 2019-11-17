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

        if (path.startsWith("/download")) {
            res.sendRedirect("http://selenium.dev/downloads");
            return;
        }

        // Url path that gets printed for some errors/exceptions on the Java bindings
        if (path.startsWith("/exceptions")) {
            String newPath = path.replace("/exceptions/", "/exceptions/#").replace(".jsp", "");
            res.sendRedirect("http://selenium.dev" + newPath);
            return;
        }

        if (path.startsWith("/projects")) {
            res.sendRedirect("http://selenium.dev/projects");
            return;
        }

        if (path.startsWith("/about/news")) {
            res.sendRedirect("https://selenium.dev/blog/");
            return;
        }

        if (path.startsWith("/about/events")) {
            res.sendRedirect("https://selenium.dev/events/");
            return;
        }

        if (path.startsWith("/about/contributors")) {
            res.sendRedirect("https://selenium.dev/documentation/en/front_matter/copyright_and_attributions/");
            return;
        }

        if (path.startsWith("/about/history")) {
            res.sendRedirect("https://selenium.dev/history/");
            return;
        }

        if (path.startsWith("/about/getting-involved")) {
            res.sendRedirect("https://selenium.dev/getinvolved/");
            return;
        }

        if (path.startsWith("/about/license")) {
            res.sendRedirect("https://selenium.dev/documentation/en/front_matter/copyright_and_attributions/#license");
            return;
        }

        if (path.startsWith("/documentation") || path.startsWith("/docs")) {
            res.sendRedirect("http://selenium.dev/documentation");
            return;
        }

        // Everything else should be fine
        res.sendRedirect("http://selenium.dev" + path);
    }

    public void destroy() {
    }
}
