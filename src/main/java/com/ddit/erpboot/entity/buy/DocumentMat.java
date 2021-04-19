package com.ddit.erpboot.entity.buy;

import lombok.*;

import javax.persistence.*;

@Getter
@Setter
@ToString(exclude = {"document"})
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity
public class DocumentMat {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long docMatNo;

    private String matNo;

    private Long qty;

    private String docStatus;

    @ManyToOne
    @JoinColumn(name = "buy_no")
    private Document document;

}
