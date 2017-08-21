package com.visa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.visa.backing.bean.VisaApplication;
import com.visa.constants.VISAConstants;
import com.visa.dao.VisaServiceDao;
import com.visa.dao.VisaServiceDaoImpl;

@Service
public class VisaServiceImpl implements VisaService {

	@Override
	public String startTheVisaProcess(VisaApplication visaApplication) {
		VisaServiceDao visaServiceDao = new VisaServiceDaoImpl();
		visaServiceDao.generateVisa(visaApplication);
		String status = VISAConstants.VISAApplicationStatus.ISSUED.getDecode();
		return status;
	}
}
