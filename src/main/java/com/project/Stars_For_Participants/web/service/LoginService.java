package com.project.Stars_For_Participants.web.service;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.project.Stars_For_Participants.web.bean.LoginBean;

@Service
public class LoginService {

	/*
	This method is used to validate the credentails of te user which will be provided during their login.
	if the user is valid he is able to login otherwise he is not able to login.
	*/
	
	public boolean validation(LoginBean bean)	{
		if(bean.getUser().equals("admin")){
		if(bean.getUserId().equals(bean.getPassword())) {
			return true;
		}
		
	}
		else if(bean.getUser().equals("roles")){
			if(bean.getUserId().equals(bean.getPassword())) {
				return true;
			}
		}
		return false;
	}

}
