package com.koitt.board.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UsersServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doprocess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doprocess(req, resp);
	}


	public void doprocess(HttpServletRequest req, HttpServletResponse resp) throws UnsupportedEncodingException {
		
		req.setCharacterEncoding("utf-8");
		
		String cmd = req.getParameter("cmd");
		
		if (cmd == null || cmd.trim().length() == 0) {
			cmd = "CMD_LIST";
		}
		
		
	}
	
	
}