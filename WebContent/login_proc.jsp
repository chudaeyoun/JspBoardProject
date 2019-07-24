<%@page import="com.multicampus.biz.user.UserDAO"%>
<%@page import="com.multicampus.biz.user.UserVO"%>
<%@page contentType="text/html; charset=EUC-KR"%>

<%
	// 0. 세션체크
	if(session.getAttribute("user") == null) {
		response.sendRedirect("login.html");
	}

	// 1. 사용자 입력정보(id, password) 추출
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	// 2. DB 연동 처리
	UserVO vo = new UserVO();
	vo.setId(id);
	vo.setPassword(password);
	
	UserDAO userDAO = new UserDAO();
	UserVO user = userDAO.getUser(vo);
	 
	// 3. 화면 네비게이션
	if(user != null) {
		// 로그인 성공했을 때 세션에 상태정보를 저장
		session.setMaxInactiveInterval(10); //초
		session.setAttribute("user", user);
		response.sendRedirect("getBoardList.jsp");
	} else {
		response.sendRedirect("login.html");
	}
%>
