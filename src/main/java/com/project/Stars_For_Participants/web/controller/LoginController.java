package com.project.Stars_For_Participants.web.controller;



import javax.validation.Valid;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.Stars_For_Participants.web.bean.LoginBean;
import com.project.Stars_For_Participants.web.bean.RegisterBean;
import com.project.Stars_For_Participants.web.bean.TraineeRequestBean;
import com.project.Stars_For_Participants.web.service.LoginService;
import com.project.Stars_For_Participants.web.validator.RegistrationValidator;


/*Controller class
 It is one of the important class which is used to implement the web application logic.
 And also it is used to contorl the flow of the program.
*/

@Controller
public class LoginController {
	
	//To inject the dependency implicitly. Autowired will be used.
	@Autowired
	private LoginService loginService;
	@Autowired
	private RegistrationValidator validator;
	
	/*
    This method is used to show login page where the people can login into their respective pages.
*/
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String showLoginpage(@ModelAttribute("login") LoginBean login) {

		return "login";

	}
	
	/*
	This method is to authenticate the user and then it will redirect the user to their respective pages if eleigible.
	*/
	
	@RequestMapping(value = "/submitlogin")
    public String checkLoginDetails(@ModelAttribute("login") LoginBean login,ModelMap model,

			BindingResult result) {
		model.addAttribute("trainee", new TraineeRequestBean());
		if(login.getUser().equals("admin")){
		if(loginService.validation(login)){

		return "adminhomepage";
		}
		else
		{
			return "login";
		}
		}
         else if(login.getUser().equals("roles")){
			if(loginService.validation(login)){
				if(login.getUserType().equals("Trainer")){

				return "trainerhomepage";
				}
				if(login.getUserType().equals("Trainee")){

					return "traineehomepage";
					}
				
				}
		}
	
		return "login";
	}
	
	/*
	If the user is new and want to register after clicking the register button they will be redirected to that page.
	*/
	
	@RequestMapping(value="/registrationform", method=RequestMethod.GET)
	public String showRegistrationform(@ModelAttribute("register") RegisterBean registerbean){
		return "registration";
	}
	
	/*
	Validation of the user details if the person matches with the criteria he will be able to register other wise, 
	he need to fill the details as per the criteria.
	*/
	
	@RequestMapping(value="/register")
	  public String performRegistration(@ModelAttribute("register") @Valid RegisterBean  registerBean,ModelMap model, 
			BindingResult result) {
		  validator.validate(registerBean, result);
		  model.addAttribute("login", new LoginBean()); 
		 
		  if(result.hasErrors()){
		   return "registration";
		  }
		  else{
		  return "login";
		  }
	
	}
	@RequestMapping(value="/trainee")
	@ResponseBody
	public String checkTraineepage(@ModelAttribute("trainee") TraineeRequestBean trainee,ModelMap model,BindingResult result){
		model.addAttribute("login", new LoginBean());
		if(result.hasErrors()){
		return "login";
		}
		else 
			return "Request Submitted";
		
	}
	
	@RequestMapping(value="trainerrating")
	public String showTrainerRating(){
		return "trainerrating";
	}
	
}

