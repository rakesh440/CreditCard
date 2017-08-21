package com.visa.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

@SuppressWarnings("deprecation")
public class HibernateUtil {
	private static Session session = null;
	static {
		SessionFactory sf = new AnnotationConfiguration().configure()
				.buildSessionFactory();
		System.out.println("session ready");
		session = sf.openSession();
	}

	public static Session getSession() {
		return session;
	}

	public static void closeSession() {
		session.flush();
		session.close();
	}
}
