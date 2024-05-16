package com.project.Stars_For_Participants.web.bean;

import org.springframework.stereotype.Component;

//PoJo Class for login page


@Component
public class LoginBean {
      private String user;  //type of user wants to login whether admin or user
      private String userId; //used to store user id or login id
      private String password;  //used to store the password
      private String userType;  // if the user is selected, whether the user is an trainer or trainee 
	
	//getters and setters for the above variable
	/* By using this getters and setters we can access the variables and also 
	  we can assign the values for these variables.
	*/
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
}
