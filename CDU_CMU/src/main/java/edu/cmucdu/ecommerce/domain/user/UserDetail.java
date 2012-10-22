package edu.cmucdu.ecommerce.domain.user;

import javax.persistence.OneToOne;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;

import edu.cmucdu.ecommerce.domain.user.security.Principal;

@RooJavaBean
@RooToString
@RooJpaEntity(inheritanceType = "TABLE_PER_CLASS")
public abstract class UserDetail {
	/**
	 * the username and password of the user
	 */
	@OneToOne
	private Principal principle; 
}
