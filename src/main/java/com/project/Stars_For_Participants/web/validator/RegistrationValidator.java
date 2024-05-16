package com.project.Stars_For_Participants.web.validator;



import org.springframework.validation.Validator;
import com.project.Stars_For_Participants.web.bean.RegisterBean;


import java.time.LocalDate;
import java.time.Period;

import java.time.format.DateTimeFormatter;


import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;



@Component
public class RegistrationValidator implements Validator{

	public void validate(Object obj, Errors error) {
		RegisterBean registerbean=(RegisterBean) obj;
		String phone=registerbean.getContactNumber();
		String firstName=registerbean.getFirstName();
		String lastName=registerbean.getLastName();
		String skills=registerbean.getSkills();
		
		String password=registerbean.getPassword();
		String date=registerbean.getDate();
		
		
		try {
			String[] totalskills=skills.split(",");
			LocalDate localDate = LocalDate.parse(date, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			Period period = Period.between(localDate, LocalDate.now());
			int years = period.getYears();
			if(!(totalskills.length<=1 && totalskills.length<=5)){
				error.rejectValue("skills","error.skills","Skills must be between 1 to 5 only");
			}
			if(years<18){
				error.rejectValue("date","error.date","Age should be above 18");
			}
		} catch(Exception e) {
		
		}
		if(!(phone.length()==10))
		{
			error.rejectValue("contactNumber","error.contactNumber","Conatact Number should be of 10 digits/ Contact Number should not be blank");
		}
		if(!(firstName.length()>=4||firstName.length()>=50))
		{
			error.rejectValue("firstName","error.firstName","First Name must be between 4 to 50 Characters");
		}
		if(!(lastName.length()>=4||lastName.length()>=50))
		{
			error.rejectValue("lastName","error.lastName","Last Name must be between 4 to 50 Characters");
		}
		
		if(!(password.matches("[$@#^&*!]{1}[a-zA-Z]{5,}"))){
			error.rejectValue("password","error.password","Password must atleast contains 1 special character and length should be mininmum of 6 characters");		}
		
		
	}

	
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

}

