package com.demo.servlet;

import com.demo.dao.BookDao;
import com.demo.entity.BookEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CreateBookServlet", urlPatterns = {"/create-book"})
public class CreateBookServlet extends HttpServlet {
    BookDao dao = new BookDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BookEntity bookEntity = new BookEntity(
                request.getParameter("name"),
                Integer.parseInt(request.getParameter("authorID")),
                Integer.parseInt(request.getParameter("price")),
                Integer.parseInt(request.getParameter("quantity")),
                Integer.parseInt(request.getParameter("categoryID"))
        );

        dao.insertBook(bookEntity);

        response.sendRedirect("home");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("create-book.jsp").forward(request, response);
    }
}
