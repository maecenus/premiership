package premier;

import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		ServletContext sc = getServletContext();
		HttpSession session = request.getSession();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		String url = "/index.jsp";
		
		Person person = PersonDB.checkLogin(username);
		session.setAttribute("person", person);
		
		if(person == null){
			request.setAttribute("message", "The username address \"" + username + "\" does not belong to a registered participant!!");
			sc.getRequestDispatcher(url).forward(request, response);
		}
		
		if(username.equals(person.getUsername()) && password.equals(person.getPassword())){
			url = "/rules.jsp";
			sc.getRequestDispatcher(url).forward(request, response);
		}
		
		if(password != person.getPassword()){
			request.setAttribute("message", "The password is not correct! Please re-enter your username and the correct password.");
			sc.getRequestDispatcher(url).forward(request, response);
		}
		
	}

}
