package com.mvc.recipe.dto;

import java.util.Date;

public class DetailDto {
	private int recipe_num;
	private String recipe_content;
	private String member_nicname;
	private String recipe_title;
	private String cook_original;
	private String cook_db;
	private int reply_num;
	private int recipe_readcount;
	private int recipe_best;
	private Date recipe_date;
	private String category;
	private int ranking;
	
	public DetailDto() {
		super();
	}

	public DetailDto(int recipe_num, String recipe_content, String member_nicname, String recipe_title,
			String cook_original, String cook_db, int reply_num, int recipe_readcount, int recipe_best,
			Date recipe_date, String category, int ranking) {
		super();
		this.recipe_num = recipe_num;
		this.recipe_content = recipe_content;
		this.member_nicname = member_nicname;
		this.recipe_title = recipe_title;
		this.cook_original = cook_original;
		this.cook_db = cook_db;
		this.reply_num = reply_num;
		this.recipe_readcount = recipe_readcount;
		this.recipe_best = recipe_best;
		this.recipe_date = recipe_date;
		this.category = category;
		this.ranking = ranking;
	}

	public String getMember_nicname() {
		return member_nicname;
	}

	public void setMember_nicname(String member_nicname) {
		this.member_nicname = member_nicname;
	}

	public int getRanking() {
		return ranking;
	}

	public void setRanking(int ranking) {
		this.ranking = ranking;
	}

	public int getRecipe_num() {
		return recipe_num;
	}

	public void setRecipe_num(int recipe_num) {
		this.recipe_num = recipe_num;
	}

	public String getRecipe_content() {
		return recipe_content;
	}

	public void setRecipe_content(String recipe_content) {
		this.recipe_content = recipe_content;
	}

	public String getmember_nicname() {
		return member_nicname;
	}

	public void setmember_nicname(String member_nicname) {
		this.member_nicname = member_nicname;
	}

	public String getRecipe_title() {
		return recipe_title;
	}

	public void setRecipe_title(String recipe_title) {
		this.recipe_title = recipe_title;
	}

	public String getCook_original() {
		return cook_original;
	}

	public void setCook_original(String cook_original) {
		this.cook_original = cook_original;
	}

	public String getCook_db() {
		return cook_db;
	}

	public void setCook_db(String cook_db) {
		this.cook_db = cook_db;
	}

	public int getReply_num() {
		return reply_num;
	}

	public void setReply_num(int reply_num) {
		this.reply_num = reply_num;
	}

	public int getRecipe_readcount() {
		return recipe_readcount;
	}

	public void setRecipe_readcount(int recipe_readcount) {
		this.recipe_readcount = recipe_readcount;
	}

	public int getRecipe_best() {
		return recipe_best;
	}

	public void setRecipe_best(int recipe_best) {
		this.recipe_best = recipe_best;
	}

	public Date getRecipe_date() {
		return recipe_date;
	}

	public void setRecipe_date(Date recipe_date) {
		this.recipe_date = recipe_date;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	
	
}