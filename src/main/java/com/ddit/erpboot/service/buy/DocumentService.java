package com.ddit.erpboot.service.buy;

import com.ddit.erpboot.entity.buy.Document;
import com.ddit.erpboot.repository.buy.DocumentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@RequiredArgsConstructor
@Service
public class DocumentService {

    private final DocumentRepository documentRepository;

    public Document register(String empNo, LocalDateTime docInDate) {
        return documentRepository.save(
                new Document(
                        empNo, docInDate
                )
        );
    }

}
