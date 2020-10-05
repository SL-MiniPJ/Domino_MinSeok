package net.board.db;

import java.io.InputStream;

public class NewsBean {
	private int list_num;
	private String title;
	private String bulletin;
	private String add_file;
	
	public String getAdd_file() {
		return add_file;
	}
	public void setAdd_file(String add_file) {
		this.add_file = add_file;
	}
	public int getList_num() {
		return list_num;
	}
	public void setList_num(int list_num) {
		this.list_num = list_num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBulletin() {
		return bulletin;
	}
	public void setBulletin(String bulletin) {
		this.bulletin = bulletin;
	}
	

}
