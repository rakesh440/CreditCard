package com.visa.service;

import java.util.Date;

import com.visa.backing.bean.VisaApplication;

public interface VisaService {

	public String startTheVisaProcess(VisaApplication visaApplication);
}
