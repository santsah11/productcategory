package com.codingdojo.productcategory.repositories;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.productcategory.models.Product;
@Repository
public interface ProductRepo extends CrudRepository<Product ,Long> {

	List<Product> findByIdNotIn(ArrayList<Long> prosId);
	public List<Product> findByNameContaining(String productName);
	
}