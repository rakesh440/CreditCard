package com.visa.bean.validators;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.hibernate.validator.internal.metadata.core.ConstraintHelper;

import com.visa.constants.VISAConstants;

public class DateValidator implements ConstraintValidator<CheckDate, Object> {

	private String dateEntered;

	@Override
	public void initialize(CheckDate constraintAnnotation) {
		this.dateEntered = constraintAnnotation.dateEntered();
	}

	@Override
	public boolean isValid(Object value, ConstraintValidatorContext context) {
		String dateObj = value.toString();
		String dateFormat = VISAConstants.DOB_FORMAT;
		Boolean constFlag = true;
		if (dateObj == null
				|| !dateObj
						.matches("^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\\d\\d$")) {
			constFlag=false;
		}

		SimpleDateFormat sdf = new SimpleDateFormat(dateFormat, Locale.US);
		sdf.setLenient(false);

		try {

			// if not valid, it will throw ParseException
			Date dateToValidate = (Date) sdf.parse(dateObj);
			DateFormat dateFormat1 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
			Date date = new Date();
			Date currDate = (Date) sdf.parse(dateFormat1.format(date));
			if (dateToValidate.after(currDate)) {
				constFlag = false;
			}

		} catch (Exception exception) {
			// Logger.DEBUG(exception.printStackTrace());
			constFlag = false;
		}
		if (!constFlag) {
			context.disableDefaultConstraintViolation();
			context.buildConstraintViolationWithTemplate(
					"Enter a valid date in the format dd/mm/yyyy.")
					.addNode(dateEntered).addConstraintViolation();
		}

		return constFlag;
	}

	public void setDateEntered(String dateEntered) {
		this.dateEntered = dateEntered;
	}

}
