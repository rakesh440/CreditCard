package com.visa.dao;

import java.util.Date;

import com.visa.backing.bean.VisaApplication;

public interface VisaServiceDao {
	public boolean isApplicantHaveVisa(String firstName, String lastName, Date dob, String licenseNumber);
	public void generateVisa(VisaApplication visaApplication);
}
