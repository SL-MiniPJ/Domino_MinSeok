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

public class PizzaAddAction implements Action{

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
		String saveFolder = "pizza_image";
		// ���� ������ ����.
		int fileSize = 5*1024*1024;

		// ������ ��� = ������ ����Ǵ� ���� ����� saveFolder.
		realFolder = request.getRealPath(saveFolder);

		
		// ��ǰ ��� : �ʱ�ȭ false.
		boolean result = false;

		try {
			
			// ���� ���ε� ��ü : �ʱ�ȭ null.
			MultipartRequest multi = null;

			// ���� ���ε� ��ü ���� (  ���� ��� , ������ ���, ���� ������, ���ڵ�, ���ϸ� �ٲٴ� ��Ģ�� �ִ� Ŭ���� ��ü ���� ).
			multi = new MultipartRequest(request, realFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());

			int pizza_price = Integer.parseInt(multi.getParameter("pizza_price"));
			int weight = Integer.parseInt(multi.getParameter("weight"));
			int total_weight = Integer.parseInt(multi.getParameter("total_weight"));
			int calorie = Integer.parseInt(multi.getParameter("calorie"));
			int protein = Integer.parseInt(multi.getParameter("protein"));
			int saturated_fat = Integer.parseInt(multi.getParameter("Saturated_fat"));
			int salt = Integer.parseInt(multi.getParameter("salt"));
			int sugars = Integer.parseInt(multi.getParameter("sugars"));

			productVO.setPizza_name(multi.getParameter("pizza_name"));
			productVO.setPizza_price(pizza_price);
			productVO.setStandard(multi.getParameter("standard"));
			productVO.setWeight(weight);
			productVO.setTotal_weight(total_weight);
			productVO.setCalorie(calorie);
			productVO.setProtein(protein);
			productVO.setSaturated_fat(saturated_fat);
			productVO.setSalt(salt);
			productVO.setSugars(sugars);
			productVO.setIngredient(multi.getParameter("ingredient"));
			productVO.setPizza_image(multi.getFilesystemName((String)multi.getFileNames().nextElement()));

			result = productDAO.addPizza(productVO);

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
			list = productDAO.getPizzaList();

			//"list" �̸����� list ��ü ����
			request.setAttribute("list", list);

			// ���� ��� = true : sendRedirect 
			forward.setRedirect(true);
			// ���� ��� ����
			forward.setPath("./PizzaListAction.pro");
			
			System.out.println("addAction>listAcion");
			
			return forward;

		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
}
