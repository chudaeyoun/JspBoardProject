<%@page import="com.multicampus.biz.user.UserDAO"%>
<%@page import="com.multicampus.biz.user.UserVO"%>
<%@page contentType="text/html; charset=EUC-KR"%>

<%
	// 0. ����üũ
	if(session.getAttribute("user") == null) {
		response.sendRedirect("login.html");
	}

	// 1. ����� �Է�����(id, password) ����
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	// 2. DB ���� ó��
	UserVO vo = new UserVO();
	vo.setId(id);
	vo.setPassword(password);
	
	UserDAO userDAO = new UserDAO();
	UserVO user = userDAO.getUser(vo);
	 
	// 3. ȭ�� �׺���̼�
	if(user != null) {
		// �α��� �������� �� ���ǿ� ���������� ����
		session.setMaxInactiveInterval(10); //��
		session.setAttribute("user", user);
		response.sendRedirect("getBoardList.jsp");
	} else {
		response.sendRedirect("login.html");
	}
%>
