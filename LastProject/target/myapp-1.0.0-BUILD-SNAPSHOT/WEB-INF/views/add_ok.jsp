<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.myproject.myapp.member.MemberDAO"%>
<%@page import="com.myproject.myapp.member.MemberVO"%>



<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="u" class="com.myproject.myapp.member.MemberVO" />
<jsp:setProperty property="*" name="u"/>


<%
	MemberDAO memberDAO = new MemberDAO();
	int i = memberDAO.insertMember(u);
	String msg = "데이터 추가 성공 !";
	if(i == 0) msg = "[에러] 데이터 삭제 ";
%>

<script>
	alert('<%=msg%>');
	location.href='list.jsp';
</script>