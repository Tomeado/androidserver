package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dao {
	public static Connection con;
	
	static {
		try {
		 //MySQL ����̹� �ε�
		   Class.forName("com.mysql.jdbc.Driver");
		   //�����ͺ��̽� ���� ��ü ����
		   con = DriverManager.getConnection(Common.url, Common.id, Common.pw);
		   
		}catch(Exception e) {
			System.out.println(e.getMessage());
			
		}
	}
}
