<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
  <title>Edit Book</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 30px; }
    form { width: 350px; }
    label { display: block; margin-top: 10px; font-weight: bold; }
    input[type=text], input[type=number] {
      width: 100%; padding: 6px; margin-top: 4px; box-sizing: border-box;
    }
    input[type=submit] {
      margin-top: 15px; padding: 8px 20px;
      background: #2196F3; color: white; border: none; cursor: pointer;
    }
    a { display: inline-block; margin-top: 10px; }
  </style>
</head>
<body>
  <h2>Edit Book (ID: ${book.id})</h2>
  <form action="${pageContext.request.contextPath}/books/update" method="post">

    <!-- Hidden field to carry the id into @ModelAttribute Book -->
    <input type="hidden" name="id" value="${book.id}" />

    <label>Title:</label>
    <input type="text" name="title" value="${book.title}" required />

    <label>Author:</label>
    <input type="text" name="author" value="${book.author}" required />

    <label>Price:</label>
    <input type="number" name="price" step="0.01" min="0" value="${book.price}" required />

    <input type="submit" value="Update Book" />
  </form>
  <a href="${pageContext.request.contextPath}/books">Back to List</a>
</body>
</html>
