package com.way.sshweb.logic;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.way.sshweb.beans.News;
import com.way.sshweb.dao.NewsDAO;
import com.way.sshweb.ilogic.INewsLogic;

public class NewsLogic implements INewsLogic{
	
	private NewsDAO newsDAO;
	private static final Log log = LogFactory.getLog(NewsLogic.class);
	
	public NewsDAO getNewsDAO() {
		return newsDAO;
	}

	public void setNewsDAO(NewsDAO newsDAO) {
		this.newsDAO = newsDAO;
	}

	public void addNews(News news) {
		newsDAO.save(news);
	}

	public void deleteNews(int newsId) {
		newsDAO.delete(newsDAO.findById(newsId));
	}

	public void editNews(int newsId) {
		
	}

	public List getAll() {
		return newsDAO.findAll();
	}

	public News getNews(int newsId) {
		return newsDAO.findById(newsId);
	}

}
