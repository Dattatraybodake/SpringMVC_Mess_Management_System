package org.mvcproject.repository;

import java.util.List;

import org.mvcproject.model.Category;

public interface CategoryRepository {
	public boolean addcategory(Category category);
	public List<Category> getAllcategories();


}
