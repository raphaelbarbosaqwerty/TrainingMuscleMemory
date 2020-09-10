package br.com.raphaelqwerty.bookstore.exception;

public class AuthorNullException extends RuntimeException {

    private static final long serialVersionUID = 1L;

    public AuthorNullException(String message) {
        super(message);
    }
}
