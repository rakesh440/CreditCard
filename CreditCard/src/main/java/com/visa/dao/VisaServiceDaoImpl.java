package com.visa.dao;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.springframework.stereotype.Repository;

import com.visa.backing.bean.VisaApplication;
import com.visa.dom.AddressDom;
import com.visa.dom.ApplicantDetailDom;

@SuppressWarnings("deprecation")
@Repository
public class VisaServiceDaoImpl implements VisaServiceDao {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public boolean isApplicantHaveVisa(String firstName, String lastName,
			Date dob, String licenseNumber) {

		return false;
	}

	@Override
	public void generateVisa(VisaApplication visaApplication) {
		ApplicantDetailDom detailDom = new ApplicantDetailDom();
		detailDom.setDateOfBirth(new Date(visaApplication.getDob()));
		detailDom.setFirstName(visaApplication.getFirstName());
		detailDom.setLastName(visaApplication.getLastName());
		detailDom.setLicenseNumber(visaApplication.getLicenseNumber());
		detailDom.setGender(visaApplication.getGender());
		detailDom.setNationality(visaApplication.getNationality());

		AddressDom addressDom = new AddressDom();
		addressDom.setAddLineOne(visaApplication.getAddress()
				.getAddressLineOne());
		addressDom.setAddLineTwo(visaApplication.getAddress()
				.getAddressLineTwo());
		addressDom.setState(visaApplication.getAddress().getState());
		addressDom.setZipCode(visaApplication.getAddress().getZipcode());
		addressDom.setCountry(visaApplication.getAddress().getCountry());

		detailDom.setAddressDom(addressDom);

		/*
		 * Session session = getSessionFactory().getCurrentSession();
		 * session.beginTransaction(); session.save(detailDom);
		 * session.getTransaction().commit();
		 */

		sessionFactory = new AnnotationConfiguration().configure()
				.buildSessionFactory();
		Session session = sessionFactory.openSession();

		session.beginTransaction();
		session.save(detailDom);
		session.save(addressDom);
		session.getTransaction().commit();
		session.flush();
		session.close();
	}

}
