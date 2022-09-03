
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet to get registration data from handlerservle to store data to data base and to retrieve data from data base
 */
@WebServlet("/DatabaseServlet")
public class DatabaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();

		UserInfo userinfo = (UserInfo) session.getAttribute("user");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/usersinfo", "root",
					"admin");
			PreparedStatement pst = connection.prepareStatement(
					"insert into users(firstname,lastname,username,sex,password,country,city,phonenumber,nationality,course) values(?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, userinfo.getFirstname());
			pst.setString(2, userinfo.getLastname());
			pst.setString(3, userinfo.getUsername());
			pst.setString(4, userinfo.getSex());
			pst.setString(5, userinfo.getPassword());
			pst.setString(6, userinfo.getCountry());
			pst.setString(7, userinfo.getCity());
			pst.setInt(8, userinfo.getPhonenumber());
			pst.setString(9, userinfo.getNationality());
			pst.setString(10, userinfo.getCourse());
			int rowcount = pst.executeUpdate();
			if (rowcount > 0) {
				response.sendRedirect("Login.jsp");
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	public List<UserInfo> doGet() throws SQLException, ClassNotFoundException {
		List<UserInfo>users = new ArrayList<UserInfo>();
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/usersinfo", "root", "admin");
		PreparedStatement pst = connection.prepareStatement("SELECT * FROM usersinfo.users");
		ResultSet resultset = pst.executeQuery();
		UserInfo user = null;
	
		while(resultset.next()) {
			user = new UserInfo();
			user.setFirstname(resultset.getString(2));
			user.setLastname(resultset.getString(3));
			user.setUsername(resultset.getString(4));
			user.setPassword(resultset.getString(5));
			user.setSex(resultset.getString(6));
			user.setCountry(resultset.getString(7));
			user.setCity(resultset.getString(7));
			user.setPhonenumber(resultset.getInt(8));
			user.setNationality(resultset.getString(9));
			user.setCourse(resultset.getString(resultset.getString(10)));
			users.add(user);
		}
		return null;
	}
}
