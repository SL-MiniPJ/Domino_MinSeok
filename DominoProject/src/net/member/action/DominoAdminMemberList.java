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
	       

	      Memberlist = memberdao.getMemberList(); //리스트를 받아옴.
	      Membercount = memberdao.getMemberCount(); //리스트 개수를 받아옴.
	      

	      request.setAttribute("Membercount", Membercount); //회원 수.
	      request.setAttribute("Memberlist", Memberlist);
	      
	      ActionForward forward= new ActionForward();
	         forward.setPath("./adminMemberList.jsp");
	         return forward;
	    }
	 }
