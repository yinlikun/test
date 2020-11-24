package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

import javax.sql.DataSource;

public class JDBCTools {
	private static String DRIVERCLASS="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static String URL="jdbc:sqlserver://localhost:1433;DatabaseName=Test";
	private static String USERNAME="a";
	private static String PASSWORD="12345";
	
	private static Connection connection=null;
	private static PreparedStatement preparedStatement=null;
	private static ResultSet resultSet=null;
	
	static {
		try {
			Class.forName(DRIVERCLASS);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static Connection getConnection() throws SQLException{

		connection=DriverManager.getConnection(URL, USERNAME, PASSWORD);
		return connection;
	}
    

    public static void release(Connection con){
        try {
            if(connection != null){
                con.close();
            }
            if(preparedStatement!=null) {
            	preparedStatement.close();
            }
            if(resultSet!=null) {
            	resultSet.close();
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public static void main (String[] args) throws SQLException {
    	
    	System.out.println(JDBCTools.getConnection());
//    	String string="select ?,?,? from Test..SC";
//    	Integer Sno = 0;
//    	try {
//			connection=getConnection();
//			
//    		preparedStatement=connection.prepareStatement(string);
//        	preparedStatement.setString(1, "Sno");
//        	preparedStatement.setString(2, "Cno");
//        	preparedStatement.setString(3, "Score");
//			resultSet=preparedStatement.executeQuery();
//			while(resultSet.next()) {
//	    		Sno = (Integer)resultSet.getInt(1);	
//	    		System.out.println(Sno);
//	    	}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}finally {
//			release(connection);
//		}
    	
		
//    	try {
//    		Connection con=null;
//    		ResultSet re=null;
//    		String string="select ?,?,? from Test..SC";
//        	
//    		String url,userName,userPwd;  
//            // 连接数据库的语句
//           url="jdbc:sqlserver://localhost:1433;DatabaseName=Test";
//       
//           userName="a";  
//           userPwd="12345";  
//           con=DriverManager.getConnection(url,userName,userPwd);  
//    		String Sno = null;
//    		PreparedStatement preparestatement=con.prepareStatement(string);
//        	preparestatement.setString(1, "Sno");
//        	preparestatement.setString(2, "Cno");
//        	preparestatement.setString(3, "Score");
//			re=preparestatement.executeQuery();
//			while(re.next()) {
//	    		Sno = re.getString(1);	
//	    		System.out.println(Sno);
//	    	}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
    	
    	
    	

    	
    	
	}
}
