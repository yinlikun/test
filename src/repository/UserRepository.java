package repository;

import entity.User;

public interface UserRepository {
	public User Login(String username,String password);
}
