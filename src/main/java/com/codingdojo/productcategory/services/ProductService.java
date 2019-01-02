package com.codingdojo.productcategory.services;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.productcategory.models.Category;
import com.codingdojo.productcategory.models.Product;
import com.codingdojo.productcategory.repositories.CategoryRepo;
import com.codingdojo.productcategory.repositories.ProductRepo;

@Service
public class ProductService {
	private final ProductRepo pr;
	private final CategoryRepo cr;

	public ProductService(ProductRepo pr, CategoryRepo cr) {
		this.pr = pr;
		this.cr = cr;
	}

	public boolean createProduct(Product product) {
		this.pr.save(product);
		return true;
	}

	public List<Product> findProductsNotInCategory(Long id) {
		Optional<Category> optionalCategory = cr.findById(id);
		if (optionalCategory.isPresent()) {
			Category category = optionalCategory.get();
			ArrayList<Long> prosId = new ArrayList<>();

			for (Product pro : category.getProducts()) {
				prosId.add(pro.getId());
			}
			return pr.findByIdNotIn(prosId);
		} else {
			return null;
		}
	}

	public Product findProductById(Long proId) {
		Optional<Product> product = pr.findById(proId);
		if (product.isPresent()) {
			return product.get();
		} else {
			return null;
		}
	}

	// Find the Product by iD
	public Product productById(Long id) {

		return null;
	}

	// find all the product for home page
	public List<Product> allProduct() {
		return (List<Product>) pr.findAll();
	}
	
	public List<Product> getProductsByName(String productName) {
		List<Product> products = this.pr.findByNameContaining(productName);
		System.out.println("Products (inService: " + products);
		return products;
	}



}
