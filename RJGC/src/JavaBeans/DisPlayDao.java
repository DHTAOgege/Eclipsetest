package JavaBeans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import JDBCUtil.MyConnection;

public class DisPlayDao {
	public DisPlayDao() {}
	public ArrayList<DoDisPlay> selectAll(){
		ArrayList<DoDisPlay> list = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oa","root","123");
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from timu");
			while(rs.next()) {
				list.add(new DoDisPlay(rs.getString(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getString(5)));
			}
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			MyConnection.Close();
		}
		
		
		return list;
		
	}
}
