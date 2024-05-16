package com.project.Stars_For_Participants.web.bean;

import org.springframework.stereotype.Component;

//POJO calss for Registration page

@Component
public class RegisterBean {
	
        //variables to store the values entered in the registration form
	
	private String roleType;//whether the user is trainee or trainer
	private String firstName;//to store first name of the user
	private String lastName;//to store last name of the user
	private String date;//to store date of birth of the user
	private String gender;//gender of the user
	private String contactNumber;//to store contact number of the user
	private String userId; //to store the userid
	private String password; //password of the user
	private String skills;//If the user is trainer then he is able to fill this part.
        
	//getters and setters for the above variable
	/* By using this getters and setters we can access the variables and also 
	  we can assign the values for these variables.
	*/
	
	public String getRoleType() {
		return roleType;
	}

	public void setRoleType(String roleType) {
		this.roleType = roleType;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
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

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}
	
	@Override
	public String toString() {
		return "RegisterBean [roleType=" + roleType + ", firstName=" + firstName + ", lastName=" + lastName + ", date="
				+ date + ", gender=" + gender + ", contactNumber=" + contactNumber + ", userId=" + userId
				+ ", password=" + password + ", skills=" + skills + "]";
	}
	

}

