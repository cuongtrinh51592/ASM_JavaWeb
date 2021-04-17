package com.demo.servlet;

import com.demo.dao.BookDao;
import com.demo.entity.BookEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "AddServlet", urlPatterns = {"/create"})
public class AddServlet extends HttpServlet {
    BookDao dao  = new BookDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BookEntity book = new BookEntity();
        book.setName(request.getParameter("name"));
        String price = request.getParameter("price");
        int priceBook = 0;
        if (price != null) {
            priceBook = Integer.parseInt(price);
        }
        book.setPrice(priceBook);

        String quantity = request.getParameter("quantity");
        int quantityBook = 0;
        if (quantity != null) {
            quantityBook = Integer.parseInt(quantity);
        }
        book.setQuantity(quantityBook);
        String categoryID = request.getParameter("categoryID");
        int categoryIDBook = 0;
        if (categoryID != null) {
            categoryIDBook = Integer.parseInt(categoryID);
        }
        book.setCategoryID(categoryIDBook);

        dao.insertBook(book);
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
