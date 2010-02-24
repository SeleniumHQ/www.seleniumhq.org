package org.seleniumhq.website;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import java.io.*;

public class DocsServlet extends HttpServlet {


    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String path = "/docs" + req.getPathInfo();

        if ("/docs/".equals(path)) {
            path += "index.html";
        }

        String filePath = getServletContext().getRealPath(path);
        File file = null;

        if (filePath != null) {
            file = new File(filePath);
        }

        if (file == null || !file.exists()) {
            resp.sendError(404);
            return;
        }

        FileInputStream fis = new FileInputStream(file);

        byte[] buffer = new byte[4096];
        int len = -1;

        if (path.endsWith(".html")) {
            resp.setCharacterEncoding("UTF-8");
            resp.setContentType("text/html");

            PrintWriter writer = resp.getWriter();
            while ((len = fis.read(buffer)) != -1) {
                writer.write(new String(buffer, 0, len, "UTF-8"));
            }

            writer.close();
        } else {
            ServletOutputStream os = resp.getOutputStream();
            while ((len = fis.read(buffer)) != -1) {
                os.write(buffer, 0, len);
            }
            os.close();
        }
    }
}
