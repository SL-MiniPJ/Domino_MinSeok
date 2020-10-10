package net.product.action;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ProductController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {

	private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// �� �������� �ּ�
		String RequestURI = request.getRequestURI();

		// ���̳��� �� ������Ʈ �� ������ �ּ�
		String contaxtPath = request.getContextPath();

		// �� �������� �ּҿ��� ���̳��� �� ������Ʈ �� ������ �ּҸ� �߶󳻰� ���� ���� command�� ����.
		String command = RequestURI.substring(contaxtPath.length());
		
		System.out.println("���� �ּ� : " + RequestURI);

		// ���� ��� �� ���� ����� ������ �뵵
		ActionForward forward  = null;
		Action action = null;


		if(command.equals("/web.dominos.co.kr/admin/Product.pro")){ // ����.. ���⼭ �����ϸ� ��ȸ �Ұ�
			// ���� ������
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("product_List.jsp");

		}else if(command.equals("/web.dominos.co.kr/admin/PizzaAddAction.pro")) {
			// ���� �߰�
			action = new PizzaAddAction();
			System.out.println("controller");
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/SideAddAction.pro")) {
			// ���̵� �߰�
			action = new SideAddAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/DoughAddAction.pro")) {
			// ���� �߰�
			action = new DoughAddAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/ToppingAddAction.pro")) {
			// ���� �߰�
			action = new ToppingAddAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/OtherAddAction.pro")) {
			// ����/��Ÿ �߰�
			action = new OtherAddAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}			


		}else if(command.equals("/web.dominos.co.kr/admin/PizzaListAction.pro")) {
			// ���� ���
			action = new PizzaListAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/SideListAction.pro")) {
			// ���̵� ���
			action = new SideListAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/DoughListAction.pro")) {
			// ���� ���
			action = new DoughListAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/ToppingListAction.pro")) {
			// ���� ���
			action = new ToppingListAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/OtherListAction.pro")) {
			// ����/��Ÿ ���
			action = new OtherListAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/PizzaDeleteAction.pro")) {
			// ���� ����
			action = new PizzaDeleteAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/SideDeleteAction.pro")) {
			// ���̵� ����
			action = new SideDeleteAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/DoughDeleteAction.pro")) {
			// ���� ����
			action = new DoughDeleteAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/ToppingDeleteAction.pro")) {
			// ���� ����
			action = new ToppingDeleteAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/OtherDeleteAction.pro")) {
			// ����/��Ÿ ����
			action = new OtherDeleteAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		else if(command.equals("/web.dominos.co.kr/goods/MenuListPizza.pro")) {
			// �޴� ����Ʈ ����
			System.out.println("MenuListPizza.pro ����");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("menuListPizza.jsp");
		}
		
		else if(command.equals("/web.dominos.co.kr/goods/MenuListSide.pro")) {
			// �޴� ����Ʈ ����
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("menuListSide.jsp");
		}
		
		else if(command.equals("/web.dominos.co.kr/goods/MenuListOther.pro")) {
			// �޴� ����Ʈ ����
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("menuListOther.jsp");
		}
		
		else if(command.equals("/web.dominos.co.kr/goods/PizzaDetail.pro")) {
			// ���� ��
			System.out.println("PizzaDetail.pro ����");
			action = new PizzaDetail();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		// ���� ��� �߰�
		else if(command.equals("/web.dominos.co.kr/admin/AdminMonthStatistic.pro")) {
			// �޴� ����Ʈ ����
			System.out.println("AdminMonthStatistic.pro ����");
			action = new DominoAdminMonthStatistic();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		
		
	
	


		if(forward.isRedirect()){
			// isRedirect = false : Forward
			response.sendRedirect(forward.getPath());
		}else{
			// isRedirect = true : sendRedirect
			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);
		}
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
}
