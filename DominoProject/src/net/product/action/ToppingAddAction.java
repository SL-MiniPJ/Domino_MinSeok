package net.product.action;

import net.product.db.ProductBean;
import net.product.db.ProductDAO;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ToppingAddAction implements Action{

	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		System.out.println("addAction");
		// ���ڵ�
		request.setCharacterEncoding("UTF-8");
		// ActionForward, BoardDAO, BoardBean ��ü ����
		ActionForward forward = new ActionForward();
		ProductDAO productDAO = new ProductDAO();
		ProductBean productVO = new ProductBean();

		// ������ ���.
		String realFolder = "";
		// ������ ���� �̸�.
		String saveFolder = "topping_image";
		// ���� ������ ����.
		int fileSize = 5*1024*1024;

		// ������ ��� = ������ ����Ǵ� ���� ����� saveFolder.
		realFolder = request.getRealPath(saveFolder);
		
		boolean result = false;

		try {

			// ���� ���ε� ��ü : �ʱ�ȭ null.
			MultipartRequest multi = null;

			// ���� ���ε� ��ü ���� (  ���� ��� , ������ ���, ���� ������, ���ڵ�, ���ϸ� �ٲٴ� ��Ģ�� �ִ� Ŭ���� ��ü ���� ).
			multi = new MultipartRequest(request, realFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
			
			int topping_price = Integer.parseInt(multi.getParameter("topping_price"));

			productVO.setTopping(multi.getParameter("topping"));
			productVO.setTopping_price(topping_price);
			productVO.setTopping_image(multi.getFilesystemName((String)multi.getFileNames().nextElement()));

			result = productDAO.addTopping(productVO);

			// ��� ����
			if(result==false){
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('��ǰ ��Ͽ� �����Ͽ����ϴ�. �ٽ� �õ��� �ֽñ� �ٶ��ϴ�.');");
				out.println("location.href='./product.pro';");
				out.println("</script>");
				out.close();
				return null;
			}

			List list = new ArrayList();
			list = productDAO.getToppingList();

			//"list" �̸����� list ��ü ����
			request.setAttribute("list", list);

			// ���� ��� = true : sendRedirect 
			forward.setRedirect(true);
			// ���� ��� ����
			forward.setPath("./ToppingListAction.pro");

			System.out.println("addAction>listAcion");

			return forward;

		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
}