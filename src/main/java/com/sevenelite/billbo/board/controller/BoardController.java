/*
 * package com.sevenelite.billbo.board.controller;
 * 
 * import java.util.List;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.GetMapping; import
 * org.springframework.web.bind.annotation.RequestMapping;
 * 
 * import com.sevenelite.billbo.board.model.dto.BoardDTO; import
 * com.sevenelite.billbo.board.model.service.BoardService;
 * 
 * @Controller
 * 
 * @RequestMapping("/board/*") public class BoardController {
 * 
 * private final BoardService boardService;
 * 
 * @Autowired public BoardController(BoardService boardService) {
 * this.boardService = boardService; }
 * 
 * @GetMapping("board") public String selectBoardList(Model model) {
 * 
 * List<BoardDTO> boardList = boardService.selectBoard();
 * 
 * for(BoardDTO board : boardList) { System.out.println("board : " + board); }
 * 
 * model.addAttribute("boardList", boardList);
 * 
 * return "board/Board"; } }
