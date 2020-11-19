package com.newer.bean;

import java.sql.Date;

public class Notice {
	private int id;
	private String title;
	private String content;
	private String imgsrc;
	private int hot;
	private Date newstime;
	private int noticetype;


	public Notice() {
		super();
	}

	public Notice(String title, String content, String imgsrc, int hot, Date newstime) {
		super();
		this.title = title;
		this.content = content;
		this.imgsrc = imgsrc;
		this.hot = hot;
		this.newstime = newstime;
		this.noticetype = noticetype;
	}

	public Notice(int id, String title, String content, String imgsrc, int hot, Date newstime,int noticetype) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.imgsrc = imgsrc;
		this.hot = hot;
		this.newstime = newstime;
		this.noticetype = noticetype;
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

	public String getImgsrc() {
		return imgsrc;
	}

	public int getNoticetype() {
		return noticetype;
	}

	public void setNoticetype(int noticetype) {
		this.noticetype = noticetype;
	}
	
	public void setImgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
	}

	public int getHot() {
		return hot;
	}

	public void setHot(int hot) {
		this.hot = hot;
	}

	public Date getNewstime() {
		return newstime;
	}

	public void setNewstime(Date newstime) {
		this.newstime = newstime;
	}

	@Override
	public String toString() {
		return "Notice [id=" + id + ", title=" + title + ", content=" + content + ", imgsrc=" + imgsrc + ", hot=" + hot
				+ ", newstime=" + newstime + "]";
	}
}
