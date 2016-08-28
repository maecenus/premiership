package premier;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class PicksServlet
 */
@WebServlet("/PicksServlet")
public class PicksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PicksServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		response.setContentType("text/plain");
		
		HttpSession session = request.getSession();
		//String username = (String) session.getAttribute("username");
		//System.out.println(username);
		Person person = (Person) session.getAttribute("person");
		//System.out.println(username);
		//System.out.println(person);
		
		String wk = request.getParameter("wk");
		
		String[] winners = {"win1", "win2", "win3", "win4", "win5", "win6", "win7", "win8", "win9", "win10"};
		Map <String, String> winMap = new HashMap<>();
		for(int i = 1; i <= 10; i++){
			 winMap.put(winners[i - 1], request.getParameter("g"+ i));
		}
		
		String win1 = request.getParameter("g1");
		String win2 = request.getParameter("g2");
		String win3 = request.getParameter("g3");
		String win4 = request.getParameter("g4");
		String win5 = request.getParameter("g5");
		String win6 = request.getParameter("g6");
		String win7 = request.getParameter("g7");
		String win8 = request.getParameter("g8");
		String win9 = request.getParameter("g9");
		String win10 = request.getParameter("g10");
		
		
		String[] cons = {"con1", "con2", "con3", "con4", "con5", "con6", "con7", "con8", "con9", "con10"};
		Map <String, Integer> conMap = new HashMap<>();
		for(int i = 1; i <= 10; i++){
			 conMap.put(cons[i - 1], Integer.parseInt(request.getParameter("c"+ i)));
		}
		
		int con1 = Integer.parseInt(request.getParameter("c1"));
		int con2 = Integer.parseInt(request.getParameter("c2"));
		int con3 = Integer.parseInt(request.getParameter("c3"));
		int con4 = Integer.parseInt(request.getParameter("c4"));
		int con5 = Integer.parseInt(request.getParameter("c5"));
		int con6 = Integer.parseInt(request.getParameter("c6"));
		int con7 = Integer.parseInt(request.getParameter("c7"));
		int con8 = Integer.parseInt(request.getParameter("c8"));
		int con9 = Integer.parseInt(request.getParameter("c9"));
		int con10 = Integer.parseInt(request.getParameter("c10"));
		
		/*
		System.out.println(win1 + " " + con1);
		System.out.println(win2 + " " + con2);
		System.out.println(win3 + " " + con3);
		System.out.println(win4 + " " + con4);
		System.out.println(win5 + " " + con5);
		System.out.println(win6 + " " + con6);
		System.out.println(win7 + " " + con7);
		System.out.println(win8 + " " + con8);
		System.out.println(win9 + " " + con9);
		System.out.println(win10 + " " + con10);
		*/
		
		Game one = new Game(person, "w3", "g1", win1, con1);
		GameDB.insertGame(one);
		((Person) one.getPerson()).addGame(one);
		Game two = new Game(person, "w3", "g2", win2, con2);
		GameDB.insertGame(two);
		two.getPerson().addGame(two);
		Game three = new Game(person, "w3", "g3", win3, con3);
		GameDB.insertGame(three);
		three.getPerson().addGame(three);
		Game four = new Game(person, "w3", "g4", win4, con4);
		GameDB.insertGame(four);
		four.getPerson().addGame(four);
		Game five = new Game(person, "w3", "g5", win5, con5);
		GameDB.insertGame(five);
		five.getPerson().addGame(five);
		Game six = new Game(person, "w3", "g6", win6, con6);
		GameDB.insertGame(six);
		six.getPerson().addGame(six);
		Game seven = new Game(person, "w3", "g7", win7, con7);
		GameDB.insertGame(seven);
		seven.getPerson().addGame(seven);
		Game eight = new Game(person, "w3", "g8", win8, con8);
		GameDB.insertGame(eight);
		eight.getPerson().addGame(eight);
		Game nine = new Game(person, "w3", "g9", win9, con9);
		GameDB.insertGame(nine);
		nine.getPerson().addGame(nine);
		Game ten = new Game(person, "w3", "g10", win10, con10);
		GameDB.insertGame(ten);
		ten.getPerson().addGame(ten);
	}

}