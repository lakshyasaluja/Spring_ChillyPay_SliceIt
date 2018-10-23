package com.sliceit.DAOImp;

import java.util.ArrayList;
import java.util.List;

import com.sliceit.DAO.OrderDao;
import com.sliceit.modal.Order;

/*
 * 
 * 
 * Order Dao Implementattion where actual Data Generate or fetch From API OR DATABASE
 */

public class OrderDaoImpl implements OrderDao {

	// creating static map object for instance of OrderDaoImpl so,they can share
	// same data
	static	List<Order> orders=new ArrayList<Order>();
	
	
	//dummy data for processing
	static
	{
	orders.add(new Order(1, 34534345L, "Apple", 70000, "12/09/2018",00));
	orders.add(new Order(2, 45566345L, "Samsung", 60000, "13/09/2018",00));
	orders.add(new Order(3, 56565345L, "VIVO", 50000, "14/09/2018",00));
	orders.add(new Order(4, 67634345L, "OPPO", 40000, "15/09/2018",00));
	orders.add(new Order(5, 77534345L, "MI", 30000, "16/09/2018",00));
	orders.add(new Order(6, 89534345L, "Google", 20000, "17/09/2018",00));
	}
	
	// Provide All Billing Details
	@Override
	public List<Order> getAllOrder() {
		
		return orders;//return all orders details
	}
	


}
