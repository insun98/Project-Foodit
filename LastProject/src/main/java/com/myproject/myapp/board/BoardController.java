package com.myproject.myapp.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/board")
public class BoardController {
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String boardlist(Model model) throws Exception {
		model.addAttribute("list", boardService.getBoardList());
		return "list";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	
	@RequestMapping(value="/addok", method=RequestMethod.POST)
	public String addPostOK(BoardVO vo) {
		if (boardService.insertBoard(vo) == 0) {
			System.out.println("데이터 추가 실패");
		}
		else {
			System.out.println("데이터 추가 성공");
		}
		return "redirect:list";
	}
	
	@RequestMapping(value="/editform/{id}", method=RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) throws Exception {
		BoardVO boardVO = boardService.getBoard(id);
		model.addAttribute("u", boardVO);
		return "editform";
	}
	
	@RequestMapping(value="/editok", method=RequestMethod.POST)
	public String editPostOK(BoardVO vo) {
		if (boardService.updateBoard(vo) == 0) {
			System.out.println("데이터 수정 실패");
		}
		else {
			System.out.println("데이터 수정 성공");
		}
		return "redirect:list";
	}
	
	@RequestMapping(value="/deleteok/{id}", method=RequestMethod.GET)
	public String deletePostOK(@PathVariable("id") int id) throws Exception {
		if (boardService.deleteBoard(id) == 0) {
			System.out.println("데이터 삭제 실패");
		}
		else {
			System.out.println("데이터 삭제 성공");
		}
		return "redirect:../list";
	}
}
