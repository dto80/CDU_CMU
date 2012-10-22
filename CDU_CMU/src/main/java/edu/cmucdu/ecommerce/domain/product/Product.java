package edu.cmucdu.ecommerce.domain.product;

import edu.cmucdu.ecommerce.domain.util.Description;

import javax.persistence.ManyToOne;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaEntity
public class Product {

    @ManyToOne
    private Description name;
}
