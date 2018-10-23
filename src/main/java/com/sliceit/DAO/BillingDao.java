package com.sliceit.DAO;

import java.util.List;
import java.util.Map;

import com.sliceit.modal.Billing;

/*
 * 
 * 
 * BillingDAO Interface Which Provide Methods For 
 * CRUD Operation.
 * 
 */
public interface BillingDao {

	public Map<String, Billing> getBillingDetials(); // For Fetching All Billing Details

	public boolean deleteBillingCard(String cardNumber); // Delete Single Card Detail

	public boolean makePreferredCard(String cardNumber);// Make Preferred Card For Payment.

	public boolean addNewCard(String cardNumber, String expirydate);// This Will Add New Card For Payment

}
