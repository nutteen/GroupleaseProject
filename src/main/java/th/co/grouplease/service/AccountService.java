// Author: Peeranut Ngaorungsri
// Copyright 2015 <nutteen@gmail.com>

package th.co.grouplease.service;

import java.util.List;

import org.springframework.validation.Errors;

import th.co.grouplease.Account;
import th.co.grouplease.filter.AccountFilterForm;

public interface AccountService {
	
	boolean registerAccount(Account account, String password, Errors errors);
	
	List<Account> getAllAccounts();
	
	List<Account> getAccountsByFilter(AccountFilterForm filterForm);
}
