// Author: Peeranut Ngaorungsri
// Copyright 2015 <nutteen@gmail.com>

package th.co.grouplease.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;

import th.co.grouplease.Account;
import th.co.grouplease.dao.AccountDao;
import th.co.grouplease.filter.AccountFilterForm;

@Service
@Transactional(readOnly = true)
public class AccountServiceImpl implements AccountService{
	
	@Inject private AccountDao accountDao;
	
	@Transactional(readOnly = false)
	public boolean registerAccount(
			Account account, String password, Errors errors){
		validateUsername(account.getUsername(), errors);
		boolean valid = !errors.hasErrors();
		
		if(valid)
			accountDao.create(account, password); 
		
		return valid;
	}

	// Checks for duplicate usernames
	private void validateUsername(String username, Errors errors) {
		if(accountDao.findByUsername(username) != null){
			errors.rejectValue("username", "error.duplicate",
					new String[] { username }, null);
		}
	}
	
	@Transactional(readOnly = true)
	public List<Account> getAllAccounts()
	{
		return accountDao.getAll();
	}
	
	@Transactional(readOnly = true)
	public List<Account> getAccountsByFilter(AccountFilterForm filterForm)
	{
		return accountDao.findByFilter(filterForm);
	}

}
