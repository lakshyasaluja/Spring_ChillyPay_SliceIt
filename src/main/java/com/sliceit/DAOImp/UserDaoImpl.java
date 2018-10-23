package com.sliceit.DAOImp;

import java.util.List;

import com.sliceit.DAO.UserDao;
import com.sliceit.modal.User;

/*
 * 
 * 
 * User Dao Implementation where actual Data Generate or fetch From API OR DATABASE
 */
public class UserDaoImpl implements UserDao {

	static User user = new User("lakshya.saluja@oboluctech.com", "lakshya", "saluja", "saluja", 8800506037L, "yamuna vihar",
			"Delhi", "", 110053, "F-21","123456");

	// fetch single user data;
	@Override
	public User getUserDetials() {

		return user;// returing single user data
	}

	//for Updating newEmail
	@Override
	public boolean updateEmail(String newEmail) {
		
		user.setEmailAddress(newEmail);//updating New Email Address
		
		return true;
	}
	
	//for Updating newMobile Number
	@Override
	public boolean updateMobile(long newMobile) {
		
		user.setMobileNumber(newMobile); //updating Mobile Number
		
		return true;
	}
	
	//for Updating newPassword
	@Override
	public boolean updatePassword(String newPassword) {
		user.setPassword(newPassword);//updating New Password
		return true;
	}
	//validate CurrentPassword for updating new Password
	public boolean validateCurrentPassword(String currentPassword)
	{
		if(user.getPassword().equals(currentPassword))//checking current Entered Password is same as provided password 
		{
			return true;
		}
		
		return false;
	}

}
