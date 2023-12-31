package com.example.scroll_project_back.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.scroll_project_back.entity.Board;

@Repository
@Mapper
public interface BoardMapper {
  List<Board> selectList(Long pageNumber, Long startPage);

  Integer insertBoard(String title, String contents);

  Integer updateBoard(Board board);

  Integer deleteBoard(Long bno);
}
