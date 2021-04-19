package com.ddit.erpboot.entity.user;

import lombok.*;

import javax.persistence.*;
import java.time.LocalDateTime;

@Getter
@Setter
@ToString
@Entity
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String empNo;

    @Column(name = "emp_pass")
    private String empPassword;

    private String empName;

    @Column(name = "emp_en_name")
    private String empEnglishName;

    private String empRegno;

    @Column(name = "emp_phone")
    private String phoneNumber;

    @Column(name = "emp_email")
    private String email;

    @Column(name = "emp_birthday")
    private LocalDateTime birthDay;

    @Column(name = "emp_zip")
    private String zip;

    @Column(name = "emp_addr")
    private String address;

    @Column(name = "emp_addr2")
    private String address2;

    private LocalDateTime hireDate;

    @Column(name = "emp_gen")
    private String gender;

    private String country;

    private String bank;

    @Column(name = "emp_bankno")
    private String bankNo;

    @Column(name = "emp_img")
    private String empImageURL;

    @Column(name = "bank_img")
    private String bankImageURL;

    private String soldier;

    private String fulltime;

}
