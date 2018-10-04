import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;
@WebServlet("/Authenticate")
public class Authenticate extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String id = request.getParameter("id");
            String pw = request.getParameter("pw");
            String connURL = "jdbc:mysql://localhost/onlineshop?user=root&password=root";
            Connection conn = DriverManager.getConnection(connURL);
            PreparedStatement ps = conn.prepareStatement("SELECT password from login WHERE userid = ?");
            ps.setObject(1,id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                String password = rs.getString("password");
                if(pw.equals(password)){
                    HttpSession session = request.getSession(true);
                    session.setAttribute("USER",id);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("table.jsp");
                    dispatcher.forward(request,response);
                }
                else{
                    response.sendRedirect("login.html");
                }
            }
            conn.close();
        }catch (Exception e){
            System.err.println(e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
