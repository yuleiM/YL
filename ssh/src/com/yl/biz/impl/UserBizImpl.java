package com.yl.biz.impl;

import java.util.List;

import com.yl.entity.Admin;
import com.yl.entity.Users;
import com.yl.biz.UserBiz;
import com.yl.dao.UserDAO;

public class UserBizImpl implements UserBiz {

	UserDAO userDAO;
	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public List login(Users condition) {
		return userDAO.search(condition);
	}

	//添加用户
	@Override
	public void addUsers(Users users) {
		userDAO.addUsers(users);		
	}

	//管理员登录验证
	@Override
	public List login(Admin condition) {
		return userDAO.search(condition);
	}

	//修改个人信息
	@Override
	public void modifyUsers(Users users) {
		userDAO.modifyUsers(users);
	}
}
