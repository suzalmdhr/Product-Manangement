package com.springmvc.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.springmvc.model.Product;

@Component
public class ProductDao {

		@Autowired
		private HibernateTemplate hibernateTemplate;
		
		@Transactional
		public void create(Product product) {
			
			this.hibernateTemplate.saveOrUpdate(product);
			
		}
		
		
		public List<Product> getAllProducts(){
			
			List<Product> prods = this.hibernateTemplate.loadAll(Product.class);
			return prods;
		}
		
		@Transactional
		public void update(Product prods) {
			
			this.hibernateTemplate.update(prods);
			
		}
		
		@Transactional
		public void delete(int pid) {
			Product gets = this.hibernateTemplate.load(Product.class,pid);
			
				this.hibernateTemplate.delete(gets);
		}
		
		
			public Product getProd(int pid) {
				Product produ = this.hibernateTemplate.get(Product.class,pid );
				return produ;
			}
		
}
