package com.ddit.erpboot.controller.buy.dto;

import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@RequiredArgsConstructor
public class DocumentRequest {

    private String empNo;

    private LocalDateTime docInDate;

}
