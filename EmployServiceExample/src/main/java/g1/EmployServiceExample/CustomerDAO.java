package g1.EmployServiceExample;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CustomerDAO {

	public int authenticate(String user,String pwd) throws SQLException {
		Connection con = ConnectionHelper.getConnection();
		String cmd = "select count(*) cnt from Customer WHERE "
				+ "CUS_NAME=? AND CUS_PASSWORD=?";
		PreparedStatement pst = con.prepareStatement(cmd);
		pst.setString(1, user);
		pst.setString(2, pwd);
		ResultSet rs = pst.executeQuery();
		rs.next();
		int count = rs.getInt("cnt");
		return count;
	}
	public Customer searchCustomer(int cusId) throws SQLException {
		Connection con = ConnectionHelper.getConnection();
		String cmd = "select * from Customer where cus_Id=?";
		PreparedStatement pst = con.prepareStatement(cmd);
		pst.setInt(1, cusId);
		ResultSet rs = pst.executeQuery();
		Customer customer = null;
		if (rs.next()) {
			customer = new Customer();
			customer.setCustId(rs.getInt("cus_Id"));
			customer.setCustName(rs.getString("cus_name"));
			customer.setCusPassword(rs.getString("cus_password"));
			customer.setCusEmail(rs.getString("cus_email"));
			customer.setCusMobile(rs.getString("cus_mobile"));
			customer.setCusAddress(rs.getString("cus_address"));
		}
		return customer;
	
}
	
	public Customer[] showCustomer() throws SQLException {
		Connection con = ConnectionHelper.getConnection();
		String cmd = "select count(*) cnt from Customer";
		PreparedStatement pst = con.prepareStatement(cmd);
		ResultSet rs = pst.executeQuery();
		rs.next();
		int count = rs.getInt("cnt");
		Customer[] arrCustomer = new Customer[count];
		cmd = "select * from Customer";
		pst = con.prepareStatement(cmd);
		rs = pst.executeQuery();
		Customer customer = null;
		int i=0;
		while(rs.next()) {
			customer = new Customer();
			customer.setCustId(rs.getInt("cus_Id"));
			customer.setCustName(rs.getString("cus_name"));
			customer.setCusPassword(rs.getString("cus_password"));
			customer.setCusEmail(rs.getString("cus_email"));
			customer.setCusMobile(rs.getString("cus_mobile"));
			customer.setCusAddress(rs.getString("cus_address"));
			arrCustomer[i]=customer;
			i++;
		}
		return arrCustomer;
	}
}