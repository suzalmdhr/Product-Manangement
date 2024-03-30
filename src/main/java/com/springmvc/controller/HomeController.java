package com.springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.springmvc.dao.ProductDao;
import com.springmvc.model.Product;

@Controller
public class HomeController {
	@Autowired
	private ProductDao productDao;
	
	
	@RequestMapping("/card_example")
	public String card() {
		
		return "card_example";
	}
	
	@RequestMapping("/")
	public String def(Model m) {
		
		List<Product> prods = productDao.getAllProducts();
		
		
		m.addAttribute("products", prods);
		return "index";
	}
	@RequestMapping("add")
	public String form() {
		
		
		return "add_prod";
	}
	
	
			@RequestMapping(value="/handle-product",method = RequestMethod.POST)
			public RedirectView handle(@ModelAttribute Product product,HttpServletRequest req) {
				
				System.out.println(product);
				
				productDao.create(product);
				RedirectView redirect = new RedirectView();
				redirect.setUrl(req.getContextPath()+"/");
				
				return redirect;
			}
			
			@RequestMapping("/delete/{productId}")
			public RedirectView del(@PathVariable("productId") int productId,HttpServletRequest req) {
				
				productDao.delete(productId);
				
				RedirectView redirect = new RedirectView();
				redirect.setUrl(req.getContextPath()+"/");
				
				return redirect;
				
				
			}
			
				@RequestMapping("/update/{productId}")
				public String updets(@PathVariable("productId") int pid,Model m) {
					
				
					Product prod = productDao.getProd(pid);
					m.addAttribute("prod", prod);
					return "update_form";
				}

}
