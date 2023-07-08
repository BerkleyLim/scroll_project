package com.example.scroll_project_back.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.scroll_project_back.entity.Board;
import com.example.scroll_project_back.mapper.BoardMapper;

@Service
public class BoardService {
  @Autowired
  BoardMapper boardMapper;

  public List<Board> selectList() {
    return boardMapper.selectList();
  }

  public Integer insertBoard(String title, String contents) {
    return boardMapper.insertBoard(title, contents);
  }

  public Integer updateBoard(Board board) {
    return boardMapper.updateBoard(board);
  }

  public Integer deleteBoard(Long bno) {
    return boardMapper.deleteBoard(bno);
  }
}
