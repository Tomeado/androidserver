<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import = "java.sql.*" %>
    
    <%
    
    	String num = request.getParameter("num");
    	
    	   
    	   
    	   PreparedStatement pstmt = dao.Dao.con.prepareStatement(
    			   "delete from article where num=?");
    	   //물음표 자리에 입력한 값을 삽입하기 
    	   pstmt.setString(1, num);
    	  
    	   pstmt.executeUpdate();
    	   pstmt.close();
    %>