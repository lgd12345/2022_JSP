<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Animal"%>
<%@ page import="dao.AnimalRepository"%>
<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("productsAnimal.jsp");
		return;
	}

	AnimalRepository dao = AnimalRepository.getInstance();
	
	Animal animal = dao.getAnimalById(id);
	if (animal == null) {
		response.sendRedirect("exceptionNoProductAnimalId.jsp");
	}

	ArrayList<Animal> animalList = (ArrayList<Animal>) session.getAttribute("animallist");
	Animal goodsQnt = new Animal();
	for (int i = 0; i < animalList.size(); i++) { // 상품리스트 하나씩 출력하기
		goodsQnt = animalList.get(i);
		if (goodsQnt.getId().equals(id)) {
			animalList.remove(goodsQnt);
		}
	}

	response.sendRedirect("cartAnimal.jsp");
%>
