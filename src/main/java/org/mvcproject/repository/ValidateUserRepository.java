package org.mvcproject.repository;

import org.mvcproject.model.LoginModel;

public interface ValidateUserRepository {
	public boolean isValidate(LoginModel model);
}
