package com.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.Random;

import org.springframework.stereotype.Repository;

import com.bean.UserBean;

@Repository
public class UserDao {

	ArrayList<UserBean> list = new ArrayList<UserBean>(); 
	
	
	
	public void insert(UserBean user) {
		list.add(user);
	}
	
	public List<UserBean> showData() {
		return list;
	}
	
	public ArrayList<UserBean> delete(int id){
		int i =0;
		for (UserBean userBean : list) {
			if(userBean.getId() == id) {
				list.remove(i);
				return list;
			}
			i++;
		}
		
		return list;
	}
	
	public UserBean getDataById(int id){
		for (UserBean userBean : list) {
			if(userBean.getId() == id) {
				return userBean;
			}
		}
		return null;
	}
	
	public ArrayList<UserBean> updateUser(UserBean user){
		ListIterator<UserBean> itr = list.listIterator();
		while(itr.hasNext()) {
			if(user.getId() == itr.next().getId()) {
				itr.set(user);
				return list;
			}
		}
		return null;
	}
}
