package com.mvc.recipe.dto;

import java.util.Date;

public class Recipe_ReplyDto {
	private int reply_num;
	private int recipe_num;
	private String id;
	private String reply_content;
	private Date reply_date;
	
	
	public Recipe_ReplyDto() {
		super();
	}


	public Recipe_ReplyDto(int reply_num, int recipe_num, String id, String reply_content, Date reply_date) {
		super();
		this.reply_num = reply_num;
		this.recipe_num = recipe_num;
		this.id = id;
		this.reply_content = reply_content;
		this.reply_date = reply_date;
	}


	public int getReply_num() {
		return reply_num;
	}


	public void setReply_num(int reply_num) {
		this.reply_num = reply_num;
	}


	public int getRecipe_num() {
		return recipe_num;
	}


	public void setRecipe_num(int recipe_num) {
		this.recipe_num = recipe_num;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getReply_content() {
		return reply_content;
	}


	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}


	public Date getReply_date() {
		return reply_date;
	}


	public void setReply_date(Date reply_date) {
		this.reply_date = reply_date;
	}
	
	
}
