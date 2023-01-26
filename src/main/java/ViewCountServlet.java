import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ViewCountServlet", urlPatterns = "/count")
public class ViewCountServlet extends HttpServlet {

    private int count = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");

        String reset =req.getParameter("reset");
        if (reset != null && reset.equals("0")) {
            count = 0;
        } else {
            count++;
        }

        PrintWriter writer = resp.getWriter();
        writer.println("<h1>Count: "+ count + "</h1>");
    }
}
