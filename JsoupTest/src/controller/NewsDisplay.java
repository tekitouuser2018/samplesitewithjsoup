package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/**
 * Servlet implementation class NewsDisplay
 */
@WebServlet("/News")
public class NewsDisplay extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewsDisplay() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Document doc = Jsoup.connect("https://www.yahoo.co.jp/").get();
		Element element = doc.getElementById("topicsboxbd");

		//System.out.println(element.html());
		request.setAttribute("element", element);



		doc = Jsoup.connect("https://gunosy.com/categories/8").get();
		Elements gourmet = doc.select("div.list_content");
		//Element gourmet = doc.getElementById("dg-wrap");
		request.setAttribute("gourmet", gourmet);



		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/display.jsp");
		dispatcher.forward(request, response);
	}

}
