package th.co.grouplease;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import th.co.grouplease.filter.AccountFilterForm;
import th.co.grouplease.service.AccountService;

@Controller
public class AccountViewController {
	
	private static final String VN_INDEX = "index";
	
	private AccountService accountService;
	
	// DI - setter
	@Autowired
	public void setAccountService(AccountService accountService){
		this.accountService = accountService;
	}
	
	@RequestMapping(value = "/")
	public String getAndRenderAccounts(Model model){
		
		model.addAttribute("filter", new AccountFilterForm());
		
		// Get all accounts in the database, and store in accounts
		model.addAttribute("accounts", accountService.getAllAccounts());
		
		return VN_INDEX;
	}
	
	@RequestMapping(value = "/filter", method = RequestMethod.POST)
	public String getAndRenderFilteredAccounts(Model model,
			@ModelAttribute("filter") @Valid AccountFilterForm form,
			BindingResult result){
		
		// Get all accounts in the database, and store in accounts
		model.addAttribute("accounts", accountService.getAccountsByFilter(form));
		
		return VN_INDEX;
	}
}
