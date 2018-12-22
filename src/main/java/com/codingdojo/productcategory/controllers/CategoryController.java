package com.codingdojo.productcategory.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.productcategory.models.Category;
import com.codingdojo.productcategory.models.Product;
import com.codingdojo.productcategory.services.CategoryService;
import com.codingdojo.productcategory.services.ProductService;

@Controller
public class CategoryController {

	private final CategoryService cs;
	private final ProductService ps;

	public CategoryController(CategoryService cs, ProductService ps) {

		this.cs = cs;
		this.ps = ps;
	}

	@GetMapping("/categories/new")
	public String newProduct(@ModelAttribute("category") Category product) {
		System.out.println("Product Controller newproduct()");
		System.out.println("ProductsController > newProduct()");
		return "/category/new.jsp";
	}

	@PostMapping("/createnew/category")
	public String createCategory(@Valid @ModelAttribute("category") Category category, BindingResult result) {
		System.out.println("Category Controller > POST createCategory() ");
		if (result.hasErrors()) {
			return "/category/new.jsp";
		} else {
			this.cs.createCategory(category);
			return "redirect:/categories/new";
		}
	}

	@GetMapping("/categories/{id}")
	public String showCategory(@PathVariable("id") Long id, Model model) {
		System.out.println("Product Controller show category will show the categor on th page");
		Category databaseCategory = cs.categoryById(id);
		model.addAttribute("databaseCategory", databaseCategory);
		List<Product> otherProducts = ps.findProductsNotInCategory(id);
		model.addAttribute("otherProducts", otherProducts);
		System.out.println(otherProducts);

		return "/category/show.jsp";

	}
		// adding to the category in the database;
	@PostMapping("/categories/{id}/add")
	public String addPro(@PathVariable("id") Long id, @RequestParam("newProduct") Long proId) {
		Category category = cs.findCategoryById(id);
		Product product = ps.findProductById(proId);
		List<Product> proList = category.getProducts();
		proList.add(product);
		category.setProducts(proList);
		cs.updateCategory(category);
		return "redirect:/categories/" + id;
	}
	
	@GetMapping("/products/{id}")
	public String showProducts(@PathVariable("id") Long id, Model model) {
		System.out.println("Product Controller show category will show the categor on th page");
		Product dbProdcut = ps.findProductById(id);
		model.addAttribute("dbProdcut", dbProdcut);
		
//		List<Category> otherCategories = cs.findProductsNotInCategory(id);
//		model.addAttribute("otherProducts", otherProducts);
//		System.out.println(otherProducts);

		return "/products/show.jsp";

	}

}
