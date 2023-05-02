package com.mvc.recipe.controller;



import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvc.recipe.Biz.MainBiz;
import com.mvc.recipe.dto.DetailDto;




@Controller  //컨트롤러 bean으로 등록
public class mainController {

	
	private static final Logger logger = LoggerFactory.getLogger(mainController.class);


    @Autowired
    private MainBiz biz;

    @RequestMapping(value = "/main.do")  // url과 method 매핑
    public String selectList(Model model) {  // model 데이터 저장소

        List<DetailDto>  list = biz.selectList();
        List<DetailDto>  rank = biz.rankList();
        List<DetailDto>  hit = biz.hitList();

        logger.info("MAIN");
        model.addAttribute("list", list);
        model.addAttribute("rank", rank);
        model.addAttribute("hit", hit);


        return "/main/main";
    }


    @RequestMapping("/detail.do")
    public String listOne(Model model, int recipe_num) { 

        logger.info("MAIN list");
        model.addAttribute("dto", biz.selectOne(recipe_num));

        return "main.do";
    }
}