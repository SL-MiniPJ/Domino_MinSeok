package net.product.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.product.db.ProductDAO;

public class OtherDeleteAction implements Action{

	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		// ���ڵ�
		request.setCharacterEncoding("UTF-8");
		// ActionForward, BoardDAO, BoardBean ��ü ����
		ActionForward forward = new ActionForward();
		ProductDAO productDAO = new ProductDAO();

		try {

			boolean result = false;

			// get������� �Ѿ�� ���� ��ȣ
			int code = Integer.parseInt(request.getParameter("other_code"));

			result = productDAO.DeleteOther(code);

			if(result==false) {
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('��ǰ ������ �����Ͽ����ϴ�. �ٽ� �õ��� �ֽñ� �ٶ��ϴ�.');");
				out.println("location.href='./OtherListAction.pro';");
				out.println("</script>");
				out.close();
				return null;
			}

			// ���� ��� true : sendRedirect ���
			forward.setRedirect(true);
			// ���� ��� ����
			forward.setPath("./OtherListAction.pro");

			return forward;

		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
}
