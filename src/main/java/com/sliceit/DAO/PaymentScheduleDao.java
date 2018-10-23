package com.sliceit.DAO;

import java.util.List;

import com.sliceit.modal.PaymentSchedule;

/*
 * 
 * 
 * Payment Schedule DAO Interface Which Provide Methods For 
 * CRUD Operation.
 * 
 */
public interface PaymentScheduleDao {

	public List<PaymentSchedule> getPaymentDetails();//provide Payment Schedue Details
}
