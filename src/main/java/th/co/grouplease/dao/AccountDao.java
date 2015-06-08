// Author: Peeranut Ngaorungsri
// Copyright 2015 <nutteen@gmail.com>

package th.co.grouplease.dao;

import java.util.List;

import th.co.grouplease.Account;
import th.co.grouplease.filter.AccountFilterForm;

public interface AccountDao extends Dao<Account> {
	
	void create(Account account, String password);
	
	Account findByUsername(String username);
	
	List<Account> findByFilter(AccountFilterForm filterForm);
}
