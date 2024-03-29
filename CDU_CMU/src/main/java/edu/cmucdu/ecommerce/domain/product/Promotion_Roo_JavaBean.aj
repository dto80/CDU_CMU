// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.cmucdu.ecommerce.domain.product;

import edu.cmucdu.ecommerce.domain.product.Promotion;
import edu.cmucdu.ecommerce.domain.product.SellerProduct;
import edu.cmucdu.ecommerce.domain.util.Description;
import java.util.Date;

privileged aspect Promotion_Roo_JavaBean {
    
    public SellerProduct Promotion.getProduct() {
        return this.product;
    }
    
    public void Promotion.setProduct(SellerProduct product) {
        this.product = product;
    }
    
    public Description Promotion.getDescription() {
        return this.description;
    }
    
    public void Promotion.setDescription(Description description) {
        this.description = description;
    }
    
    public double Promotion.getPercentDiscount() {
        return this.percentDiscount;
    }
    
    public void Promotion.setPercentDiscount(double percentDiscount) {
        this.percentDiscount = percentDiscount;
    }
    
    public double Promotion.getAbsoluteDiscount() {
        return this.absoluteDiscount;
    }
    
    public void Promotion.setAbsoluteDiscount(double absoluteDiscount) {
        this.absoluteDiscount = absoluteDiscount;
    }
    
    public Date Promotion.getStartDate() {
        return this.startDate;
    }
    
    public void Promotion.setStartDate(Date startDate) {
        this.startDate = startDate;
    }
    
    public Date Promotion.getStopDate() {
        return this.stopDate;
    }
    
    public void Promotion.setStopDate(Date stopDate) {
        this.stopDate = stopDate;
    }
    
}
