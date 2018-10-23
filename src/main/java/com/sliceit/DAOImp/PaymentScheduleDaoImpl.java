package com.sliceit.DAOImp;

import java.util.ArrayList;
import java.util.List;

import com.sliceit.DAO.PaymentScheduleDao;
import com.sliceit.modal.PaymentSchedule;


/*
 * 
 * 
 * Payment Schedule Dao Implementation where actual Data Generate or fetch From API OR DATABASE
 */
public class PaymentScheduleDaoImpl implements PaymentScheduleDao{
	// creating static map object for instance of PaymentScheduleDAoImpl so,they can share
		// same data
	static List<PaymentSchedule> payments=new ArrayList<PaymentSchedule>();
	
	static
	{// dummy Data for PaymentScheduleDAoImpl
		payments.add(new PaymentSchedule("12/09/18", 76576571, "APPLE", 60000));
		payments.add(new PaymentSchedule("12/10/18", 76576571, "APPLE", 45000));
		payments.add(new PaymentSchedule("12/11/18", 76576571, "APPLE", 30000));
		payments.add(new PaymentSchedule("12/12/18", 76576571, "APPLE", 15000));
	}
	
	// Provide All Billing Details
	@Override
	public List<PaymentSchedule> getPaymentDetails() {
		
		return payments;//return all PaymentSchedule details
	}

	
}
