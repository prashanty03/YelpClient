package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connection.ServiceProxy;
import exception.YelpException;
import vo.CategoryVO;
import vo.StatusVO;
import vo.UserVO;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServiceProxy proxy=new ServiceProxy();  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		PrintWriter out = response.getWriter();
		UserVO userVO = null;
		response.setContentType("text/html");
		try{
			String email = request.getParameter("email");
		 	String password = request.getParameter("password");
		 	proxy.setEndpoint("http://localhost:8080/Yelp/services/Service");
		 	userVO = proxy.login(email, password);
			if(userVO == null){
				request.setAttribute("message", "Invalid username/password");
		        request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			else {
				HttpSession session = request.getSession();
				session.setAttribute("firstName", userVO.getFirstName());
				session.setAttribute("lastName", userVO.getLastName());
				session.setAttribute("email", userVO.getEmail());
				session.setAttribute("lastLogin", userVO.getLastLogin());
				session.setAttribute("isAdmin", userVO.getIsAdmin());
				CategoryVO[] categoryVOs = proxy.getCategoryList();
				request.setAttribute("categoryVOs", categoryVOs);
				request.getRequestDispatcher("Categories.jsp").forward(request, response);
			}
		 	
		} catch(YelpException yelpException){
			request.setAttribute("message", "Invalid username/password");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
