package com.visa.backing.bean;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

import com.visa.bean.validators.CheckDate;
import com.visa.constants.VISAConstants;

@CheckDate(dateEntered = "dob")
public class VisaApplication {
	
	@Size(min=5, max=30)
	@NotBlank(message = "License Number should not be empty.")	
	@Pattern(regexp = VISAConstants.REG_EXP_ALPHANUMERICAL, message = "Should be in alphanumerics")
    private String licenseNumber; 
	
	
	@NotBlank(message = "First Name : Should not be empty.")
	@Pattern(regexp = VISAConstants.REG_EXP_ALPHABETICAL_SPACE, message = "Name : Should be in alphabetics")
	String firstName;
	
	@NotBlank(message = "Last Name : Should not be empty.")
	@Pattern(regexp = VISAConstants.REG_EXP_ALPHABETICAL_SPACE, message = "Name : Should be in alphabetics")
	String lastName;	
	
	@NotBlank(message = "Email : Should not be empty.")
	String email;
	
	@NotBlank(message = "Nationality : Should not be empty.")
	@Pattern(regexp = VISAConstants.REG_EXP_ALPHABETICAL, message = "Nationality : Should be in alphabetics")
	String nationality;

	@NotBlank(message = "Gender : should not be empty.")
	@Pattern(regexp = VISAConstants.REG_EXP_ALPHABETICAL, message = "Gender : Should be in alphabetics")
	String gender;
	
	String dob;

	Address address;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getLicenseNumber() {
		return licenseNumber;
	}

	public void setLicenseNumber(String licenseNumber) {
		this.licenseNumber = licenseNumber;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}
}
