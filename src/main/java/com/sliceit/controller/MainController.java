package com.sliceit.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sliceit.DAO.BillingDao;
import com.sliceit.DAO.OrderDao;
import com.sliceit.DAO.PaymentScheduleDao;
import com.sliceit.DAO.UserDao;
import com.sliceit.modal.Billing;
import com.sliceit.modal.Order;
import com.sliceit.modal.PaymentSchedule;
import com.sliceit.modal.User;
 /*
  * 
  * 
  * MainController Handle the Request coming for 
  * Main Page Like login,register,dashboard,billing,paymentSchedule pages.
  * 
  * IT JUST RENDER ABOVE MENTION PAGES DON't MAKE ANY (CREATE,DELETE,UPDATE) OPREATION
  * BUT DO RETRIVE OPERATION 
  * 
  * 
  */
@Controller
public class MainController {
	
	//AutoWiring (Object Automatically Inject) Through dispatcher-servlet.xml File
	@Autowired
	private OrderDao orderDao;
	
	//AutoWiring (Object Automatically Inject) Through dispatcher-servlet.xml File
	@Autowired
	private UserDao userDao;
	
	//AutoWiring (Object Automatically Inject) Through dispatcher-servlet.xml File
	@Autowired
	private PaymentScheduleDao paymentScheduleDao;
	
	//AutoWiring (Object Automatically Inject) Through dispatcher-servlet.xml File
	@Autowired
	private BillingDao billingDao;
	
	
	/*
	 * 
	 * This Method Handle Request coming for LoginEmail Page 
	 * And Render The Same Page
	 */
	@RequestMapping("/loginEmail")
	public ModelAndView loginEmailPage(){
		ModelAndView loginEmailView=new ModelAndView("loginEmail");
		return loginEmailView;
	}
	

	/*
	 * 
	 * This Method Handle Request coming for LoginPassword Page 
	 * And Render The Same Page
	 */
	@RequestMapping("/loginPassword")
	public ModelAndView loginPasswordPage(){
		ModelAndView loginPasswordView=new ModelAndView("loginPassword");
		return loginPasswordView;
	}
	

	/*
	 * 
	 * This Method Handle Request coming for dashboard Page And Render The Same Page.
	 * And Also Provides All Order Details With It.
	 */
	
	@RequestMapping("/dashboard")
	public ModelAndView dashboardPage(){
		
		ModelAndView dashboardView=new ModelAndView("dashboard");
		
		List<Order> orders=orderDao.getAllOrder();	//fetch All Order Details From Order DAO
		
		dashboardView.addObject("orders",orders); //Adding All Order Details into View 
		
		return dashboardView;
	}
	

	/*
	 * 
	 * This Method Handle Request coming for paymentSchedule Page And Render The Same Page.
	 * And Also Provide All Payment Schedule Details With It.
	 */
	
	@RequestMapping("/paymentSchedule")
	public ModelAndView paymentSchedulePage() {
		ModelAndView paymentScheduleView=new ModelAndView("paymentSchedule");
		
		List<PaymentSchedule> payments=paymentScheduleDao.getPaymentDetails();//fetch All Payment Schedule Details From Payment Schedule DAO
		
		paymentScheduleView.addObject("payments",payments); //Adding Payment Schedule Details into View
		
		return paymentScheduleView;
	}
	
	/*
	 * 
	 * This Method Handle Request coming for myAccount Page And Render The Same Page.
	 * with user detail
	 * 
	 */
	
	@RequestMapping("/myAccount")
	public ModelAndView myAccountPage() {
		ModelAndView myAccountView=new ModelAndView("myAccount");
		
		User user=userDao.getUserDetials();//fetching User Detials
		
		myAccountView.addObject("user",user);//adding User Object Into myAccount View
		return myAccountView;
	}
	/*
	 * 
	 * This Method Handle Request coming for billingPage Page And Render The Same Page.
	 * And Also Provide All billing Details With It.
	 */
	
	@RequestMapping("/billing")
	public ModelAndView billingPage() {
		
		ModelAndView billingView=new ModelAndView("billing");
		
		Map<String,Billing> billings=billingDao.getBillingDetials();//fetch All Billing Details From Billing DAO
		
		billingView.addObject("billings",billings);//adding Billing Details into Billing View
		
		return billingView;
	}
	
	/*
	 * 
	 * This Method Handle Request coming for orderPage Page And Render The Same Page.
	 * 
	 */

	@RequestMapping("/orderPage")
	public ModelAndView orderPage() {
		ModelAndView orderView=new ModelAndView("orderPage");
		return orderView;
	}
	
	/*
	 * 
	 * This Method Handle Request coming for registerEmail Page And Render The Same Page.
	 * 
	 */

	@RequestMapping("/registerEmail")
	public ModelAndView registerEmailPage() {
		ModelAndView registerEmailView=new ModelAndView("registerEmail");
		return registerEmailView;
	}
	
	/*
	 * 
	 * This Method Handle Request coming for registerPhoneNo Page And Render The Same Page.
	 * 
	 */	
	@RequestMapping("/registerPhoneNo")
	public ModelAndView registerPhoneNoPage() {
		ModelAndView registerPhoneNoView=new ModelAndView("registerPhoneNo");
		return registerPhoneNoView;
	}
	/*
	 * 
	 * This Method Handle Request coming for registerVerificationCode Page And Render The Same Page.
	 * 
	 */
	@RequestMapping("/registerVerificationCode")
	public ModelAndView registerVerificationCode() {
		ModelAndView registerVerificationCodeView=new ModelAndView("registerVerificationCode");
		return registerVerificationCodeView;
	}/*
	 * 
	 * This Method Handle Request coming for orderPaymentPage Page And Render The Same Page.
	 * 
	 */
	@RequestMapping("/orderPaymentPage")
	public ModelAndView orderPaymentPage() {
		ModelAndView orderPaymentPage=new ModelAndView("orderPaymentPage");
		return orderPaymentPage;
	}
	
	
}