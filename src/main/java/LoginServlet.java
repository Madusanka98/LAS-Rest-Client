import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Perform authentication (validate username and password)
        // For simplicity, let's assume the authentication is successful

        // Create a session and store data
        HttpSession session = request.getSession(true);
        session.setAttribute("username", username);

        // Redirect to a welcome page or perform other actions
        response.sendRedirect("testindex.jsp");
    }
}
