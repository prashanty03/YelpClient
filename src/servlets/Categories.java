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
import vo.UserVO;

/**
 * Servlet implementation class Categories
 */
@WebServlet("/Categories")
public class Categories extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServiceProxy proxy=new ServiceProxy(); 
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Categories() {
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
		ElementVO[] elementVOs = null;
		String msg = "";
		try{
			String categoryName = request.getParameter("categoryName");
			String action = request.getParameter("action");
			proxy.setEndpoint("http://localhost:8080/Yelp/services/Service");
		 	if(action==null){
		 		elementVOs = proxy.getElementList(categoryName);
		 		request.setAttribute("elementVOs", elementVOs);
		 		request.setAttribute("catName", categoryName);
		 		request.getRequestDispatcher("Elements.jsp").forward(request, response);
		 	}
		 	else if("home".equalsIgnoreCase(action)){
		 		CategoryVO[] categoryVOs = proxy.getCategoryList();
				request.setAttribute("categoryVOs", categoryVOs);
				request.getRequestDispatcher("Categories.jsp").forward(request, response);
		 	}
		 	else if("add".equalsIgnoreCase(action)){
		 		request.getRequestDispatcher("AddCategory.jsp").forward(request, response);
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

		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		ElementVO[] elementVOs = null;
		String msg = "";
		try{
			String name = request.getParameter("name");
	 		String description = request.getParameter("description");
	 		String action = request.getParameter("action");
			proxy.setEndpoint("http://localhost:8080/Yelp/services/Service");
		 	if("save".equalsIgnoreCase(action)){
		 		msg = proxy.addCategory(name, description);
		 		request.setAttribute("msg", msg);
		 		request.getRequestDispatcher("AddCategory.jsp").forward(request, response);
		 	}
		 	else if("edit".equalsIgnoreCase(action)){
		 		//edit code
		 		request.getRequestDispatcher("EditCategory.jsp").forward(request, response);
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
