package com.Prac6.servlets;

public class Book {
    private String ISBN;
    private String Title;
    private String Author;
    private String Publisher;
    private int  Quantity;
    private double Price;
    public Book() {
    }
    public String getISBN(){
            return ISBN;
        }
    public String getTitle(){
        return Title;
    }
    public String getAuthor(){
        return Author;
    }
    public String getPublisher(){
        return Publisher;
    }
    public int getQuantity(){
        return Quantity;
    }
    public double getPrice(){
        return Price;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    public void setTitle(String title) {
        Title = title;
    }

    public void setAuthor(String author) {
        Author = author;
    }

    public void setPublisher(String publisher) {
        Publisher = publisher;
    }

    public void setQuantity(int quantity) {
        Quantity = quantity;
    }

    public void setPrice(double price) {
        Price = price;
    }

}
