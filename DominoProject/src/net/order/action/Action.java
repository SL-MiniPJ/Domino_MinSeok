package net.order.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.order.action.*;

public interface Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
		throws Exception;
}

