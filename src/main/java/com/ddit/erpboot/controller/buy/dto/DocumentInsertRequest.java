package com.ddit.erpboot.controller.buy.dto;

import com.ddit.erpboot.entity.buy.DocumentMat;
import lombok.*;

import java.time.LocalDateTime;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@RequiredArgsConstructor
public class DocumentInsertRequest {

    private String empNo;

    private LocalDateTime docInDate;

    private List<DocumentMat> matList;

}
