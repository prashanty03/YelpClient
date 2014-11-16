package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.ServiceProxy;
import vo.CategoryVO;
import vo.ElementVO;

/**
 * Servlet implementation class Elements
 */
@WebServlet("/Elements")
public class Elements extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServiceProxy proxy=new ServiceProxy();    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Elements() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		ElementVO[] elementVOs = null;
		String msg = "";
		try{
			String categoryName = request.getParameter("categoryName");
			String action = request.getParameter("action");
			proxy.setEndpoint("http://localhost:8080/Yelp/services/Service");
		 	if("add".equalsIgnoreCase(action)){
		 		request.setAttribute("catName", categoryName);
		 		request.getRequestDispatcher("AddElement.jsp").forward(request, response);
		 	}
		 	else{
		 		//delete code
		 	}
		}
		catch(Exception exception){
			exception.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String msg = "";
		try{
			String categoryName = request.getParameter("categoryName");
			String name = request.getParameter("name");
			String description = request.getParameter("description");
			String address = request.getParameter("address");
			String action = request.getParameter("action");
			proxy.setEndpoint("http://localhost:8080/Yelp/services/Service");
		 	if("save".equalsIgnoreCase(action)){
		 		msg = proxy.addElement(name, description, address, categoryName);
		 		request.setAttribute("catName", categoryName);
		 		request.setAttribute("msg",msg);
		 		request.getRequestDispatcher("AddElement.jsp").forward(request, response);
		 	}
		 	else{
		 		//delete code
		 	}
		}
		catch(Exception exception){
			exception.printStackTrace();
		}
	}

}
