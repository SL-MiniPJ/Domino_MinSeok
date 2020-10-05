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

public class OtherAddAction implements Action{

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
		String saveFolder = "other_image";
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

			int other_price = Integer.parseInt(multi.getParameter("other_price"));
			int calorie = Integer.parseInt(multi.getParameter("calorie"));
			int protein = Integer.parseInt(multi.getParameter("protein"));
			int saturated_fat = Integer.parseInt(multi.getParameter("Saturated_fat"));
			int salt = Integer.parseInt(multi.getParameter("salt"));
			int sugars = Integer.parseInt(multi.getParameter("sugars"));

			productVO.setOther_name(multi.getParameter("other_name"));
			productVO.setOther_price(other_price);
			productVO.setCalorie(calorie);
			productVO.setProtein(protein);
			productVO.setSaturated_fat(saturated_fat);
			productVO.setSalt(salt);
			productVO.setSugars(sugars);
			productVO.setIngredient(multi.getParameter("ingredient"));
			productVO.setOther_image(multi.getFilesystemName((String)multi.getFileNames().nextElement()));
			
			result = productDAO.addOther(productVO);

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
			list = productDAO.getOtherList();

			//"list" �̸����� list ��ü ����
			request.setAttribute("list", list);

			// ���� ��� = true : sendRedirect 
			forward.setRedirect(true);
			// ���� ��� ����
			forward.setPath("./OtherListAction.pro");

			System.out.println("addAction>listAcion");

			return forward;

		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
}