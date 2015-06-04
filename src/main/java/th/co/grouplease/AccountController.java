package th.co.grouplease;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/users")
public class AccountController {
	private static final Logger log = LoggerFactory.getLogger(AccountController.class);

	@RequestMapping(value = "new", method = RequestMethod.GET)
	public String getRegistrationForm(Model model){
		model.addAttribute("account", new AccountForm());
		return "users/registrationForm";
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public String postRegistrationForm(AccountForm form) {
		log.info("Created registration: {}", form);
		return "redirect:registration_ok";
	}
}
