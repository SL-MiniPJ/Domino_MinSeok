package net.member.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.member.action.*;
import net.member.db.*;

public class DominoAdminMemberList implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		MemberDAO memberdao=new MemberDAO();
	      List Memberlist=new ArrayList();
	      int Membercount = 0;
	       

	      Memberlist = memberdao.getMemberList(); //����Ʈ�� �޾ƿ�.
	      Membercount = memberdao.getMemberCount(); //����Ʈ ������ �޾ƿ�.
	      

	      request.setAttribute("Membercount", Membercount); //ȸ�� ��.
	      request.setAttribute("Memberlist", Memberlist);
	      
	      ActionForward forward= new ActionForward();
	         forward.setPath("./adminMemberList.jsp");
	         return forward;
	    }
	 }
