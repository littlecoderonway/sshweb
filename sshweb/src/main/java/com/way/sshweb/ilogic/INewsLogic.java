package com.way.sshweb.ilogic;

import java.util.List;

import com.way.sshweb.beans.News;

public interface INewsLogic {
	public void addNews(News news);
	public void deleteNews(int newsId);
	public void editNews(int newsId);
	public News getNews(int newsId);
	
	public List<News> getAll();
}
