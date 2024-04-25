package com.crudapp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import com.crudapp.model.Product;


@Component
public class ProductDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	// Creating Products
	@Transactional
	public void CreateProduct(Product product) {
		hibernateTemplate.save(product);
	}

	// get all products
	public List<Product> getProducts() {
		List<Product> products = hibernateTemplate.loadAll(Product.class);
		return products;
	}

	// delete a single product
	@Transactional
	public void deleteProduct(int pid) {
		Product p = hibernateTemplate.load(Product.class, pid);
		hibernateTemplate.delete(p);
	}

	//update product
	@Transactional
	public void updateProduct(Product product) {
	    hibernateTemplate.update(product);
	}

	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
		
	}
	

}
