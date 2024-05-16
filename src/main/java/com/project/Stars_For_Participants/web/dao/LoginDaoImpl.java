/*package com.project.Stars_For_Participants.web.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.project.Stars_For_Participants.web.bean.RegisterBean;

@Repository
public class LoginDaoImpl  implements LoginDao{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	@Override
	public int create(RegisterBean registerbean) {
		String sql="insert into Trainee(user iD,name,dob,gender,contact,password) values('"+registerbean.getUserId()+"','"+registerbean. getFirstName()+"','"+ registerbean.getDate()+"','"+ registerbean.getGender()+"','"+ registerbean.getContactNumber()+"','"+ registerbean.getPassword()+"')";
		/*String sql ="insert into trainee values(?,?,?,?,?,?)";
		int result=jdbc;*/
		//return jdbcTemplate.update(sql);
	//}
	
	//public int loginvalidation(RegisterBean registerbean){
	//	String sql="select user id,password from trainee";
	//	return 0;	
	//}

//}
