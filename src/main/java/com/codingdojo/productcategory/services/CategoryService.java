package com.codingdojo.productcategory.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.productcategory.models.Category;
import com.codingdojo.productcategory.models.Product;
import com.codingdojo.productcategory.repositories.CategoryRepo;
import com.codingdojo.productcategory.repositories.ProductRepo;

@Service
public class CategoryService {

	private final CategoryRepo cr;
	private final ProductRepo pr;

	public CategoryService(CategoryRepo cr, ProductRepo pr) {

		this.cr = cr;
		this.pr = pr;
	}

	public boolean createCategory(Category category) {
		this.cr.save(category);
		return true;
	}

	public Category categoryById(Long id) {
		Optional<Category> optionalCategory = cr.findById(id);
		if (optionalCategory.isPresent()) {
			return optionalCategory.get();
		} else {
			return null;
		}
	}

	public Category findCategoryById(Long id) {
		Optional<Category> cat = cr.findById(id);
		if (cat.isPresent()) {
			return cat.get();
		} else {
			return null;
		}
	}

	public void updateCategory(Category category) {
		cr.save(category);
	}

	public void findAllCategory() {
		List <Category> allcategory = (List<Category>) cr.findAll();
	}

	public List<Category> findProductsNotInCategory(Long id) {
		
		return null;
	}


}
