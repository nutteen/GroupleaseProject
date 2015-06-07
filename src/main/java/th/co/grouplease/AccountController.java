// Author: Peeranut Ngaorungsri
// Copyright 2015 <nutteen@gmail.com>

package th.co.grouplease;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import th.co.grouplease.service.AccountService;

@Controller
@RequestMapping("/users")
public class AccountController {
	
	private static final String VN_REG_FORM = "users/registrationForm";
	private static final String VN_REG_OK = "redirect:registration_ok";
	
	private static final Logger log = LoggerFactory.getLogger(AccountController.class);

	private AccountService accountService;
	
	// DI - setter
	@Autowired
	public void setAccountService(AccountService accountService){
		this.accountService = accountService;
	}
	
	// Tells Spring Web MVC to call this method when initializing the WebDataBinder
	// which responsible for binding HTTP parameters to form beans.
	// This prevents hackers to inject data into form bean properties that-
	// aren't intended to be accessed via the HTML form. (Spring automatically binds HTML forms-
	// to an underlying form bean).
	@InitBinder
	public void initBinder(WebDataBinder binder){
		binder.setAllowedFields(new String[] {
			"username", "password", "confirmPassword", "firstName",
			"lastName", "email", "marketingOk", "acceptTerms"
		});
	}
	
	@RequestMapping(value = "new", method = RequestMethod.GET)
	public String getRegistrationForm(Model model){
		model.addAttribute("account", new AccountForm());
		return VN_REG_FORM;
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public String postRegistrationForm(
			@ModelAttribute("account") @Valid AccountForm form, 
			BindingResult result) {
		
		log.info("Created registration: {}", form);
		
		convertPasswordError(result);
		
		accountService.registerAccount(
				toAccount(form), form.getPassword(), result);
		
		return (result.hasErrors() ? VN_REG_FORM : VN_REG_OK);
	}
	
	private static void convertPasswordError(BindingResult result){
		for(ObjectError error : result.getGlobalErrors()){
			String msg = error.getDefaultMessage();
			if("account.password.mismatch.message".equals(msg) && !result.hasFieldErrors("password"))
				result.rejectValue("password", "error.mismatch");
		}
	}
	
	private static Account toAccount(AccountForm form){
		Account account = new Account();
		account.setUsername(form.getUsername());
		account.setFirstName(form.getFirstName());
		account.setLastName(form.getLastName());
		account.setEmail(form.getEmail());
		account.setMarketingOk(form.isMarketingOk());
		account.setAcceptTerms(form.getAcceptTerms());
		account.setEnabled(true);
		return account;
	}
}
