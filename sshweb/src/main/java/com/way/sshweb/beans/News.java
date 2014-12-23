package com.way.sshweb.beans;

import java.util.Date;

public class News {
	private int newsId;
	private String newsName;
	private String newsSource;
	private String newsDetail;
	private Date newsTime;
	public News() {
		super();
	}
	public News(String newsName, String newsSource,
			String newsDetail, Date newsTime) {
		super();
		this.newsName = newsName;
		this.newsSource = newsSource;
		this.newsDetail = newsDetail;
		this.newsTime = newsTime;
	}
	public int getNewsId() {
		return newsId;
	}
	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}
	public String getNewsName() {
		return newsName;
	}
	public void setNewsName(String newsName) {
		this.newsName = newsName;
	}
	public String getNewsSource() {
		return newsSource;
	}
	public void setNewsSource(String newsSource) {
		this.newsSource = newsSource;
	}
	public String getNewsDetail() {
		return newsDetail;
	}
	public void setNewsDetail(String newsDetail) {
		this.newsDetail = newsDetail;
	}
	public Date getNewsTime() {
		return newsTime;
	}
	public void setNewsTime(Date newsTime) {
		this.newsTime = newsTime;
	}
	
	
	
}
