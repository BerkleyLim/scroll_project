package com.example.scroll_project_back.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.scroll_project_back.entity.Board;
import com.example.scroll_project_back.service.BoardService;

@RestController
@RequestMapping("/api/board")
public class BoardController {
  @Autowired
  BoardService boardService;

  @GetMapping("/select/list")
  public List<Board> selectList(@RequestParam Long pageNumber, @RequestParam Long startPage) {
    return boardService.selectList(pageNumber, startPage);
  }

  @PostMapping("/insert/board")
  public Integer insertBoard(@RequestBody Board board) {
    System.out.println(board.toString());
    return boardService.insertBoard(board.getTitle(), board.getContents());
  }

  @PostMapping("/update/board")
  public Integer updateBoard(@RequestBody Board board) {
    System.out.println("수정");
    System.out.println(board.toString());
    return boardService.updateBoard(board);
  }

  @PostMapping("/delete/board")
  public Integer deleteBoard(@RequestBody Board board) {
    return boardService.deleteBoard(board.getBno());
  }
}
