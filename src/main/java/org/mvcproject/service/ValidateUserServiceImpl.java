package org.mvcproject.service;

import org.mvcproject.model.LoginModel;
import org.mvcproject.repository.ValidateUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ValidateUserServiceImpl implements ValidateUserservice {

	@Autowired
	ValidateUserRepository repository;

	@Override
	public Boolean isValidateUser(LoginModel model) {

		return repository.isValidate(model);
	}

}
