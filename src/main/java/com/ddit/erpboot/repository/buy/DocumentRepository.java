package com.ddit.erpboot.repository.buy;

import com.ddit.erpboot.entity.buy.Document;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface DocumentRepository extends JpaRepository<Document, Long> {

    Optional<Document> findById(Long buyNo);

    void deleteById(Long buyNo);

}
