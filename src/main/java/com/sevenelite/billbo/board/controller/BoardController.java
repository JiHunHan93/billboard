package com.sevenelite.billbo.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/")
public class BoardController {
	
	@GetMapping("/board")
	public String board() {
		
		return "board/Board";
	}
	
	@GetMapping("/board/insert")
	public String boardInsert() {
		
		return "board/BoardInsert";
	}
	@GetMapping("/board/modify")
	public String boardModify() {
		
		return "board/BoardModify";
	}

}
