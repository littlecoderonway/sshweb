package com.way.sshweb.actions;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.apache.struts2.json.annotations.JSON;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.way.sshweb.beans.News;
import com.way.sshweb.ilogic.INewsLogic;

public class NewsAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final Logger log = LogManager.getLogger(NewsAction.class);

	// 依赖dao

	private INewsLogic newsLogic;

	// 属性
	private News news;
	private List newsList;
	private List sightList;
	private String cpage;
	private String total;
	private String url;
	
	private int newsId=0;
	private String newsName;
	private String newsSource;
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

	private String newsDetail;
	private Date newsTime;

	// get,set
	public INewsLogic getNewsLogic() {
		return newsLogic;
	}
	public List getSightList() {
		return sightList;
	}

	public void setSightList(List sightList) {
		this.sightList = sightList;
	}

	public void setNewsLogic(INewsLogic newsLogic) {
		this.newsLogic = newsLogic;
	}
	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}
	public int getNewsId() {
		return newsId;
	}

	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}
	public List getNewsList() {
		return newsList;
	}

	public void setNewsList(List newsList) {
		this.newsList = newsList;
	}
	public String getCpage() {
		return cpage;
	}

	public void setCpage(String cpage) {
		this.cpage = cpage;
	}
	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	// 逻辑方法
	public String list() {
		// if(cpage==null)
		// cpage="1";
		// total=TravelUtil.getTotalPage(pageHelpDAO.getTotalNum("select count(*) from News"));
		// url="listNews.action";
		// newsList=pageHelpDAO.findByPage("from News",
		// TravelUtil.getPageOffset(cpage), TravelUtil.NumPerPage);
		//
		// Map session=ActionContext.getContext().getSession();
		// boolean manageModel=false;
		// if(session.get("manageModel")!=null)
		// manageModel=(Boolean)session.get("manageModel");
		// if(manageModel)
		return "listNews";
		// else return "listNewsCommon";
	}

	private Map<String, Object> jsonMap = new HashMap<String,Object>();;

	public Map<String, Object> getJsonMap() {
		return jsonMap;
	}

	public void setJsonMap(Map<String, Object> jsonMap) {
		this.jsonMap = jsonMap;
	}

	public String newsJsonList(){
		//newsId = 25;
		List<News> newsList = newsLogic.getAll();
		
		jsonMap.put("rows",newsList);
		jsonMap.put("totalCont", newsList.size());
		return "newsJson";
	}

	// 生成首页显示的新闻和景点页面
	// public String top()
	// {
	// newsList=pageHelpDAO.findByPage("from News a order by a.newsTime desc",
	// 0, 10);//取十条最新新闻
	// sightList=sightLogic.getTop();//热门景点
	// return "topNews";
	//
	// }

	public String add() {
//		news.setNewsTime(new Date());
//		newsLogic.addNews(news);
//		return list();
		News news = new News(newsName,newsSource,newsDetail,newsTime);
		if(newsId != 0){
			news.setNewsId(newsId);
		}
		newsLogic.addNews(news);
		jsonMap.put("success", true);
		return "newsJson";
	}

	public String delete() {
		newsLogic.deleteNews(newsId);
		jsonMap.put("success", true);
		return "newsJson";
		//return list();
	}

	public String view() {
		news = newsLogic.getNews(newsId);
		Map session = ActionContext.getContext().getSession();
		boolean manageModel = false;
		if (session.get("manageModel") != null)
			manageModel = (Boolean) session.get("manageModel");
		if (manageModel)
			return "viewNews";
		else
			return "viewNewsCommon";
	}

	public String edit() {
		news = newsLogic.getNews(newsId);
		return "editNews";
	}

}
