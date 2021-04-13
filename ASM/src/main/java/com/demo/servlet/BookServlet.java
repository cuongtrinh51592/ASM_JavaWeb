package com.demo.servlet;

import com.demo.dao.BookDao;
import com.demo.entity.BookEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "BookServlet", urlPatterns = {"/book"})
public class BookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BookDao dao = new BookDao();
        int id = Integer.parseInt(request.getParameter("id"));
        BookEntity book = dao.findBook(id);
        request.setAttribute("book", book);
        request.getRequestDispatcher("book.jsp").forward(request, response);
    }
}
