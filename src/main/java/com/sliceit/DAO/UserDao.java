package com.sliceit.DAO;

import java.util.List;

import com.sliceit.modal.User;

/**
 * @author developer
 *	
 * UserDao for user crud operation
 */
public interface UserDao {

	public User getUserDetials();//fetch single User Detail
	
	public boolean updateEmail(String newEmail);//for updating new Email

	public boolean updateMobile(long newMobile);//for updating Mobile Number
	
	public boolean updatePassword(String newPassword);//for updating Password
	
	public boolean validateCurrentPassword(String currentPassword);//validate CurrentPassword
}
