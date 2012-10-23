// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.cmucdu.ecommerce.web;

import edu.cmucdu.ecommerce.dao.product.PromotionDao;
import edu.cmucdu.ecommerce.dao.product.SellerProductDao;
import edu.cmucdu.ecommerce.domain.product.Promotion;
import edu.cmucdu.ecommerce.web.PromotionController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect PromotionController_Roo_Controller {
    
    @Autowired
    PromotionDao PromotionController.promotionDao;
    
    @Autowired
    SellerProductDao PromotionController.sellerProductDao;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String PromotionController.create(@Valid Promotion promotion, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, promotion);
            return "promotions/create";
        }
        uiModel.asMap().clear();
        promotionDao.save(promotion);
        return "redirect:/promotions/" + encodeUrlPathSegment(promotion.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String PromotionController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Promotion());
        return "promotions/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String PromotionController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("promotion", promotionDao.findOne(id));
        uiModel.addAttribute("itemId", id);
        return "promotions/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String PromotionController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("promotions", promotionDao.findAll(new org.springframework.data.domain.PageRequest(firstResult / sizeNo, sizeNo)).getContent());
            float nrOfPages = (float) promotionDao.count() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("promotions", promotionDao.findAll());
        }
        return "promotions/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String PromotionController.update(@Valid Promotion promotion, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, promotion);
            return "promotions/update";
        }
        uiModel.asMap().clear();
        promotionDao.save(promotion);
        return "redirect:/promotions/" + encodeUrlPathSegment(promotion.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String PromotionController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, promotionDao.findOne(id));
        return "promotions/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String PromotionController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Promotion promotion = promotionDao.findOne(id);
        promotionDao.delete(promotion);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/promotions";
    }
    
    void PromotionController.populateEditForm(Model uiModel, Promotion promotion) {
        uiModel.addAttribute("promotion", promotion);
        uiModel.addAttribute("sellerproducts", sellerProductDao.findAll());
    }
    
    String PromotionController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}