<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
  <title>Book List</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 30px; }
    table { border-collapse: collapse; width: 70%; }
    th, td { border: 1px solid #aaa; padding: 8px 12px; text-align: left; }
    th { background: #4CAF50; color: white; }
    tr:nth-child(even) { background: #f2f2f2; }
    a.btn { padding: 5px 10px; text-decoration: none; color: white; border-radius: 3px; }
    a.edit  { background: #2196F3; }
    a.delete{ background: #f44336; }
    a.add   { background: #4CAF50; padding: 8px 14px; }
  </style>
</head>
<body>
  <h2>Book Management System</h2>
  <a class="btn add" href="${pageContext.request.contextPath}/books/add">+ Add New Book</a>
  <br/><br/>

  <c:choose>
    <c:when test="${empty books}">
      <p>No books found. Add one!</p>
    </c:when>
    <c:otherwise>
      <table>
        <tr>
          <th>ID</th><th>Title</th><th>Author</th><th>Price (Rs.)</th><th>Actions</th>
        </tr>
        <c:forEach var="book" items="${books}">
          <tr>
            <td>${book.id}</td>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td>${book.price}</td>
            <td>
              <a class="btn edit"   href="${pageContext.request.contextPath}/books/edit?id=${book.id}">Edit</a>
              &nbsp;
              <a class="btn delete" href="${pageContext.request.contextPath}/books/delete?id=${book.id}"
                 onclick="return confirm('Delete this book?')">Delete</a>
            </td>
          </tr>
        </c:forEach>
      </table>
    </c:otherwise>
  </c:choose>
</body>
</html>
