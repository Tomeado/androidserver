<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
   //MySQL 드라이버 로드
   Class.forName("com.mysql.jdbc.Driver");
   //데이터베이스 접속 객체 생성
   
   //입력한 내용을 가져오기 
   String email = request.getParameter("email");
   System.out.println(email);
   String name = request.getParameter("name");
   String title = request.getParameter("title");
   String contents = request.getParameter("contents");
   
   PreparedStatement pstmt = dao.Dao.con.prepareStatement(
		   "insert into message(email, name, title, contents, regdate) values(?,?,?,?, curdate())");
   //물음표 자리에 입력한 값을 삽입하기 
   pstmt.setString(1, email);
   pstmt.setString(2, name);
   pstmt.setString(3, title);
   pstmt.setString(4, contents);
  
   int r = pstmt.executeUpdate();
   
   pstmt.close();

   if(r > 0){
	   out.println("success");
	   System.out.println("success");
   }else{
	   System.out.println("fail");
   }
%>