<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*, org.json.simple.*" %>
<%
   Class.forName("com.mysql.jdbc.Driver");
  
   request.setCharacterEncoding("utf-8");
   
   JSONArray list = new JSONArray();
   
   PreparedStatement pstmt = dao.Dao.con.prepareStatement("select * from message order by regdate desc");
   ResultSet rs = pstmt.executeQuery();
   while(rs.next()){
	   	JSONObject obj = new JSONObject();
	   	obj.put("num", rs.getInt("num"));
	   	obj.put("title", rs.getString("title"));
	   	obj.put("name", rs.getString("name"));
	   	obj.put("regdate", rs.getString("regdate"));
	   	list.add(obj);
  }
  pstmt.close();
  rs.close();
   
   response.setContentType("application/json");
   out.print(list.toJSONString());
%>

