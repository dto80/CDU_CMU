package edu.cmucdu.ecommerce.dao.product;

import edu.cmucdu.ecommerce.domain.product.SellerProduct;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = SellerProduct.class)
public interface SellerProductDao {
}
