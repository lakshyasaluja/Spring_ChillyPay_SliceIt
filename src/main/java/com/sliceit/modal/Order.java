package com.sliceit.modal;


/*
 * ORDER POJO CLASS 
 */
public class Order {

	private int orderId;
	private long orderNo;
	private String merchant;
	private int orderAmount;
	private String dueDate;
	private int amountOwing;
	
	public Order()
	{
		
	}

	/**
	 * @param orderId
	 * @param orderNo
	 * @param merchant
	 * @param orderAmount
	 * @param dueDate
	 * @param amountOwing
	 */
	public Order(int orderId, long orderNo, String merchant, int orderAmount, String dueDate, int amountOwing) {
		super();
		this.orderId = orderId;
		this.orderNo = orderNo;
		this.merchant = merchant;
		this.orderAmount = orderAmount;
		this.dueDate = dueDate;
		this.amountOwing = amountOwing;
	}

	/**
	 * @return the orderId
	 */
	public int getOrderId() {
		return orderId;
	}

	/**
	 * @param orderId the orderId to set
	 */
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	/**
	 * @return the orderNo
	 */
	public long getOrderNo() {
		return orderNo;
	}

	/**
	 * @param orderNo the orderNo to set
	 */
	public void setOrderNo(long orderNo) {
		this.orderNo = orderNo;
	}

	/**
	 * @return the merchant
	 */
	public String getMerchant() {
		return merchant;
	}

	/**
	 * @param merchant the merchant to set
	 */
	public void setMerchant(String merchant) {
		this.merchant = merchant;
	}

	/**
	 * @return the orderAmount
	 */
	public int getOrderAmount() {
		return orderAmount;
	}

	/**
	 * @param orderAmount the orderAmount to set
	 */
	public void setOrderAmount(int orderAmount) {
		this.orderAmount = orderAmount;
	}

	/**
	 * @return the dueDate
	 */
	public String getDueDate() {
		return dueDate;
	}

	/**
	 * @param dueDate the dueDate to set
	 */
	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}

	/**
	 * @return the amountOwing
	 */
	public int getAmountOwing() {
		return amountOwing;
	}

	/**
	 * @param amountOwing the amountOwing to set
	 */
	public void setAmountOwing(int amountOwing) {
		this.amountOwing = amountOwing;
	}
	
	
}
