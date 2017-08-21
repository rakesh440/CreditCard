package com.visa.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.visa.backing.bean.Address;
import com.visa.backing.bean.VisaApplication;
import com.visa.bean.validators.ApplicationValidator;
import com.visa.constants.VISAConstants;
import com.visa.service.VisaService;
import com.visa.service.VisaServiceImpl;

@Controller
@SessionAttributes("visaApplication")
public class VisaApplicationController {

	@Autowired
	ApplicationValidator applicationValidator;

	/**
	 * This method would display the jsp page.
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/getVisaApplicationForm", method = RequestMethod.GET)
	public String setUpForm(Model model) {
		VisaApplication visaApplication = new VisaApplication();
		Address address = new Address();
		visaApplication.setAddress(address);
		model.addAttribute("visaApplication", visaApplication);
		return "applicationForm";
	}

	/**
	 * This method would save the jsp page if any error wud redirect to same jsp
	 * page.
	 * 
	 * @param request
	 * @param response
	 * @param visaApplication
	 * @param bindingResult
	 * @param status
	 * @return
	 */
	@RequestMapping(value = "/getVisaApplicationForm", method = RequestMethod.POST)
	public String submitVisaApplication(HttpServletRequest request,
			HttpServletResponse response,
			@ModelAttribute("visaApplication") VisaApplication visaApplication,
			BindingResult bindingResult, SessionStatus status,
			@RequestParam("_page") String currentPage, Model model) {

		String pageToLoad = VISAConstants.VISAApplicationPages.HOME.getDecode();

		if (request.getParameter("target_home") != null) {
			status.setComplete();
			pageToLoad = VISAConstants.VISAApplicationPages.HOME.getDecode();
		} else {
			applicationValidator.validate(applicationValidator, bindingResult);
			if (bindingResult.hasErrors()) {
				pageToLoad = "applicationForm";
			} else {
				Map<Integer, String> pageForms = new HashMap<Integer, String>();
				pageForms.put(
						VISAConstants.VISAApplicationPages.APP_FORM.getCode(),
						"applicationForm");
				pageForms.put(
						VISAConstants.VISAApplicationPages.REV_APP.getCode(),
						"reviewApplication");
				pageForms
						.put(VISAConstants.VISAApplicationPages.APP_STATUS
								.getCode(), "applicationStatus");

				if (request.getParameter("target_submit") != null) {

					VisaService visaService=new VisaServiceImpl();
					visaService.startTheVisaProcess(visaApplication);

					request.setAttribute("status",
							VISAConstants.VISAApplicationStatus.ISSUED
									.getDecode());
					status.setComplete();
					pageToLoad = "applicationStatus";
				} else if (request.getParameter("target_back") != null) {
					if (currentPage
							.equals(VISAConstants.VISAApplicationPages.REV_APP
									.getDecode())) {
						pageToLoad = pageForms
								.get(VISAConstants.VISAApplicationPages.REV_APP
										.getCode() - 1);
					}
				} else if (request.getParameter("target_continue") != null) {
					if (currentPage
							.equals(VISAConstants.VISAApplicationPages.APP_FORM
									.getDecode())) {
						pageToLoad = pageForms
								.get(VISAConstants.VISAApplicationPages.APP_FORM
										.getCode() + 1);
					}
				}
			}
		}
		return pageToLoad;
	}
}
