package com.visa.bean.validators;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.visa.backing.bean.VisaApplication;

@Component
public class ApplicationValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return VisaApplication.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "firstName.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "lastName.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "licenseNumber", "licenseNumber.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "email.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nationality", "nationality.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "gender", "gender.required");	
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "dob", "dob.required");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address.addressLineOne", "addressLineOne.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address.addressLineTwo", "addressLineTwo.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address.city", "city.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address.state", "state.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address.country", "country.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address.zipcode", "zipcode.required");		
	}
}


