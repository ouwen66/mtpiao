package com.newer.bean;

import java.sql.Date;

public class Goods {
	private int id;
	private String gname;
	private String imgsrc;
	private float price;
	private int num;
	private int salestate;
	private Date showtime;
	private String showaddress;
	private String gtype;
	private int hot;
	
	//构造方法
	public Goods(String gname, String imgsrc, float price, int num, int salestate, Date showtime, String showaddress,
			String gtype, int hot) {
		super();
		this.gname = gname;
		this.imgsrc = imgsrc;
		this.price = price;
		this.num = num;
		this.salestate = salestate;
		this.showtime = showtime;
		this.showaddress = showaddress;
		this.gtype = gtype;
		this.hot = hot;
	}
	
	public Goods(int id, String gname, String imgsrc, float price, int num, int salestate, Date showtime,
			String showaddress, String gtype, int hot) {
		super();
		this.id = id;
		this.gname = gname;
		this.imgsrc = imgsrc;
		this.price = price;
		this.num = num;
		this.salestate = salestate;
		this.showtime = showtime;
		this.showaddress = showaddress;
		this.gtype = gtype;
		this.hot = hot;
	}
	
	public Goods() {
		super();
	}

	public String getGname() {
		return gname;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getImgsrc() {
		return imgsrc;
	}
	public void setImgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getSalestate() {
		return salestate;
	}
	public void setSalestate(int salestate) {
		this.salestate = salestate;
	}
	public Date getShowtime() {
		return showtime;
	}
	public void setShowtime(Date showtime) {
		this.showtime = showtime;
	}
	public String getShowaddress() {
		return showaddress;
	}
	public void setShowaddress(String showaddress) {
		this.showaddress = showaddress;
	}
	public String getGtype() {
		return gtype;
	}
	public void setGtype(String gtype) {
		this.gtype = gtype;
	}
	public int getHot() {
		return hot;
	}
	public void setHot(int hot) {
		this.hot = hot;
	}
	
	@Override
	public String toString() {
		return "Goods [gname=" + gname + ", imgsrc=" + imgsrc + ", price=" + price + ", num=" + num + ", salestate="
				+ salestate + ", showtime=" + showtime + ", showaddress=" + showaddress + ", gtype=" + gtype + ", hot="
				+ hot + "]";
	}
}
