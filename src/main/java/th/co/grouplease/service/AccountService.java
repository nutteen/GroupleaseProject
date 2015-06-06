package th.co.grouplease.service;

import org.springframework.validation.Errors;

import th.co.grouplease.Account;

public interface AccountService {
	boolean registerAccount(
			Account account, String password, Errors errors);
}
