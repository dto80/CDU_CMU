// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.cmucdu.ecommerce.domain.product;

import edu.cmucdu.ecommerce.domain.product.Product;
import edu.cmucdu.ecommerce.domain.product.ProductPic;
import edu.cmucdu.ecommerce.domain.product.SellerProduct;
import edu.cmucdu.ecommerce.domain.util.Description;
import java.util.Set;

privileged aspect Product_Roo_JavaBean {
    
    public Description Product.getName() {
        return this.name;
    }
    
    public void Product.setName(Description name) {
        this.name = name;
    }
    
    public Description Product.getDescription() {
        return this.description;
    }
    
    public void Product.setDescription(Description description) {
        this.description = description;
    }
    
    public Set<SellerProduct> Product.getSellers() {
        return this.sellers;
    }
    
    public void Product.setSellers(Set<SellerProduct> sellers) {
        this.sellers = sellers;
    }
    
    public Set<ProductPic> Product.getImages() {
        return this.images;
    }
    
    public void Product.setImages(Set<ProductPic> images) {
        this.images = images;
    }
    
}
