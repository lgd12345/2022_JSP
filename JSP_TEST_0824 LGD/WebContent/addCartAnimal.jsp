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
/* 	System.out.println(id);
	System.out.println(animal); */
	
	if (animal == null) {
		response.sendRedirect("exceptionNoProductAnimalId.jsp");
	}

	ArrayList<Animal> goodsList = dao.getAllAnimal();
	Animal goods = new Animal();
	for (int i = 0; i < goodsList.size(); i++) {
		goods = goodsList.get(i);
		if (goods.getId().equals(id)) { 			
			break;
		}
	}
	
	ArrayList<Animal> list = (ArrayList<Animal>) session.getAttribute("animallist");
	if (list == null) { 
		list = new ArrayList<Animal>();
		session.setAttribute("animallist", list);
	}

	int cnt = 0;
	Animal goodsQnt2 = new Animal();
	for (int i = 0; i < list.size(); i++) {
		goodsQnt2 = list.get(i);
		if (goodsQnt2.getId().equals(id)) {
			cnt++;
			int orderQuantity2 = goodsQnt2.getQuantity() + 1;
			goodsQnt2.setQuantity(orderQuantity2);
		}
	}

	if (cnt == 0) { 
		goods.setQuantity(1);
		list.add(goods);
	}

	response.sendRedirect("productAnimal.jsp?id=" + id);
%>