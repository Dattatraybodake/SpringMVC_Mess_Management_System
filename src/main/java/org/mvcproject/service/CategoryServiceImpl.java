package org.mvcproject.service;

import java.util.List;

import org.mvcproject.model.Category;
import org.mvcproject.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class CategoryServiceImpl  implements CategoryService{
	@Autowired
	CategoryRepository categoryRepo;
	@Override
	public boolean addcategory(Category category) {
		return categoryRepo.addcategory(category);
	}
	@Override
	public List<Category> getAllcategory() {
		// TODO Auto-generated method stub
		return categoryRepo.getAllcategories();
	}

}
