package edu.cmucdu.ecommerce.domain.product;

import edu.cmucdu.ecommerce.domain.util.Description;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaEntity
public class Product {

    @OneToOne
    private Description name;

    @OneToOne
    private Description description;

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<SellerProduct> sellers = new HashSet<SellerProduct>();

    @OneToMany(cascade = CascadeType.ALL, mappedBy="product")
    private Set<ProductPic> images = new HashSet<ProductPic>();
}
