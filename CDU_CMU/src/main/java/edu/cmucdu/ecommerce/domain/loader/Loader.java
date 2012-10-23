package edu.cmucdu.ecommerce.domain.loader;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import edu.cmucdu.ecommerce.dao.product.ProductDao;
import edu.cmucdu.ecommerce.dao.user.SellerDao;
import edu.cmucdu.ecommerce.domain.product.*;
import edu.cmucdu.ecommerce.domain.user.Seller;
import edu.cmucdu.ecommerce.domain.user.security.Principal;
import edu.cmucdu.ecommerce.domain.util.Description;

/**
 * Preload test data for in-mem db,<br>
 * <a href="http://forum.springsource.org/showthread.php?84312-How-to-store-sample-data/page2">acknowledgement: this technique</a>
 */
@Component
public class Loader implements ApplicationListener<ContextRefreshedEvent>{

	@Autowired
	ProductDao productDao;
	@Autowired
	SellerDao sellerDao;
	
	@Override
	@Transactional
	public void onApplicationEvent(ContextRefreshedEvent event) {
		if (event.getApplicationContext().getParent() != null)
			return;
		
		//Create Seller
		Seller s1 = new Seller();
		s1.setName(new Description("อาร์ท", "art", "Art"));
		s1.setDescription(new Description("พี่อาร์ท", "Chinese p'art", "P'Art"));
		
		sellerDao.save(s1);
		
		// Create Product
//		Product p1 = new Product();
//		p1.setName(new Description("ลำไย", "Chinese lamyai", "langoon"));
//		p1.setDescription(new Description("","",""));
//		productDao.save(p1);
//		Product p2 = new Product();
//		p1.setName(new Description("ทุเรียน", "durian.cn", "durian.en"));
//		p1.setDescription(new Description("","",""));
//		productDao.save(p2);
//		Product p3 = new Product();
//		p1.setName(new Description("มังคุด", "Mungkud", "Mangosteen"));
//		p1.setDescription(new Description("","",""));
//		productDao.save(p3);
		
		//Create Seller Product
//		SellerProduct sp1 = new SellerProduct();
//		sp1.setSeller(s1);
//		Set<Product> productSet1 = new ;
//		productSet1.add(p1);
//		productSet1.add(p3);
//		sp1.setProducts(productSet1);
		
		
		//Create Product Pic
//		ProductPic pic1 = new ProductPic();
//		pic1.setDescription(new Description("pic1.th", "pic1.cn", "pic1.en"));
//		pic1.setProduct(p1);
		
	}
}

