package com.codingdojo.productcategory.repositories;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.productcategory.models.Category;
import com.codingdojo.productcategory.models.Product;
@Repository
public interface CategoryRepo extends CrudRepository<Category,Long> {

}
