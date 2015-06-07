package th.co.grouplease;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import th.co.grouplease.service.AccountService;

@Controller
public class AccountViewController {
	
	private static final String VN_INDEX = "index";
	
	private static final Logger log = LoggerFactory.getLogger(AccountController.class);
	
	private AccountService accountService;
	
	// DI - setter
	@Autowired
	public void setAccountService(AccountService accountService){
		this.accountService = accountService;
	}
	
	@RequestMapping(value = "/")
	public String getAndRenderAccounts(Model model){
		
		// Get all accounts in the database
		List<Account> accounts = accountService.getAllAccounts();
		
		log.info("All accounts in database");
		
		for(Account account : accounts)
		{
			log.info("Id: " + account.getId() + " Name: " + account.getFullName() + 
					" Email: " + account.getEmail() + " Joined date: " + account.getDateCreated());
		}
		
		model.addAttribute("accounts", accounts);
		
		return VN_INDEX;
	}
}
