import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Servlet_Calculator")
public class Servlet_Calculator extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String product = request.getParameter("product");
        int price = Integer.parseInt(request.getParameter("price"));
        float discount = Float.parseFloat(request.getParameter("discount"));

        float discountAmount = price * discount / 100;
        float discountPrice = price - discountAmount;

        HttpSession session = request.getSession();
        session.setAttribute("product", product);
        session.setAttribute("price", price);
        session.setAttribute("discount", discount);
        session.setAttribute("discountAmount", discountAmount);
        session.setAttribute("discountPrice", discountPrice);

        request.getRequestDispatcher("show_discount.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
