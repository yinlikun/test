package service;

import entity.User;
import repository.UserRepository;
import repository.UserRepositoryImpl;

public class LoginServiceImpl implements LoginService{
	private UserRepository userRepository=new UserRepositoryImpl();
	@Override
	public User Login(String username, String password) {
		return userRepository.Login(username, password);
	}

}
