package com.sliceit.modal;

/*
 * 
 * User POJO CLASS
 * 
 */
public class User {
	
	private String emailAddress;
	private String givenName;
	private String surename;
	private String middleName;
	private long mobileNumber;
	private String address1;
	private String address2;
	private String address3;
	private int pincode;
	private String houseNo;
	private String password;
	
	//default constructor
	public User()
	{
		super();
	}

	/**
	 * @param emailAddress
	 * @param givenName
	 * @param surename
	 * @param middleName
	 * @param mobileNumber
	 * @param address1
	 * @param address2
	 * @param address3
	 * @param pincode
	 * @param houseNo
	 * @param password
	 */
	public User(String emailAddress, String givenName, String surename, String middleName, long mobileNumber,
			String address1, String address2, String address3, int pincode, String houseNo, String password) {
		super();
		this.emailAddress = emailAddress;
		this.givenName = givenName;
		this.surename = surename;
		this.middleName = middleName;
		this.mobileNumber = mobileNumber;
		this.address1 = address1;
		this.address2 = address2;
		this.address3 = address3;
		this.pincode = pincode;
		this.houseNo = houseNo;
		this.password = password;
	}

	/**
	 * @return the emailAddress
	 */
	public String getEmailAddress() {
		return emailAddress;
	}

	/**
	 * @param emailAddress the emailAddress to set
	 */
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	/**
	 * @return the givenName
	 */
	public String getGivenName() {
		return givenName;
	}

	/**
	 * @param givenName the givenName to set
	 */
	public void setGivenName(String givenName) {
		this.givenName = givenName;
	}

	/**
	 * @return the surename
	 */
	public String getSurename() {
		return surename;
	}

	/**
	 * @param surename the surename to set
	 */
	public void setSurename(String surename) {
		this.surename = surename;
	}

	/**
	 * @return the middleName
	 */
	public String getMiddleName() {
		return middleName;
	}

	/**
	 * @param middleName the middleName to set
	 */
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	/**
	 * @return the mobileNumber
	 */
	public long getMobileNumber() {
		return mobileNumber;
	}

	/**
	 * @param mobileNumber the mobileNumber to set
	 */
	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	/**
	 * @return the address1
	 */
	public String getAddress1() {
		return address1;
	}

	/**
	 * @param address1 the address1 to set
	 */
	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	/**
	 * @return the address2
	 */
	public String getAddress2() {
		return address2;
	}

	/**
	 * @param address2 the address2 to set
	 */
	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	/**
	 * @return the address3
	 */
	public String getAddress3() {
		return address3;
	}

	/**
	 * @param address3 the address3 to set
	 */
	public void setAddress3(String address3) {
		this.address3 = address3;
	}

	/**
	 * @return the pincode
	 */
	public int getPincode() {
		return pincode;
	}

	/**
	 * @param pincode the pincode to set
	 */
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	/**
	 * @return the houseNo
	 */
	public String getHouseNo() {
		return houseNo;
	}

	/**
	 * @param houseNo the houseNo to set
	 */
	public void setHouseNo(String houseNo) {
		this.houseNo = houseNo;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
	
	
	
	
	
	
	
}
