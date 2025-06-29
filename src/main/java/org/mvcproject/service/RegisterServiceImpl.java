package org.mvcproject.service;

import org.mvcproject.model.Register;
import org.mvcproject.repository.RegisterRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterServiceImpl implements RegisterService {

	@Autowired
	RegisterRepo regRepo;
	
	@Override
	public boolean isAddRegister(Register register) {
		// TODO Auto-generated method stub
		return regRepo.isAddRegister(register);
	}

}
