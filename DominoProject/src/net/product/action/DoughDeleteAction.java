package net.product.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.product.db.ProductDAO;

public class DoughDeleteAction implements Action{

	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		// ���ڵ�
		request.setCharacterEncoding("UTF-8");
		// ActionForward, BoardDAO, BoardBean ��ü ����
		ActionForward forward = new ActionForward();
		ProductDAO productDAO = new ProductDAO();

		try {

			boolean result = false;

			int code = Integer.parseInt(request.getParameter("dough_code"));

			result = productDAO.DeleteDough(code);

			if(result==false) {
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('��ǰ ������ �����Ͽ����ϴ�. �ٽ� �õ��� �ֽñ� �ٶ��ϴ�.');");
				out.println("location.href='./DoughListAction.pro';");
				out.println("</script>");
				out.close();
				return null;
			}

			// ���� ��� true : sendRedirect ���
			forward.setRedirect(true);
			// ���� ��� ����
			forward.setPath("./DoughListAction.pro");

			return forward;

		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
}
