<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
  <title>Add Book</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 30px; }
    form { width: 350px; }
    label { display: block; margin-top: 10px; font-weight: bold; }
    input[type=text], input[type=number] {
      width: 100%; padding: 6px; margin-top: 4px; box-sizing: border-box;
    }
    input[type=submit] {
      margin-top: 15px; padding: 8px 20px;
      background: #4CAF50; color: white; border: none; cursor: pointer;
    }
    a { display: inline-block; margin-top: 10px; }
  </style>
</head>
<body>
  <h2>Add New Book</h2>
  <form action="${pageContext.request.contextPath}/books/save" method="post">
    <label>Title:</label>
    <input type="text" name="title" required />

    <label>Author:</label>
    <input type="text" name="author" required />

    <label>Price:</label>
    <input type="number" name="price" step="0.01" min="0" required />

    <input type="submit" value="Save Book" />
  </form>
  <a href="${pageContext.request.contextPath}/books">← Back to List</a>
</body>
</html>
