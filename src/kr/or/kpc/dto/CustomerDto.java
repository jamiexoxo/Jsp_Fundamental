package kr.or.kpc.dto;

public class CustomerDto {
	
	   private String email;
	   private String pwd;
	   private String name;
	public CustomerDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CustomerDto(String email, String pwd, String name) {
		super();
		this.email = email;
		this.pwd = pwd;
		this.name = name;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public String getPwd() {
		return pwd;
	}
	public String getName() {
		return name;
	}
	 
	    
	   
     }
