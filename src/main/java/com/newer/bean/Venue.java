package com.newer.bean;

public class Venue {
	//1、编写实体类属性
	private int id;
	private String title;
	private String content;
	private String address;
	private String imgsrc;

	
	//2、编写构造方法
	/**
	 * 含所有参数的构造方法
	 * @param id
	 * @param title
	 * @param content
	 * @param address
	 */
	public Venue(int id, String title, String content, String address,String imgsrc) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.address = address;
		this.imgsrc = imgsrc;
	}
	
	/**
	 * 除主键(id)以外的构造方法
	 * @param title
	 * @param content
	 * @param address
	 */
	public Venue(String title, String content, String address,String imgsrc) {
		super();
		this.title = title;
		this.content = content;
		this.address = address;
		this.imgsrc = imgsrc;
	}
	
	/**
	 * 无参数的构造方法
	 */
	public Venue() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getImgsrc() {
		return imgsrc;
	}

	public void setImgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
	}

	/**
	 * toString方法
	 */
	@Override
	public String toString() {
		return "Venue [id=" + id + ", title=" + title + ", content=" + content + ", address=" + address + ", imgsrc="
				+ imgsrc + "]";
	}
}
