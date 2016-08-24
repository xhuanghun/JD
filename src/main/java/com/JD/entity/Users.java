package com.JD.entity;

public class Users {

	private String account; //用户账号
	private String passwd; //用户密码
	private String saltkey; //盐值
	private String userName;//用户名称
	
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getSaltkey() {
		return saltkey;
	}
	public void setSaltkey(String saltkey) {
		this.saltkey = saltkey;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
}
