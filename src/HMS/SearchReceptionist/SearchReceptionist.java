package HMS.SearchReceptionist;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import HMS.Connection.MyConnection;

/**
 * Servlet implementation class SearchReceptionist
 */
@WebServlet("/SearchReceptionist")
public class SearchReceptionist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchReceptionist() {
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
		String rid=request.getParameter("search-receptionist-id");
		 
		if(rid!=null)
		{
			Connection con=MyConnection.getMyConnetion();
			try
			{
				Statement stmt=con.createStatement();
				String query="select * from addreceptionist where rid='"+rid+"';";
				ResultSet rs=stmt.executeQuery(query);
				
				if(rs!=null)
				{
					request.setAttribute("receptionistdata", rs);
					RequestDispatcher rd=request.getRequestDispatcher("Search-Receptionist-Detail.jsp");
					rd.forward(request, response);
					con.close();
				}
				else
				{
					RequestDispatcher rd=request.getRequestDispatcher("nodata.jsp");
					rd.forward(request, response);
				}
			   
			}
			catch(Exception e)
			{
				response.getWriter().print(e);
			
			}
		}
	}

}
