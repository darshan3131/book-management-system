# 📚 Book Management System

A full-stack **CRUD web application** built with **Spring MVC**, **JSP**, and **MySQL** — demonstrating the complete MVC architecture pattern in Java enterprise development.

---

## 🛠️ Tech Stack

| Layer | Technology |
|---|---|
| Language | Java 17 |
| Framework | Spring MVC 7 |
| View | JSP + JSTL |
| Database | MySQL 8 |
| DB Access | Spring JDBC (JdbcTemplate) |
| Build Tool | Maven |
| Server | Apache Tomcat 10.1 |

---

## 🏗️ Architecture

```
Browser
   │
   ▼
DispatcherServlet  (Spring Front Controller)
   │
   ▼
BookController     (@Controller)
   │
   ▼
BookService        (@Service)
   │
   ▼
BookDAO            (@Repository)
   │
   ▼
MySQL Database     (bookdb)
```

---

## 📁 Project Structure

```
book-management-system/
├── src/main/java/com/example/
│   ├── config/
│   │   ├── AppConfig.java        # DataSource, JdbcTemplate, ViewResolver
│   │   └── WebAppInit.java       # Replaces web.xml
│   ├── controller/
│   │   └── BookController.java   # Handles all HTTP requests
│   ├── service/
│   │   └── BookService.java      # Business logic layer
│   ├── dao/
│   │   └── BookDAO.java          # Database operations
│   └── model/
│       └── Book.java             # Entity class
├── src/main/webapp/WEB-INF/views/
│   ├── bookList.jsp              # View all books
│   ├── addBook.jsp               # Add book form
│   └── editBook.jsp              # Edit book form
├── books.sql                     # Database setup script
└── pom.xml
```

---

## ⚙️ Setup & Run

### 1. Database
```sql
CREATE DATABASE bookdb;
USE bookdb;

CREATE TABLE books (
    id     INT PRIMARY KEY AUTO_INCREMENT,
    title  VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    price  DOUBLE NOT NULL
);
```

### 2. Configure DB credentials
In `AppConfig.java`:
```java
ds.setUrl("jdbc:mysql://localhost:3306/bookdb?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true");
ds.setUsername("root");
ds.setPassword("your_password");
```

### 3. Build & Deploy
```bash
mvn clean package -DskipTests
cp target/book-management-system.war /path/to/tomcat/webapps/
```

### 4. Access
```
http://localhost:8080/book-management-system/books
```

---

## 🔁 CRUD Operations

| Operation | URL | Method |
|---|---|---|
| View all books | `/books` | GET |
| Show add form | `/books/add` | GET |
| Save new book | `/books/save` | POST |
| Show edit form | `/books/edit?id={id}` | GET |
| Update book | `/books/update` | POST |
| Delete book | `/books/delete?id={id}` | GET |

---

## 💡 Key Concepts Demonstrated

- ✅ Spring MVC request lifecycle (`DispatcherServlet` → `Controller` → `View`)
- ✅ Annotation-based configuration (zero `web.xml`)
- ✅ `@Controller`, `@Service`, `@Repository` layered architecture
- ✅ `@ModelAttribute` for form binding
- ✅ `ModelAndView` for passing data to JSP
- ✅ `JdbcTemplate` for clean, boilerplate-free SQL
- ✅ JSTL `<c:forEach>` for dynamic table rendering
- ✅ Post-Redirect-Get pattern to prevent duplicate form submissions

---

## 📸 Screenshots
<img width="663" height="463" alt="Screenshot 2026-03-09 at 4 21 30 PM" src="https://github.com/user-attachments/assets/02b9a164-7026-4e27-94a3-96bdc178c1f1" />
<img width="572" height="420" alt="Screenshot 2026-03-09 at 4 21 20 PM" src="https://github.com/user-attachments/assets/6c98eb21-5701-4ac5-8e12-276a83a0bcbf" />
<img width="1283" height="563" alt="Screenshot 2026-03-09 at 4 21 16 PM" src="https://github.com/user-attachments/assets/fb59e302-0dac-4980-a9ed-3cb4fef44d38" />



---

## 👤 Author

**Darshan** — Java Backend Developer  
📍 Bengaluru, India  
🔗 [GitHub](https://github.com/darshan3131)
