// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.cmucdu.ecommerce.domain.product;

import edu.cmucdu.ecommerce.dao.product.PromotionDao;
import edu.cmucdu.ecommerce.domain.product.PromotionDataOnDemand;
import edu.cmucdu.ecommerce.domain.product.PromotionIntegrationTest;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PromotionIntegrationTest_Roo_IntegrationTest {
    
    declare @type: PromotionIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: PromotionIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: PromotionIntegrationTest: @Transactional;
    
    @Autowired
    private PromotionDataOnDemand PromotionIntegrationTest.dod;
    
    @Autowired
    PromotionDao PromotionIntegrationTest.promotionDao;
    
    @Test
    public void PromotionIntegrationTest.testCount() {
        Assert.assertNotNull("Data on demand for 'Promotion' failed to initialize correctly", dod.getRandomPromotion());
        long count = promotionDao.count();
        Assert.assertTrue("Counter for 'Promotion' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void PromotionIntegrationTest.testFind() {
        Promotion obj = dod.getRandomPromotion();
        Assert.assertNotNull("Data on demand for 'Promotion' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Promotion' failed to provide an identifier", id);
        obj = promotionDao.findOne(id);
        Assert.assertNotNull("Find method for 'Promotion' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Promotion' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void PromotionIntegrationTest.testFindAll() {
        Assert.assertNotNull("Data on demand for 'Promotion' failed to initialize correctly", dod.getRandomPromotion());
        long count = promotionDao.count();
        Assert.assertTrue("Too expensive to perform a find all test for 'Promotion', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Promotion> result = promotionDao.findAll();
        Assert.assertNotNull("Find all method for 'Promotion' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Promotion' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void PromotionIntegrationTest.testFindEntries() {
        Assert.assertNotNull("Data on demand for 'Promotion' failed to initialize correctly", dod.getRandomPromotion());
        long count = promotionDao.count();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Promotion> result = promotionDao.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
        Assert.assertNotNull("Find entries method for 'Promotion' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Promotion' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void PromotionIntegrationTest.testFlush() {
        Promotion obj = dod.getRandomPromotion();
        Assert.assertNotNull("Data on demand for 'Promotion' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Promotion' failed to provide an identifier", id);
        obj = promotionDao.findOne(id);
        Assert.assertNotNull("Find method for 'Promotion' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyPromotion(obj);
        Integer currentVersion = obj.getVersion();
        promotionDao.flush();
        Assert.assertTrue("Version for 'Promotion' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void PromotionIntegrationTest.testSaveUpdate() {
        Promotion obj = dod.getRandomPromotion();
        Assert.assertNotNull("Data on demand for 'Promotion' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Promotion' failed to provide an identifier", id);
        obj = promotionDao.findOne(id);
        boolean modified =  dod.modifyPromotion(obj);
        Integer currentVersion = obj.getVersion();
        Promotion merged = promotionDao.save(obj);
        promotionDao.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'Promotion' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void PromotionIntegrationTest.testSave() {
        Assert.assertNotNull("Data on demand for 'Promotion' failed to initialize correctly", dod.getRandomPromotion());
        Promotion obj = dod.getNewTransientPromotion(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Promotion' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Promotion' identifier to be null", obj.getId());
        promotionDao.save(obj);
        promotionDao.flush();
        Assert.assertNotNull("Expected 'Promotion' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void PromotionIntegrationTest.testDelete() {
        Promotion obj = dod.getRandomPromotion();
        Assert.assertNotNull("Data on demand for 'Promotion' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Promotion' failed to provide an identifier", id);
        obj = promotionDao.findOne(id);
        promotionDao.delete(obj);
        promotionDao.flush();
        Assert.assertNull("Failed to remove 'Promotion' with identifier '" + id + "'", promotionDao.findOne(id));
    }
    
}
