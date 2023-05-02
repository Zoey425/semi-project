package com.mvc.recipe.dto;

import java.util.Date;

public class RecipeDto {
	private int recipe_num;
	private String member_id;
	private String  recipe_title;
	private String recipe_content;
	private String recipe_time;
	private int recipe_readcount;
	private int recipe_best;
	private Date recipe_date;
	private String category;
	
	public RecipeDto() {
		super();
	}

	public RecipeDto(int recipe_num, String member_id, String recipe_title, String recipe_content, String recipe_time,
			int recipe_readcount, int recipe_best, Date recipe_date, String category) {
		super();
		this.recipe_num = recipe_num;
		this.member_id = member_id;
		this.recipe_title = recipe_title;
		this.recipe_content = recipe_content;
		this.recipe_time = recipe_time;
		this.recipe_readcount = recipe_readcount;
		this.recipe_best = recipe_best;
		this.recipe_date = recipe_date;
		this.category = category;
	}

	public int getRecipe_num() {
		return recipe_num;
	}

	public void setRecipe_num(int recipe_num) {
		this.recipe_num = recipe_num;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getRecipe_title() {
		return recipe_title;
	}

	public void setRecipe_title(String recipe_title) {
		this.recipe_title = recipe_title;
	}

	public String getRecipe_content() {
		return recipe_content;
	}

	public void setRecipe_content(String recipe_content) {
		this.recipe_content = recipe_content;
	}

	public String getRecipe_time() {
		return recipe_time;
	}

	public void setRecipe_time(String recipe_time) {
		this.recipe_time = recipe_time;
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
