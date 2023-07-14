<%@page import="java.util.*"%>

<html>

<head>
<title>To Do List</title>
</head>

<body>
  <h3>TO DO LIST</h3>
  <form action="store-todo.jsp" method="post">
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