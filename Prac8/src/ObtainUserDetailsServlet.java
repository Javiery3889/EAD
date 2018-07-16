import dbaccess.UserDetails;
import dbaccess.UserDetailsDB;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ObtainUserDetailsServlet")
public class ObtainUserDetailsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDetails uBean = null;
        try {
            int userid = Integer.parseInt(request.getParameter("userid"));
            UserDetailsDB udatabase = new UserDetailsDB();
            uBean = udatabase.getUserDetails(userid);
            request.setAttribute("userdata", uBean);
            RequestDispatcher rd = request.getRequestDispatcher("displaydetails.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
            System.err.println(e);
        }

    }
}
