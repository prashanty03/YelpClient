package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.StatusVO;
import vo.UserVO;
import connection.ServiceProxy;

/**
 * Servlet implementation class SignUp
 */
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 ServiceProxy proxy=new ServiceProxy();  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
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
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		StatusVO statusVO;		 
		 try{			
			 	String firstName = request.getParameter("firstName");
			 	String lastName = request.getParameter("lastName");
			 	String email = request.getParameter("email");
			 	String password = request.getParameter("password");
			 	proxy.setEndpoint("http://localhost:8080/Yelp/services/Service");
				statusVO = proxy.signUp(firstName, lastName, email, password);
				
				//HttpSession session = request.getSession();
				
				if(statusVO.getIsSuccessful()){
					request.setAttribute("message", statusVO.getMessgge());
			        request.getRequestDispatcher("login.jsp").forward(request, response);
					//out.println(statusVO.getMessgge());
					//out.println("WELCOME to Simple Market Place :"+ firstName);//Displaying the message on the servlet itself.
				}
				else{
					request.setAttribute("message", statusVO.getMessgge());
			        request.getRequestDispatcher("SignUp.jsp").forward(request, response);
					//out.println(statusVO.getMessgge());
					//out.println("\n <a href=\"SignUp.jsp\"><br>Go back to SignUp again</a>");
				}
		 }
		 catch (Exception e)
	        {
	            e.printStackTrace();
	        }
	}

}
