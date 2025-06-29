package org.mvcproject.service;

import java.util.List;

import org.mvcproject.model.Category;


public interface CategoryService {
	public boolean addcategory(Category category);
	public List<Category> getAllcategory();
}
