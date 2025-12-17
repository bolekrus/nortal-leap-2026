package com.nortal.library.persistence.jpa;

import com.nortal.library.core.domain.Book;
import java.time.LocalDate;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface JpaBookRepository extends JpaRepository<Book, String> {

  long countByLoanedTo(String loanedTo);

  List<Book> findByLoanedTo(String loanedTo);

  List<Book> findByLoanedToIsNotNullAndDueDateBefore(LocalDate today);
}
