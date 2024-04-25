package com.crudapp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crudapp.dao.ProductDao;
import com.crudapp.model.Product;

@Controller
public class MyController {
	@Autowired
	public ProductDao pd;

	@RequestMapping("/")
	public String testMethod(Model m) {
		List<Product> products = pd.getProducts();
		m.addAttribute("product", products);
		return "home";
	}

//	 Showing add product form
	@RequestMapping("addproduct")
	public String showForm() {
		return "add_product_form";
	}

	// handling product form
	@RequestMapping(value = "/handleproduct", method = RequestMethod.POST)
	public String handleProduct(@ModelAttribute Product product) {
		System.out.println(product);
		pd.CreateProduct(product);
		return "redirect:/";
	}

	// handler to delete
	@RequestMapping("/deleteProduct/{productId}")
	public String deleteproduct(@PathVariable("productId") int productid) {
		this.pd.deleteProduct(productid);
		return "redirect:/";
	}

	@RequestMapping("/update")
	public String update(@RequestParam("productId") String productId, Model model) {
		model.addAttribute("id", productId);
		System.out.println("Testing....  " + productId);
		return "update_product";
	}

	// handler to update product
	// Handle product update
	@RequestMapping("/leoleo")
	public String updateProduct(@ModelAttribute Product product) {
		System.out.println("Testing 2......");
		pd.updateProduct(product);
		return "redirect:/";
	}

}
