package com.example.service;

import com.example.dao.BookDAO;
import com.example.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {

    @Autowired
    private BookDAO bookDAO;

    public List<Book> getAllBooks()          { return bookDAO.getAllBooks(); }

    public Book getBookById(int id)         { return bookDAO.getBookById(id); }

    public int addBook(Book book)           { return bookDAO.addBook(book); }

    public int updateBook(Book book)        { return bookDAO.updateBook(book); }

    public int deleteBook(int id)           { return bookDAO.deleteBook(id); }
}
