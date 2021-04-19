package com.ddit.erpboot.controller.buy;

import com.ddit.erpboot.controller.buy.dto.DocumentDto;
import com.ddit.erpboot.controller.buy.dto.DocumentInsertRequest;
import com.ddit.erpboot.service.buy.DocumentService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@RequestMapping("/buy/document")
@RequiredArgsConstructor
@Controller
public class DocumentController {

    private final DocumentService documentService;

    @PostMapping
    public ResponseEntity<DocumentDto> documentRegister(@RequestBody DocumentInsertRequest documentRequest) {
        return ResponseEntity.ok(new DocumentDto(
                documentService.register(
                        documentRequest.getEmpNo(),
                        documentRequest.getDocInDate(),
                        documentRequest.getMatList()
                )
        ));
    }

    @DeleteMapping("{buyNo}")
    public ResponseEntity<Void> documentDelete(@PathVariable Long buyNo) {
        documentService.delete(buyNo);
        return ResponseEntity.noContent().build();
    }

}
