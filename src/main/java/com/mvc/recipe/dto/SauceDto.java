package com.mvc.recipe.dto;

public class SauceDto {
	private int recipe_num;
	private String sauce_name;
	private String sauce_amount;
	
	public SauceDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SauceDto(int recipe_num, String sauce_name, String sauce_amount) {
		super();
		this.recipe_num = recipe_num;
		this.sauce_name = sauce_name;
		this.sauce_amount = sauce_amount;
	}

	public int getRecipe_num() {
		return recipe_num;
	}

	public void setRecipe_num(int recipe_num) {
		this.recipe_num = recipe_num;
	}

	public String getSauce_name() {
		return sauce_name;
	}

	public void setSauce_name(String sauce_name) {
		this.sauce_name = sauce_name;
	}

	public String getSauce_amount() {
		return sauce_amount;
	}

	public void setSauce_amount(String sauce_amount) {
		this.sauce_amount = sauce_amount;
	}


}