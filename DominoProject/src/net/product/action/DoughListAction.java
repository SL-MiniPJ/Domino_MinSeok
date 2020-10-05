package net.product.action;

import net.product.db.ProductBean;
import net.product.db.ProductDAO;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DoughListAction implements Action{

	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		System.out.println("listAction");
		// ���ڵ�
		request.setCharacterEncoding("UTF-8");
		// ActionForward, BoardDAO, BoardBean ��ü ����
		ActionForward forward = new ActionForward();
		ProductDAO productDAO = new ProductDAO();
		ProductBean productVO = new ProductBean();

		List list = new ArrayList();
		list = productDAO.getDoughList();
		
		 //"list" �̸����� list ��ü ����
		request.setAttribute("list", list);


		// ���� ��� = false : Forward 
		forward.setRedirect(false);
		// ���� ��� ����
		forward.setPath("dough_list.jsp");

		return forward;
	}
}