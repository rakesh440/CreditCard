package com.visa.dom;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "APPLICANT_ADDRESS")
@SequenceGenerator(name = "APPLICANT_ADDRESS_SEQ", sequenceName = "APPLICANT_ADDRESS_SEQ")
public class AddressDom {

	private static final long serialVersionUID = 92327730912581631L;

	@Id
	@GeneratedValue(generator = "APPLICANT_ADDRESS_SEQ", strategy = GenerationType.AUTO)
    @Column(name = "ADDR_ID")
	private Integer id;	

	@Column(name = "ADDR_LINE_ONE")
	private String addLineOne;	 

	@Column(name = "ADDR_LINE_TWO")
	private String addLineTwo;
	
	@Column(name = "CITY")
	private String city;	 
	 
	@Column(name = "STATE")
	private String state;
	
	@Column(name = "ZIPCODE")
	private String zipCode;
		
	@Column(name = "COUNTRY")
	private String country;
	 
	@Column(name = "STATUS_CD")
	private String statusCd;

	 
	
	public String getAddLineOne() {
		return addLineOne;
	}

	public void setAddLineOne(String addLineOne) {
		this.addLineOne = addLineOne;
	}

	public String getAddLineTwo() {
		return addLineTwo;
	}

	public void setAddLineTwo(String addLineTwo) {
		this.addLineTwo = addLineTwo;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getStatusCd() {
		return statusCd;
	}

	public void setStatusCd(String statusCd) {
		this.statusCd = statusCd;
	}


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
		
	}

}

