package com.ddit.erpboot.entity.buy;

import com.ddit.erpboot.entity.user.Employee;
import lombok.AccessLevel;
import lombok.*;

import javax.persistence.*;
import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity
public class Document {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long buyNo;

    private String empNo;

    private String docDate;

    @Column(name = "doc_inDate")
    private LocalDateTime docInDate;

    @ManyToOne
    @JoinColumn(name = "emp_no")
    private Employee employee;

    public Document(String empNo, LocalDateTime docInDate) {
        this.empNo = empNo;
        this.docInDate = docInDate;
    }

}
