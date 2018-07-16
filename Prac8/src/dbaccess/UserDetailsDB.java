package dbaccess;

import java.sql.*;

public class UserDetailsDB {
    public UserDetails getUserDetails(int id) {
        UserDetails uBean = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/onlineshop?user=root&password=root");
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM user_details where userid=?");
            ps.setObject(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                uBean = new UserDetails();
                uBean.setUserid(rs.getInt("userid"));
                uBean.setAge(rs.getInt("age"));
                uBean.setGender(rs.getString("gender"));
            }
            conn.close();
        } catch (Exception e) {
            System.err.println(e);

        }
        return uBean;
    }
}
