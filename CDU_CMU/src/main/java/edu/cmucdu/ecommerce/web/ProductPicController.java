package edu.cmucdu.ecommerce.web;

import edu.cmucdu.ecommerce.domain.product.ProductPic;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/productpics")
@Controller
@RooWebScaffold(path = "productpics", formBackingObject = ProductPic.class)
public class ProductPicController {
}
