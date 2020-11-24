package repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import entity.User;
import utils.JDBCTools;

public class UserRepositoryImpl implements UserRepository{
	@Override
	public User Login(String username,String password) {
		String sql="select * from SC where username=? and password=?";
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		User user=null;
		Connection connection=null;
		try {
			connection=JDBCTools.getConnection();
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);
			resultSet=preparedStatement.executeQuery();
			if(resultSet.next()) {
				user=new User(resultSet.getString(4),resultSet.getString(5));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			JDBCTools.release(connection);
		}
		return user;
	}
	public static void main(String[] args) {
		
		UserRepository userRepository=new UserRepositoryImpl();
		User user=userRepository.Login("ylk","123456");
		System.out.println(user);
		
	}

}
	