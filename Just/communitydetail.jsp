<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*, org.json.simple.*" %>
<%
   Class.forName("com.mysql.jdbc.Driver");
  
   request.setCharacterEncoding("utf-8");
   String num = request.getParameter("num");
   
   PreparedStatement pstmt = dao.Dao.con.prepareStatement("select * from message where num=?");
   
   pstmt.setInt(1, Integer.parseInt(num));
   
   ResultSet rs = pstmt.executeQuery();
   
   JSONObject obj = new JSONObject();
   while(rs.next()){
	   	obj.put("num", rs.getInt("num"));
	   	obj.put("title", rs.getString("title"));
	   	obj.put("contents", rs.getString("contents"));
  }
  pstmt.close();
  rs.close();

   
   response.setContentType("application/json");
   out.print(obj.toJSONString());
   System.out.println(obj.toJSONString());
%>

