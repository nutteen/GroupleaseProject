// Author: Peeranut Ngaorungsri
// Copyright 2015 <nutteen@gmail.com>

package th.co.grouplease.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import th.co.grouplease.Account;
import th.co.grouplease.AccountController;
import th.co.grouplease.filter.AccountFilterForm;

// Mark as DAO
@Repository
public class HbnAccountDao extends AbstractHbnDao<Account> 
	implements AccountDao{
	
	// JDBC update query
	private static final String UPDATE_PASSWORD_SQL = 
			"update account set password = ? where username = ?";

	@Inject private JdbcTemplate jdbcTemplate;
	
	private static final Logger log = LoggerFactory.getLogger(AccountController.class);
	
	public void create(Account account, String password) {
		create(account);
		jdbcTemplate.update(
				UPDATE_PASSWORD_SQL, password, account.getUsername());
	}

	public Account findByUsername(String username) {
		Query q = getSession().getNamedQuery("findAccountByUsername");
		q.setParameter("username", username);
		return (Account)q.uniqueResult();
	}
	
	@SuppressWarnings("unchecked")
	public List<Account> findByFilter(AccountFilterForm filterForm)
	{
		String id = filterForm.getId();
		String username = filterForm.getUsername();
		String name = filterForm.getName();
		String email = filterForm.getEmail();
		
		String hql = "from " + getDomainClassName() + " as A";
		boolean hasWhere = false;
				
		if(!id.isEmpty())
		{
			hql += (hasWhere) ? " and " : " where ";
			hasWhere = true;
			hql += "A.id = " + id;
		}
		
		if(!username.isEmpty())
		{
			hql += (hasWhere) ? " and " : " where ";
			hasWhere = true;
			hql += "A.username LIKE '%" + username + "%'";
		}
		
		if(!name.isEmpty())
		{
			hql += (hasWhere) ? " and " : " where ";
			hasWhere = true;
			hql += "A.firstName LIKE '%" + name + "%'";
		}
		
		if(!email.isEmpty())
		{
			hql += (hasWhere) ? " and " : " where ";
			hasWhere = true;
			hql += "A.email LIKE '%" + email + "%'";
		}
		
		log.info("HbnAccountDao hql: " + hql);
		
		return getSession().createQuery(hql).list();
	}
}
