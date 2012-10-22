package edu.cmucdu.ecommerce.domain.product;

import javax.persistence.OneToOne;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;

import edu.cmucdu.ecommerce.domain.util.Description;

@RooJavaBean
@RooToString
@RooJpaEntity
public class Promotion {
	
	@OneToOne
	private SellerProduct product;
	
	@OneToOne
	private Description description;
	
	private double percentDiscount;
	private double absoluteDiscount;
	
}
