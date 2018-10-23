package com.sliceit.modal;


/*
 * 
 * PaymentSchedule POJO CLASS
 * 
 */
public class PaymentSchedule {
	private String dueDate;
	private int orderNo;
	private String merchant;
	private int amountDue;
	
	public PaymentSchedule()
	{
		
	}

	/**
	 * @param dueDate
	 * @param orderNo
	 * @param merchant
	 * @param amountDue
	 */
	public PaymentSchedule(String dueDate, int orderNo, String merchant, int amountDue) {
		super();
		this.dueDate = dueDate;
		this.orderNo = orderNo;
		this.merchant = merchant;
		this.amountDue = amountDue;
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
	 * @return the orderNo
	 */
	public int getOrderNo() {
		return orderNo;
	}

	/**
	 * @param orderNo the orderNo to set
	 */
	public void setOrderNo(int orderNo) {
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
	 * @return the amountDue
	 */
	public int getAmountDue() {
		return amountDue;
	}

	/**
	 * @param amountDue the amountDue to set
	 */
	public void setAmountDue(int amountDue) {
		this.amountDue = amountDue;
	}
	
}
