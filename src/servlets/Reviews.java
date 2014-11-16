package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.ReviewVO;
import vo.StatusVO;
import connection.ServiceProxy;

/**
 * Servlet implementation class Reviews
 */
@WebServlet("/Reviews")
public class Reviews extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServiceProxy proxy=new ServiceProxy();    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reviews() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		ReviewVO[] reviews = null;
		String msg = "";
		HttpSession session = request.getSession(true);
		StatusVO statusVO = null;
		try{
			String elemName = request.getParameter("elemName");
			String catName = request.getParameter("catName");
			String action = request.getParameter("action");
			proxy.setEndpoint("http://localhost:8080/Yelp/services/Service");
			if("list".equalsIgnoreCase(action)){
				reviews = proxy.getReviews(elemName);
		 		request.setAttribute("reviews", reviews);
		 		request.setAttribute("elemName", elemName);
		 		request.setAttribute("catName", catName);
				request.getRequestDispatcher("Reviews.jsp").forward(request, response);
			}
			else if("write".equalsIgnoreCase(action)){
				request.setAttribute("elemName", elemName);
		 		request.setAttribute("catName", catName);
				request.getRequestDispatcher("AddReview.jsp").forward(request, response);
			}
			else{
				System.out.println("asasdasdasadsds");
				int rating = Integer.parseInt(request.getParameter("rating"));
				String comment = request.getParameter("comment");
				String email = null;
				if(session.getAttribute("email")!=null)
					email = session.getAttribute("email").toString();
				statusVO = proxy.addReview(elemName, email, rating, comment);
				
		 		request.setAttribute("message", statusVO.getMessgge());
				request.getRequestDispatcher("AddReview.jsp").forward(request, response);
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
		//PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		//ReviewVO[] reviews = null;
		//String msg = "";
		HttpSession session = request.getSession(true);
		StatusVO statusVO = new StatusVO();
		try{
			String elemName = request.getParameter("elemName");
			String catName = request.getParameter("catName");
			String action = request.getParameter("action");
			String email = null;
			int rating = 0;
			String comment  =null;
			Boolean flag = false;
			proxy.setEndpoint("http://localhost:8080/Yelp/services/Service");
			if("post".equalsIgnoreCase(action)){
				if(request.getParameter("rating")==null){
					//rating = Integer.parseInt(request.getParameter("rating"));
					flag = true;
				}
				else
					rating = Integer.parseInt(request.getParameter("rating"));
				//rating = Integer.parseInt(request.getParameter("rating"));
				if(request.getParameter("comment")==null || request.getParameter("comment")==""){
					flag = true;
				}
				else
					comment = request.getParameter("comment");
				
				if(session.getAttribute("email")==null){
					flag = true;
				}
				else
					email = session.getAttribute("email").toString();
				if(!flag){
					statusVO = proxy.addReview(elemName, email, rating, comment);
				}
				else{
					statusVO.setMessgge("Please fill all the details in the form");
				}
					
				
				request.setAttribute("elemName", elemName);
				request.setAttribute("catName", catName);
		 		request.setAttribute("message", statusVO.getMessgge());
				request.getRequestDispatcher("AddReview.jsp").forward(request, response);
			}
			
			
		}
		catch(Exception exception){
			exception.printStackTrace();
		}
	
	}

}
