package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dao {
	public static Connection con;
	
	static {
		try {
		 //MySQL 드라이버 로드
		   Class.forName("com.mysql.jdbc.Driver");
		   //데이터베이스 접속 객체 생성
		   con = DriverManager.getConnection(Common.url, Common.id, Common.pw);
		   
		}catch(Exception e) {
			System.out.println(e.getMessage());
			
		}
	}
}
