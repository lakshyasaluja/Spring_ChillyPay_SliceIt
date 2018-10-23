package com.sliceit.DAOImp;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import com.sliceit.DAO.BillingDao;
import com.sliceit.modal.Billing;

/*
 * 
 * 
 * Billing Dao Implementattion where actual Data Generate or fetch From API OR DATABASE
 */

public class BillingDaoImpl implements BillingDao {

	
	// creating static map object for instance of BillingDaoImpl so,they can share
	// same data
	static Map<String, Billing> billings = new HashMap<String, Billing>();

	static {
		// dummy Data for BillingDao
		billings.put("245256******2366", new Billing("245256******2366", "Visa", "10/02/2020", 0, "no"));
		billings.put("567256******4432", new Billing("567256******4432", "Visa", "3/12/2020", 0, "yes"));
		billings.put("789256******4546", new Billing("789256******4546", "Visa", "17/06/2020", 0, "no"));
	}
	
	
	
	// Provide All Billing Details
	@Override
	public Map<String, Billing> getBillingDetials() {

		return billings;//return all billing details
	}
	
	
	
	// Delete Single Card Detail based on provided card number
	@Override
	public boolean deleteBillingCard(String cardNumber) {

		boolean flag = false;
		Set<String> cardsNumber = billings.keySet();//fetching all cardNumbers

		Iterator<String> tempCardsNumber = cardsNumber.iterator();

		while (tempCardsNumber.hasNext()) {
			//check provided card number is available or not
			//if available then delete that card information
			if (tempCardsNumber.next().equals(cardNumber)) { 
				tempCardsNumber.remove();
				flag = true;
				break;

			}

		}

		return flag; //return result card deleted or not
	}

	
	//make preferred card for payment based on provided card number
	@Override
	public boolean makePreferredCard(String cardNumber) {
		boolean flag = false;
		Set<String> cardNumbers = billings.keySet();


		//check provided card number is available or not
		//if available then make preferred card for payment
		for (String temp : cardNumbers) {
			if (temp.equals(cardNumber)) {
				Billing billing = billings.get(temp);
				billing.setPrefreredCard("yes");
				billings.put(temp, billing);
				flag = true;

			} else {
				// and here set other billing card to "NO"
				Billing billing = billings.get(temp);
				billing.setPrefreredCard("no");
				billings.put(temp, billing);

			}

		}

		return flag;//return the resut based on above operation
	}
	
	
	//add new card information for payment and save same details also
	@Override
	public boolean addNewCard(String cardNumber, String expirydate) {
		String tempCardNumber = cardNumber.substring(0, 5);
		tempCardNumber = tempCardNumber + "******";
		tempCardNumber = tempCardNumber + cardNumber.substring(11);
		
		//creating new billing object for new card details
		Billing bill = billings.put(tempCardNumber, new Billing(tempCardNumber, "VISA", expirydate, 0, "no"));

		return true;
	}

}
