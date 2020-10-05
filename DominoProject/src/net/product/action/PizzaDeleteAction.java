package net.product.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.product.db.ProductDAO;

public class PizzaDeleteAction implements Action{

	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		// ���ڵ�
		request.setCharacterEncoding("UTF-8");
		// ActionForward, BoardDAO, BoardBean ��ü ����
		ActionForward forward = new ActionForward();
		ProductDAO productDAO = new ProductDAO();

		try {

			boolean result = false;

			// get������� �Ѿ�� ���� ��ȣ
			int code = Integer.parseInt(request.getParameter("pizza_code"));

			result = productDAO.DeletePizza(code);

			if(result==false) {
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('��ǰ ������ �����Ͽ����ϴ�. �ٽ� �õ��� �ֽñ� �ٶ��ϴ�.');");
				out.println("location.href='./PizzaListAction.pro';");
				out.println("</script>");
				out.close();
				return null;
			}

			// ���� ��� true : sendRedirect ���
			forward.setRedirect(true);
			// ���� ��� ����
			forward.setPath("./PizzaListAction.pro");

			return forward;

		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
}
