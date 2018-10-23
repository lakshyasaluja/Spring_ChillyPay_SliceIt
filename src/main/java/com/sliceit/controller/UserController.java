package com.sliceit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.sliceit.DAO.UserDao;

/*
 * 
 * UserController Handle All The Request Related To User(myAccount) Module
 * and Provide CRUD Operation facility.
 */
@Controller
public class UserController {
	
	//AutoWiring (Object Automatically Inject) Through dispatcher-servlet.xml File
	@Autowired
	private UserDao userDao;
	
	//method for updating User Email Address
	@RequestMapping(value="/updateUserEmail",method=RequestMethod.POST)
	public @ResponseBody String updateEmail(@RequestParam("email") String newEmail) {
			
		userDao.updateEmail(newEmail);//updating Email Address
		
		return newEmail;//returning new Email Address
	}
	
	//method for updating User Mobile Number
	@RequestMapping(value="/updateUserMobile",method=RequestMethod.POST)
	public @ResponseBody String updateMobile(@RequestParam("mobile") long newMobile) {
			
		userDao.updateMobile(newMobile);//updating Mobile Number
		
		return ""+newMobile;//returning new Mobile Number
	}
	
	//method for updating User Password
	@RequestMapping(value="/updateUserPassword",method=RequestMethod.POST)
	public @ResponseBody boolean updatePassword(@RequestParam("password") String newPassword) {
			
		userDao.updatePassword(newPassword);//updating Password
		
		return true;//returning reponse Msg
	}
	
	//method for validating Current Password
	@RequestMapping(value="/validateCurrentPassword",method=RequestMethod.POST)
	
	public @ResponseBody boolean validateCurrentPassword(@RequestParam("currentPassword") String currentPassword)
	{
		boolean flag=userDao.validateCurrentPassword(currentPassword);
		
		return flag;
	}

	
}

