package com.ddit.erpboot.service.buy;

import com.ddit.erpboot.entity.buy.Document;
import com.ddit.erpboot.entity.buy.DocumentMat;
import com.ddit.erpboot.repository.buy.DocumentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@RequiredArgsConstructor
@Service
public class DocumentService {

    private final DocumentRepository documentRepository;

    public Document register(String empNo, LocalDateTime docInDate, List<DocumentMat> matList) {
        // matList 양방향 매핑 없이, matList insert 시켜주는 방법 생각
        
        return documentRepository.save(
                new Document(
                        empNo, docInDate
                )
        );
    }

    public void delete(Long buyNo) {
        documentRepository.deleteById(buyNo);
    }

}
