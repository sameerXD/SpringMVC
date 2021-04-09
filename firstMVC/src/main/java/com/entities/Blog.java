package com.entities;

public class Blog {
	String title;
	String blog;
	
	

	public Blog() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Blog(String title, String blog) {
		super();
		this.title = title;
		this.blog = blog;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBlog() {
		return blog;
	}
	public void setBlog(String blog) {
		this.blog = blog;
	}
	
	@Override
	public String toString() {
		return "Blog [title=" + title + ", blog=" + blog + "]";
	}

}
