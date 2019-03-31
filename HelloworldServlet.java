import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/HelloworldServlet")
public class HelloworldServlet extends HttpServlet{
	//@override
	public void doGet(HttpServletRequest req,HttpServletResponse res)
	throws IOException,ServletException
	{
		res.getWriter().println("Hello Servlet");

	}

}