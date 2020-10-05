package net.menu.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.menu.action.*;

public interface Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
		throws Exception;
}

