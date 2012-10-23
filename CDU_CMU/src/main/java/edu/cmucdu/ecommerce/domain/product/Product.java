package edu.cmucdu.ecommerce.domain.product;

import edu.cmucdu.ecommerce.domain.util.Description;
import edu.cmucdu.ecommerce.domain.util.LocaleEnum;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Transient;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaEntity
public class Product {

    @OneToOne(cascade= CascadeType.ALL)
    private Description name;

    @OneToOne(cascade = CascadeType.ALL)
    private Description description;

    @OneToMany(cascade = CascadeType.ALL, mappedBy="product")

    private Set<SellerProduct> sellers = new HashSet<SellerProduct>();

    @OneToMany(cascade = CascadeType.ALL, mappedBy="product")
    private Set<ProductPic> images = new HashSet<ProductPic>();

}
