package com.sliceit.modal;


/*
 * BILLING POJO CLASS 
 */
public class Billing {

	private String number;
	private String type;
	private String expiry;
	private int associatedOrder;
	private String prefreredCard;
	
	public Billing()
	{
		
	}

	/**
	 * @param number
	 * @param type
	 * @param expiry
	 * @param associatedOrder
	 * @param prefreredCard
	 */
	public Billing(String number, String type, String expiry, int associatedOrder, String prefreredCard) {
		super();
		this.number = number;
		this.type = type;
		this.expiry = expiry;
		this.associatedOrder = associatedOrder;
		this.prefreredCard = prefreredCard;
	}

	/**
	 * @return the number
	 */
	public String getNumber() {
		return number;
	}

	/**
	 * @param number the number to set
	 */
	public void setNumber(String number) {
		this.number = number;
	}

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}

	/**
	 * @return the expiry
	 */
	public String getExpiry() {
		return expiry;
	}

	/**
	 * @param expiry the expiry to set
	 */
	public void setExpiry(String expiry) {
		this.expiry = expiry;
	}

	/**
	 * @return the associatedOrder
	 */
	public int getAssociatedOrder() {
		return associatedOrder;
	}

	/**
	 * @param associatedOrder the associatedOrder to set
	 */
	public void setAssociatedOrder(int associatedOrder) {
		this.associatedOrder = associatedOrder;
	}

	/**
	 * @return the prefreredCard
	 */
	public String getPrefreredCard() {
		return prefreredCard;
	}

	/**
	 * @param prefreredCard the prefreredCard to set
	 */
	public void setPrefreredCard(String prefreredCard) {
		this.prefreredCard = prefreredCard;
	}

	
	
}
