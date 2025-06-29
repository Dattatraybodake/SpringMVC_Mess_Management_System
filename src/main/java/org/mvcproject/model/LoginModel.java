package org.mvcproject.model;

public class LoginModel {
	private String email;
	private String password;
	public String logintype;
	
	
	public String getLogintype() {
		return logintype;
	}
	public void setLogintype(String logintype) {
		this.logintype = logintype;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	@Override
	public String toString() {
		return "LoginModel [email=" + email + ", password=" + password + ", logintype=" + logintype + "]";
	}
	public boolean equals(Object obj)
	{
		LoginModel m=(LoginModel)obj;
		if(m.email.equals(this.email) && m.password.equals(this.password) && m.getLogintype().equals(this.logintype))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	public int hashCode()
	{
		return email.length()*1000;
	}
}
