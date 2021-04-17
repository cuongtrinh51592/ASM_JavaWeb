package com.demo.dao;

import com.demo.entity.BookEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class BookDao {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistence");
    EntityManager em = emf.createEntityManager();

    public void insertBook(BookEntity b) {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(b);
        em.getTransaction().commit();
        em.close();
    }

    public void updateBook(int id, BookEntity updateBook){
        em = emf.createEntityManager();
        em.getTransaction().begin();
        BookEntity b = em.find(BookEntity.class, id);
        if (b != null) {
            b.setName(updateBook.getName());
            b.setAuthorID(updateBook.getAuthorID());
            b.setPrice(updateBook.getPrice());
            b.setQuantity(updateBook.getQuantity());
            b.setCategoryID(updateBook.getCategoryID());
            em.getTransaction().commit();
        }
        em.close();
    }

    public void deleteBook(int id) {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        BookEntity b = em.find(BookEntity.class, id);
        if (b != null) {
            em.remove(b);
            em.getTransaction().commit();
        }
        em.close();
    }

    public List<BookEntity> getAll() {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        List<BookEntity> list = em.createQuery("select b from BookEntity b", BookEntity.class).getResultList();
        em.getTransaction().commit();
        em.close();
        return list;
    }

    public BookEntity findBook(int id) {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        BookEntity bookEntity = em.createQuery("select b from BookEntity b where b.id = "+id, BookEntity.class).getSingleResult();
        em.getTransaction().commit();
        em.close();
        return bookEntity;
    }
}
