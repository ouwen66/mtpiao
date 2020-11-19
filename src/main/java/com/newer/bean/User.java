package com.newer.bean;

/**
 * 实体类，对应的是tb_user表
 * @author Administrator
 *
 */
public class User {
	private int id;
	private String realname;
	private String username;
	private String sex;
	private String birthday;
	private String cardid;
	private String pwd;
	private int age;
	private String address;
	private String city;

	public User() {
		super();
	}

	public User(int id, String username, String sex, String birthday, String cardid, String pwd, int age, String address,String city,String realname) {
		super();
		this.id = id;
		this.username = username;
		this.sex = sex;
		this.birthday = birthday;
		this.cardid = cardid;
		this.pwd = pwd;
		this.age = age;
		this.address = address;
		this.city = city;
		this.realname = realname;
	}



	public User(String username, String sex, String birthday, String cardid, String pwd, int age, String address,String city,String realname) {
		super();
		this.username = username;
		this.sex = sex;
		this.birthday = birthday;
		this.cardid = cardid;
		this.pwd = pwd;
		this.age = age;
		this.address = address;
		this.city = city;
		this.realname = realname;
	}

	public User(String username, String pwd) {
		super();
		this.username = username;
		this.pwd = pwd;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	
	
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getCardid() {
		return cardid;
	}

	public void setCardid(String cardid) {
		this.cardid = cardid;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", realname=" + realname + ", username=" + username + ", sex=" + sex + ", birthday="
				+ birthday + ", cardid=" + cardid + ", pwd=" + pwd + ", age=" + age + ", address=" + address + ", city="
				+ city + "]";
	}
}
