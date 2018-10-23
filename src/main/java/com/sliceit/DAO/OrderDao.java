package com.sliceit.DAO;

import java.util.List;

import com.sliceit.modal.Order;
/*
 * 
 * 
 * OrderDAO Interface Which Provide Methods For 
 * CRUD Operation.
 * 
 */

public interface OrderDao {
	
	public List<Order> getAllOrder();//for Fetching All Order Details
	
}
