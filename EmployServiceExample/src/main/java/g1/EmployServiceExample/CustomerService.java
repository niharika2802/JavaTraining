package g1.EmployServiceExample;

import java.sql.SQLException;

import javax.ws.rs.GET;
import javax.ws.rs.NotFoundException;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/customer")
public class CustomerService {
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Customer[] showCustomer() throws SQLException {
		CustomerDAO dao = new CustomerDAO();
		Customer[] result = dao.showCustomer();
		return result;
	}

	@GET
	@Path("{user}/{pwd}")
	@Produces(MediaType.APPLICATION_JSON)
	public String authenticate(@PathParam("user") String user,
			@PathParam("pwd")	String pwd) throws SQLException {
		String result="";
		CustomerDAO dao = new CustomerDAO();
		int res = dao.authenticate(user, pwd);
		result+=res;
		return result;
	}
	@GET
	@Path("{cus_Id}")
	@Produces(MediaType.APPLICATION_JSON)
	public  Customer  customerListById(@PathParam("cus_Id") int cusId) throws SQLException {
		 Customer empl = new  CustomerDAO().searchCustomer(cusId);
	  if (empl == null) {
		throw new NotFoundException("No such Employee ID: " + cusId);
	  }
	  return empl;
	}
	
	
}