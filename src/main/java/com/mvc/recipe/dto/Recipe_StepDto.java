package com.mvc.recipe.dto;

public class Recipe_StepDto {

	private int recipe_num;
	private int step_index;
	private String step_original;
	private String step_db;
	private String step_content;
	
	
	public Recipe_StepDto() {
		super();
	}


	public Recipe_StepDto(int recipe_num, int step_index, String step_original, String step_db, String step_content) {
		super();
		this.recipe_num = recipe_num;
		this.step_index = step_index;
		this.step_original = step_original;
		this.step_db = step_db;
		this.step_content = step_content;
	}


	public int getRecipe_num() {
		return recipe_num;
	}


	public void setRecipe_num(int recipe_num) {
		this.recipe_num = recipe_num;
	}


	public int getStep_index() {
		return step_index;
	}


	public void setStep_index(int step_index) {
		this.step_index = step_index;
	}


	public String getStep_original() {
		return step_original;
	}


	public void setStep_original(String step_original) {
		this.step_original = step_original;
	}


	public String getStep_db() {
		return step_db;
	}


	public void setStep_db(String step_db) {
		this.step_db = step_db;
	}


	public String getStep_content() {
		return step_content;
	}


	public void setStep_content(String step_content) {
		this.step_content = step_content;
	}
	
	
	
	
}
