package HMS.adddoctor;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import HMS.Connection.MyConnection;

/**
 * Servlet implementation class AddDoctor
 */
@WebServlet("/AddDoctor")
public class AddDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDoctor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String firstname=request.getParameter("d-first-name");
		String lastname=request.getParameter("d-last-name");
		String gender=request.getParameter("gender");
		String bloodgroup=request.getParameter("blood-grp");
		String dob=request.getParameter("d-dob");
		String dateofjoining=request.getParameter("d-date-of-joining");
		String specialization=request.getParameter("d-specialization");
		String maritalstatus=request.getParameter("marital-status");
		String mobile=request.getParameter("d-mobile");
		String address=request.getParameter("d-address");
		String email=request.getParameter("d-email");
		String qualification=request.getParameter("d-qualification");
		Connection con=MyConnection.getMyConnetion();
		try
		{
			 Statement stmt =con.createStatement();
			 String query="insert into adddoctor(firstname,lastname,gender,bloodgroup,dob,dateofjoining,specialization,maritalstatus,mobile,address,email,username,password,qualification) values('"+firstname+"','"+lastname+"','"+gender+"','"+bloodgroup+"','"+dob+"','"+dateofjoining+"','"+specialization+"','"+maritalstatus+"','"+mobile+"','"+address+"','"+email+"','"+email+"','"+dob+"','"+qualification+"');";
		     stmt.executeUpdate(query); 
		     
		     RequestDispatcher rd= request.getRequestDispatcher("Add-Doctor.html");
			 rd.forward(request, response);
			 con.close();
		}
		catch(Exception e)
		{
		  response.getWriter().print(e);	
		}
	}

}
