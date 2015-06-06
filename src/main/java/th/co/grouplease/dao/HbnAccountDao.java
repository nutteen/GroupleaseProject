package th.co.grouplease.dao;

import javax.inject.Inject;
import org.hibernate.Query;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import th.co.grouplease.Account;

// Mark ass DAO
@Repository
public class HbnAccountDao extends AbstractHbnDao<Account> 
	implements AccountDao{
	
	// JDBC update query
	private static final String UPDATE_PASSWORD_SQL = 
			"update account set password = ? where username = ?";

	@Inject private JdbcTemplate jdbcTemplate;
	
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
	
}
