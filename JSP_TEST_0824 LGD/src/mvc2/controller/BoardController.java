package mvc2.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc2.model.BoardDAO;
import mvc2.model.BoardDTO;

public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final int LISTCOUNT = 5;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());

		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");

		if (command.equals("/BoardListAction.do")) {// 등록된 글 목록 페이지 출력하기
			requestBoardList(request);
			RequestDispatcher rd = request.getRequestDispatcher("./animalBoard/list.jsp");
			rd.forward(request, response);
		} else if (command.equals("/BoardWriteForm.do")) { // 글 등록 페이지 출력하기
			requestLoginName(request);
			RequestDispatcher rd = request.getRequestDispatcher("./animalBoard/writeForm.jsp");
			rd.forward(request, response);
		} else if (command.equals("/BoardWriteAction.do")) {// 새로운 글 등록하기
			requestBoardWrite(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardListAction.do");
			rd.forward(request, response);
		} else if (command.equals("/BoardViewAction.do")) {// 선택된 글 상세 페이지 가져오기
			requestBoardView(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardView.do");
			rd.forward(request, response);
		} else if (command.equals("/BoardView.do")) { // 글 상세 페이지 출력하기
			RequestDispatcher rd = request.getRequestDispatcher("./animalBoard/view.jsp");
			rd.forward(request, response);
		} else if (command.equals("/BoardUpdateAction.do")) { // 선택된 글의 조회수 증가하기
			requestBoardUpdate(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardListAction.do");
			rd.forward(request, response);
		} else if (command.equals("/BoardDeleteAction.do")) { // 선택된 글 삭제하기
			requestBoardDelete(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardListAction.do");
			rd.forward(request, response);
		}
	}

	// 등록된 글 목록 가져오기
	public void requestBoardList(HttpServletRequest request) {

		BoardDAO dao = BoardDAO.getInstance();
		List<BoardDTO> boardlist = new ArrayList<BoardDTO>();

		int pageNum = 1;
		int limit = LISTCOUNT;

		if (request.getParameter("pageNum") != null)
			pageNum = Integer.parseInt(request.getParameter("pageNum"));

		String items = request.getParameter("items");
		String text = request.getParameter("text");

		int total_record = dao.getListCount(items, text);
		boardlist = dao.getBoardList(pageNum, limit, items, text);

		int total_page;

		if (total_record % limit == 0) {
			total_page = total_record / limit;
			Math.floor(total_page);
		} else {
			total_page = total_record / limit;
			Math.floor(total_page);
			total_page = total_page + 1;
		}

		request.setAttribute("pageNum", pageNum);
		request.setAttribute("total_page", total_page);
		request.setAttribute("total_record", total_record);
		request.setAttribute("boardlist", boardlist);

	}

	// 인증된 사용자명 가져오기
	public void requestLoginName(HttpServletRequest request) {

		String id = request.getParameter("id");

		BoardDAO dao = BoardDAO.getInstance();

		String name = dao.getLoginNameById(id);

		request.setAttribute("name", name);
	}
	// 새로운 글 등록하기

	public void requestBoardWrite(HttpServletRequest request) {

		BoardDAO dao = BoardDAO.getInstance();

		BoardDTO board = new BoardDTO();
		/* board.setId(request.getParameter("id")); */
		board.setId(request.getParameter("aniId"));
		board.setName(request.getParameter("aniName"));
		board.setAge(Integer.parseInt(request.getParameter("aniAge")));

		dao.insertBoard(board);
	}

	// 선택된 글 상세 페이지 가져오기
	public void requestBoardView(HttpServletRequest request) {

		BoardDAO dao = BoardDAO.getInstance();
		// DAO에 데이터 접근을 하기 위한..
		int num = Integer.parseInt(request.getParameter("num"));
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));

		BoardDTO board = new BoardDTO();
		board = dao.getBoardByNum(num, pageNum);

		request.setAttribute("num", num);
		request.setAttribute("page", pageNum);
		request.setAttribute("board", board);
	}
	// 선택된 글 내용 수정하기

	public void requestBoardUpdate(HttpServletRequest request) {

		int num = Integer.parseInt(request.getParameter("num"));
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));

		BoardDAO dao = BoardDAO.getInstance();

		BoardDTO board = new BoardDTO();
		board.setNum(num);
		board.setId(request.getParameter("aniId"));
		board.setName(request.getParameter("aniName"));
		board.setAge(Integer.parseInt(request.getParameter("aniAge")));

		dao.updateBoard(board);
	}

	// 선택된 글 삭제하기
	public void requestBoardDelete(HttpServletRequest request) {

		int num = Integer.parseInt(request.getParameter("num"));
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));

		BoardDAO dao = BoardDAO.getInstance();
		dao.deleteBoard(num);
	}
}
