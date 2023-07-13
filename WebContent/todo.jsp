<%@page import="java.util.*"%>

<html>

<head>
<title>To Do List</title>
</head>

<body>
  <h3>TO DO LIST</h3>
  <form action="todo.jsp">
    <input type="text" name="thingToDo" /> <br></br> <input
      type="checkbox" name="isClear" value="clear" /> Clear all todos <br />
    <br /> <input type="submit" value="Submit" placeholder="Input" />
  </form>



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
  %>

  <ol>

    <%
    for (String temp : todos) {
    	out.println("<li>" + temp + "</li>");
    }
    %>

  </ol>

</body>

</html>