  <%@page import="java.util.*"%>
  
  <%
  List<String> todos = (List<String>) session.getAttribute("myToDoList");
  if (todos == null) {
    todos = new ArrayList<String>();
    session.setAttribute("myToDoList", todos);
  }

  String todo = request.getParameter("thingToDo");
  if (todo != null && todo != "") {
    todos.add(todo);
  }
  if (request.getParameter("isClear") != null && request.getParameter("isClear").equals("clear")) {
    todos.removeAll(todos);
  }
  response.sendRedirect("todo.jsp");
  
  %>