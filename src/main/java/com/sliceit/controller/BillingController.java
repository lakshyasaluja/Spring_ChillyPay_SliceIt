package com.sliceit.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sliceit.DAO.BillingDao;
import com.sliceit.modal.Billing;

/*
 * 
 * 
 * 
 * BillingController Handle All The Request Related To Billing Module
 * and Provide CRUD Operation facility.
 * 
 */
@Controller
public class BillingController {
	
	//AutoWiring (Object Automatically Inject) Through dispatcher-servlet.xml File
	@Autowired
	private BillingDao billingDao;
	
	
	/* It deletes a Card Details for the given cardNumber in URL and redirects to /billing */
	
	@RequestMapping("/deleteBillingCard/{cardNumber}")
	public ModelAndView deleteBillingCard(@PathVariable ("cardNumber") String cardNumber)
	{
		ModelAndView pageToRender=null;
		
		boolean isDeleted=billingDao.deleteBillingCard(cardNumber); //Passing Card Details to DAO for Deleting the record From Database or API
		
		if(!isDeleted) //check for card is Delete or Not
		{
			pageToRender=new ModelAndView("billing"); //Redirect to /Billing With Error
			pageToRender.addObject("cardInfo","CARD DELETED SUCCESSFULLY");
		}
		else
		{
			pageToRender=new ModelAndView("redirect:/billing"); //Redirect to /Billing With Success Message
			
		}
		
		return pageToRender;
	}
	
	/* It will make a Preferred Card for Payment for the given
	 
	 	cardNumber in URL and redirects to /billing */
	
	@RequestMapping("/makePreferredCard/{cardNumber}")
	public ModelAndView makePreferredCard(@PathVariable ("cardNumber") String cardNumber)
	{
		ModelAndView pageToRender=null;
		
		boolean isPreferred=billingDao.makePreferredCard(cardNumber);
		
		
		if(!isPreferred) //check for card is make Prefrred Card for Payment or Not
		{
			pageToRender=new ModelAndView("billing"); //Redirect to /Billing With Error
			pageToRender.addObject("cardInfo","CARD NOT DELETED");
		}
		else
		{
			pageToRender=new ModelAndView("redirect:/billing"); //Redirect to /Billing With Success Message
			
		}
		
		
		return pageToRender;
	}
	
	/* It will Add a New Card for Payment and redirects to /billing */
	@RequestMapping(value="/addNewCard")
	public ModelAndView addNewCard(@RequestParam Map<String, String> data)
	{
		billingDao.addNewCard(data.get("cardNumber"), data.get("expirydate")); //Adding New Card For A User
		
		return new ModelAndView("redirect:/billing");
	}

}
