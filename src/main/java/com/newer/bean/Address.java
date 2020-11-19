package com.newer.bean;

public class Address {
	// 属性
	private int id;
	private String nickname;
	private String telephone;
	private String address;
	private int uid;

	// 构造方法
	// 注意：一般会生成三个构造方法
	// 1、不带任何参数的
	public Address() {
		super();
	}

	// 2、带所有参数的
	public Address(int id, String nickname, String telephone, String address, int uid) {
		super();
		this.id = id;
		this.nickname = nickname;
		this.telephone = telephone;
		this.address = address;
		this.uid = uid;
	}

	// 3、带除了主键以外的其他属性
	public Address(String nickname, String telephone, String address, int uid) {
		super();
		this.nickname = nickname;
		this.telephone = telephone;
		this.address = address;
		this.uid = uid;
	}

	// 对应的getXXX和setXXX
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	// 重写toString()
	@Override
	public String toString() {
		return "Address [id=" + id + ", nickname=" + nickname + ", telephone=" + telephone + ", address=" + address
				+ ", uid=" + uid + "]";
	}
}
