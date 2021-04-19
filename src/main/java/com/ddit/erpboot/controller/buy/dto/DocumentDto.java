package com.ddit.erpboot.controller.buy.dto;

import com.ddit.erpboot.entity.buy.Document;
import com.ddit.erpboot.entity.user.Employee;
import lombok.*;

import static org.springframework.beans.BeanUtils.copyProperties;

@Getter
@Setter
@NoArgsConstructor
public class DocumentDto {

    private Long buyNo;

    private String empNo;

    private String docDate;

    private String docInDate;

    private Employee employee;

    public DocumentDto(Document source) {
        copyProperties(source, this);
    }

}
