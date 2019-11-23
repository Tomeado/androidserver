<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.sql.*" %>
<%
   //MySQL 드라이버 로드
   Class.forName("com.mysql.jdbc.Driver");
   //데이터베이스 접속 객체 생성
  
   
   //파라미터 읽기
   request.setCharacterEncoding("utf-8");
   String email = request.getParameter("email");
   String password = request.getParameter("pw");
   String name = request.getParameter("name");
   
   
   //SQL 생성 
   PreparedStatement pstmt = dao.Dao.con.prepareStatement(
		   "insert into member(email, pw, name) values(?,?,?)");
   pstmt.setString(1, email);
   pstmt.setString(2, password);
   pstmt.setString(3, name);

   int rs = pstmt.executeUpdate();
   if(rs > 0){
	   out.println("success");
   }else{
	   out.println("fail");
   }
   %>
