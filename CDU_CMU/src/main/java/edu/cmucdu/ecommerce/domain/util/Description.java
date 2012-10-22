package edu.cmucdu.ecommerce.domain.util;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaEntity
public class Description {
	String thaiDesc;
	String chineseDesc;
	String englishDesc;
}
