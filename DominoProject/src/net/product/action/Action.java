package net.product.action;

import javax.servlet.http.*;

public interface Action {
						// execute �޼ҵ�� �޾ƿ� ���� ActionForward Ÿ������ �����Ѵ�.
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception;
	
	// controller��  DB������ �ʿ��� ������(interface Action Ŭ������ ��� ����)�� ��û�� ��,
	// Action���� �ش� ������ ����� ������ Ŭ������ �������ε��Ͽ� ��ü�� �����Ͽ� ���� ��ο� ���� ����� �����Ѵ�.
	
}
