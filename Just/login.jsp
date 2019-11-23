<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>


<%
   //MySQL 드라이버 로드
   Class.forName("com.mysql.jdbc.Driver");
   //데이터베이스 접속 객체 생성
  
   //입력한 데이터 가져오기 
   request.setCharacterEncoding("utf-8");
   String email = request.getParameter("email");
   String pw = request.getParameter("pw");
   //SQL 만들기
   PreparedStatement pstmt = dao.Dao.con.prepareStatement("select * from member where email = ? and pw = ?");
   pstmt.setString(1, email);
   pstmt.setString(2, pw);
   //SQL 실행 
   ResultSet rs = pstmt.executeQuery();
   if(rs.next()){
		out.print(rs.getString("name"));

   }else{
	  out.print("fail");
   }
   
   //정리 
   rs.close();
   pstmt.close();
%>