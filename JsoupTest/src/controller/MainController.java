package controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class MainController
 */
@WebServlet("/Main")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());

		String view = "/WEB-INF/view/index.jsp";
	    RequestDispatcher dispatcher = request.getRequestDispatcher(view);

	    dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);

		Document doc = Jsoup.connect("https://www.yahoo.co.jp/").get();
		Element element = doc.getElementById("topicsboxbd");

		//System.out.println(element.html());
		request.setAttribute("element", element);

		//doc = Jsoup.connect("http://jin115.com/").get();
		//Elements elem2 = doc.select("section.index_article_container");
		//request.setAttribute("elem2", elem2);

		doc = Jsoup.connect("https://gunosy.com/categories/8").get();
		Elements gourmet = doc.select("div.list_content");
		//Element gourmet = doc.getElementById("dg-wrap");
		request.setAttribute("gourmet", gourmet);

		try{
			File file = new File("F:\\Memo\\gourmet.txt");
			PrintWriter pWriter = new PrintWriter(new BufferedWriter(new FileWriter(file)));
			pWriter.println(gourmet);
			//for(Element el : gourmet){
			//	pWriter.println(el);
			//}
			pWriter.close();

		}catch(IOException e){
			System.out.println(e);
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/display.jsp");
		dispatcher.forward(request, response);

	}

}


