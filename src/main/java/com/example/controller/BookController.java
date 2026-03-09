package com.example.controller;

import com.example.model.Book;
import com.example.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookController {

    @Autowired
    private BookService bookService;

    // View all books
    @RequestMapping("/books")
    public ModelAndView listBooks() {
        ModelAndView mav = new ModelAndView("bookList");
        mav.addObject("books", bookService.getAllBooks());
        return mav;
    }

    // Show add form
    @RequestMapping("/books/add")
    public ModelAndView showAddForm() {
        ModelAndView mav = new ModelAndView("addBook");
        mav.addObject("book", new Book());
        return mav;
    }

    // Save new book
    @RequestMapping(value = "/books/save", method = RequestMethod.POST)
    public String saveBook(@ModelAttribute Book book) {
        bookService.addBook(book);
        return "redirect:/books";
    }

    // Show edit form
    @RequestMapping("/books/edit")
    public ModelAndView showEditForm(@RequestParam("id") int id) {
        ModelAndView mav = new ModelAndView("editBook");
        mav.addObject("book", bookService.getBookById(id));
        return mav;
    }

    // Update book
    @RequestMapping(value = "/books/update", method = RequestMethod.POST)
    public String updateBook(@ModelAttribute Book book) {
        bookService.updateBook(book);
        return "redirect:/books";
    }

    // Delete book
    @RequestMapping("/books/delete")
    public String deleteBook(@RequestParam("id") int id) {
        bookService.deleteBook(id);
        return "redirect:/books";
    }
}
