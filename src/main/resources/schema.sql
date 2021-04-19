/* 창고 */
CREATE TABLE STORE (
                       store_no NUMBER NOT NULL, /* 창고코드 */
                       lstore_no CHAR(5), /* 창고분류코드 */
                       store_name VARCHAR2(10), /* 창고명 */
                       store_def VARCHAR2(300), /* 설명 */
                       use_status CHAR(4) /* 사용여부 */
);

COMMENT ON TABLE STORE IS '창고';

COMMENT ON COLUMN STORE.store_no IS '창고코드';

COMMENT ON COLUMN STORE.lstore_no IS '창고분류코드';

COMMENT ON COLUMN STORE.store_name IS '창고명';

COMMENT ON COLUMN STORE.store_def IS '설명';

COMMENT ON COLUMN STORE.use_status IS '사용여부';

CREATE UNIQUE INDEX PK_STORE
	ON STORE (
		store_no ASC
	);

ALTER TABLE STORE
    ADD
        CONSTRAINT PK_STORE
            PRIMARY KEY (
                         store_no
                );

/* 원자재분류 */
CREATE TABLE LPROD (
                       lprod_no CHAR(5) NOT NULL, /* 분류코드 */
                       lprod_name VARCHAR2(100) /* 분류명 */
);

COMMENT ON TABLE LPROD IS '원자재분류';

COMMENT ON COLUMN LPROD.lprod_no IS '분류코드';

COMMENT ON COLUMN LPROD.lprod_name IS '분류명'

CREATE UNIQUE INDEX PK_LPROD
	ON LPROD (
		lprod_no ASC
	);

ALTER TABLE LPROD
    ADD
        CONSTRAINT PK_LPROD
            PRIMARY KEY (
                         lprod_no
                );

/* 거래처 */
CREATE TABLE BUYER (
                       buyer_no CHAR(5) NOT NULL, /* 거래처코드 */
                       buyer_name VARCHAR2(100), /* 거래처명 */
                       buyer_rep VARCHAR2(20), /* 대표자명 */
                       buyer_tel VARCHAR2(20), /* 회사전화번호 */
                       buyer_zip VARCHAR2(30), /* 우편번호 */
                       buyer_addr VARCHAR2(200), /* 거래처주소 */
                       buyer_addr2 VARCHAR2(200), /* 상세주소 */
                       charger_email VARCHAR2(50), /* 담당자 이메일 */
                       charger_name VARCHAR2(20), /* 담당자명 */
                       charger_phone VARCHAR2(20), /* 담당자연락처 */
                       buyer_sector VARCHAR2(50), /* 업종 */
                       buyer_bank VARCHAR2(50), /* 은행명 */
                       buyer_bankname VARCHAR2(20), /* 예금주 */
                       buyer_bankno VARCHAR2(30), /* 계좌번호 */
                       use_status CHAR(4), /* 거래여부 */
                       etc VARCHAR2(300) /* 비고 */
);

COMMENT ON TABLE BUYER IS '거래처';

COMMENT ON COLUMN BUYER.buyer_no IS '거래처코드';

COMMENT ON COLUMN BUYER.buyer_name IS '거래처명';

COMMENT ON COLUMN BUYER.buyer_rep IS '대표자명';

COMMENT ON COLUMN BUYER.buyer_tel IS '회사전화번호';

COMMENT ON COLUMN BUYER.buyer_zip IS '우편번호';

COMMENT ON COLUMN BUYER.buyer_addr IS '거래처주소';

COMMENT ON COLUMN BUYER.buyer_addr2 IS '상세주소';

COMMENT ON COLUMN BUYER.charger_email IS '담당자 이메일';

COMMENT ON COLUMN BUYER.charger_name IS '담당자명';

COMMENT ON COLUMN BUYER.charger_phone IS '담당자연락처';

COMMENT ON COLUMN BUYER.buyer_sector IS '업종';

COMMENT ON COLUMN BUYER.buyer_bank IS '은행명';

COMMENT ON COLUMN BUYER.buyer_bankname IS '예금주';

COMMENT ON COLUMN BUYER.buyer_bankno IS '계좌번호';

COMMENT ON COLUMN BUYER.use_status IS '거래여부';

COMMENT ON COLUMN BUYER.etc IS '비고';

CREATE UNIQUE INDEX PK_BUYER
	ON BUYER (
		buyer_no ASC
	);

ALTER TABLE BUYER
    ADD
        CONSTRAINT PK_BUYER
            PRIMARY KEY (
                         buyer_no
                );

/* 사원 */
CREATE TABLE EMPLOYEE (
                          emp_no CHAR(10) NOT NULL, /* 사원번호 */
                          dep_no CHAR(2), /* 부서코드 */
                          pos_no CHAR(5), /* 직급코드 */
                          emp_pass VARCHAR2(20), /* 비밀번호 */
                          emp_name VARCHAR2(20), /* 사원명 */
                          emp_en_name VARCHAR2(30), /* 영문명 */
                          emp_regno VARCHAR2(20), /* 주민번호 */
                          emp_phone VARCHAR2(20), /* 핸드폰번호 */
                          emp_email VARCHAR2(50), /* 이메일 */
                          emp_birthday DATE, /* 생일 */
                          emp_zip VARCHAR2(20), /* 우편번호 */
                          emp_addr VARCHAR2(200), /* 주소 */
                          emp_addr2 VARCHAR2(200), /* 상세주소 */
                          hire_date DATE, /* 입사일자 */
                          emp_gen VARCHAR2(10), /* 성별 */
                          country VARCHAR2(30), /* 국적 */
                          bank VARCHAR2(50), /* 은행명 */
                          emp_bankno VARCHAR2(20), /* 계좌번호 */
                          emp_img VARCHAR2(100), /* 사원사진명 */
                          bank_img VARCHAR2(100), /* 통장사본사진명 */
                          soldier CHAR(4), /* 병역여부 */
                          fulltime CHAR(4) /* 정규직여부 */
);

COMMENT ON TABLE EMPLOYEE IS '사원';

COMMENT ON COLUMN EMPLOYEE.emp_no IS '사원번호';

COMMENT ON COLUMN EMPLOYEE.dep_no IS '부서코드';

COMMENT ON COLUMN EMPLOYEE.pos_no IS '직급코드';

COMMENT ON COLUMN EMPLOYEE.emp_pass IS '비밀번호';

COMMENT ON COLUMN EMPLOYEE.emp_name IS '사원명';

COMMENT ON COLUMN EMPLOYEE.emp_en_name IS '영문명';

COMMENT ON COLUMN EMPLOYEE.emp_regno IS '주민번호';

COMMENT ON COLUMN EMPLOYEE.emp_phone IS '핸드폰번호';

COMMENT ON COLUMN EMPLOYEE.emp_email IS '이메일';

COMMENT ON COLUMN EMPLOYEE.emp_birthday IS '생일';

COMMENT ON COLUMN EMPLOYEE.emp_zip IS '우편번호';

COMMENT ON COLUMN EMPLOYEE.emp_addr IS '주소';

COMMENT ON COLUMN EMPLOYEE.emp_addr2 IS '상세주소';

COMMENT ON COLUMN EMPLOYEE.hire_date IS '입사일자';

COMMENT ON COLUMN EMPLOYEE.emp_gen IS '성별';

COMMENT ON COLUMN EMPLOYEE.country IS '국적';

COMMENT ON COLUMN EMPLOYEE.bank IS '은행명';

COMMENT ON COLUMN EMPLOYEE.emp_bankno IS '계좌번호';

COMMENT ON COLUMN EMPLOYEE.emp_img IS '사원사진명';

COMMENT ON COLUMN EMPLOYEE.bank_img IS '통장사본사진명';

COMMENT ON COLUMN EMPLOYEE.soldier IS '병역여부';

COMMENT ON COLUMN EMPLOYEE.fulltime IS '정규직여부';

CREATE UNIQUE INDEX PK_EMPLOYEE
	ON EMPLOYEE (
		emp_no ASC
	);

ALTER TABLE EMPLOYEE
    ADD
        CONSTRAINT PK_EMPLOYEE
            PRIMARY KEY (
                         emp_no
                );

/* 부서 */
CREATE TABLE DEPARTMENT (
                            dep_no CHAR(2) NOT NULL, /* 부서코드 */
                            dep_no2 CHAR(2), /* 상위부서코드 */
                            dep_name VARCHAR2(20), /* 부서명 */
                            dep_call VARCHAR2(20) /* 내선번호 */
);

COMMENT ON TABLE DEPARTMENT IS '부서';

COMMENT ON COLUMN DEPARTMENT.dep_no IS '부서코드';

COMMENT ON COLUMN DEPARTMENT.dep_no2 IS '상위부서코드';

COMMENT ON COLUMN DEPARTMENT.dep_name IS '부서명';

COMMENT ON COLUMN DEPARTMENT.dep_call IS '내선번호';

CREATE UNIQUE INDEX PK_DEPARTMENT
	ON DEPARTMENT (
		dep_no ASC
	);

ALTER TABLE DEPARTMENT
    ADD
        CONSTRAINT PK_DEPARTMENT
            PRIMARY KEY (
                         dep_no
                );

/* 직급 */
CREATE TABLE POSITION (
                          pos_no CHAR(5) NOT NULL, /* 직급코드 */
                          pos_no2 CHAR(5), /* 상위직급코드 */
                          pos_name VARCHAR2(20) /* 직급명 */
);

COMMENT ON TABLE POSITION IS '직급';

COMMENT ON COLUMN POSITION.pos_no IS '직급코드';

COMMENT ON COLUMN POSITION.pos_no2 IS '상위직급코드';

COMMENT ON COLUMN POSITION.pos_name IS '직급명';

CREATE UNIQUE INDEX PK_POSITION
	ON POSITION (
		pos_no ASC
	);

ALTER TABLE POSITION
    ADD
        CONSTRAINT PK_POSITION
            PRIMARY KEY (
                         pos_no
                );

/* 원자재 */
CREATE TABLE MATERIAL (
                          mat_no CHAR(5) NOT NULL, /* 원자재코드 */
                          lprod_no CHAR(5) NOT NULL, /* 분류코드 */
                          mat_standard NUMBER, /* 규격 */
                          mat_stand_size VARCHAR2(10), /* 규격단위 */
                          mat_stock_size VARCHAR2(10), /* 수량단위 */
                          mat_name VARCHAR2(100) NOT NULL, /* 원자재명 */
                          mat_in_cost NUMBER, /* 입고단가 */
                          mat_stock NUMBER, /* 현재고량 */
                          mat_safe_stock NUMBER, /* 안전재고량 */
                          mat_validity DATE, /* 유효기간 */
                          mat_use CHAR(4) NOT NULL /* 사용여부 */
);

COMMENT ON TABLE MATERIAL IS '원자재';

COMMENT ON COLUMN MATERIAL.mat_no IS '원자재코드';

COMMENT ON COLUMN MATERIAL.lprod_no IS '분류코드';

COMMENT ON COLUMN MATERIAL.mat_standard IS '규격';

COMMENT ON COLUMN MATERIAL.mat_stand_size IS '규격단위';

COMMENT ON COLUMN MATERIAL.mat_stock_size IS '수량단위';

COMMENT ON COLUMN MATERIAL.mat_name IS '원자재명';

COMMENT ON COLUMN MATERIAL.mat_in_cost IS '입고단가';

COMMENT ON COLUMN MATERIAL.mat_stock IS '현재고량';

COMMENT ON COLUMN MATERIAL.mat_safe_stock IS '안전재고량';

COMMENT ON COLUMN MATERIAL.mat_validity IS '유효기간';

COMMENT ON COLUMN MATERIAL.mat_use IS '사용여부';

CREATE UNIQUE INDEX PK_MATERIAL
	ON MATERIAL (
		mat_no ASC
	);

ALTER TABLE MATERIAL
    ADD
        CONSTRAINT PK_MATERIAL
            PRIMARY KEY (
                         mat_no
                );

/* 견적서 */
CREATE TABLE OR_ESTIMATE (
                             est_no NUMBER NOT NULL, /* 견적서번호 */
                             emp_no CHAR(10), /* 사원번호 */
                             buyer_no CHAR(5), /* 거래처코드 */
                             est_date DATE, /* 작성일자 */
                             est_price NUMBER, /* 견적금액 */
                             est_prog CHAR(4) /* 진행상태 */
);

COMMENT ON TABLE OR_ESTIMATE IS '견적서';

COMMENT ON COLUMN OR_ESTIMATE.est_no IS '견적서번호';

COMMENT ON COLUMN OR_ESTIMATE.emp_no IS '사원번호';

COMMENT ON COLUMN OR_ESTIMATE.buyer_no IS '거래처코드';

COMMENT ON COLUMN OR_ESTIMATE.est_date IS '작성일자';

COMMENT ON COLUMN OR_ESTIMATE.est_price IS '견적금액';

COMMENT ON COLUMN OR_ESTIMATE.est_prog IS '진행상태';

CREATE UNIQUE INDEX PK_OR_ESTIMATE
	ON OR_ESTIMATE (
		est_no ASC
	);

ALTER TABLE OR_ESTIMATE
    ADD
        CONSTRAINT PK_OR_ESTIMATE
            PRIMARY KEY (
                         est_no
                );

/* 주문서 */
CREATE TABLE ORDERP (
                        OR_no NUMBER NOT NULL, /* 주문서번호 */
                        buyer_no CHAR(5), /* 거래처코드 */
                        emp_no CHAR(10), /* 사원번호 */
                        est_no NUMBER, /* 견적서번호 */
                        or_date DATE, /* 작성일자 */
                        OR_REQ_DATE DATE, /* 납기요청일자 */
                        OR_status CHAR(4) /* 진행상태 */
);

COMMENT ON TABLE ORDERP IS '주문서';

COMMENT ON COLUMN ORDERP.OR_no IS '주문서번호';

COMMENT ON COLUMN ORDERP.buyer_no IS '거래처코드';

COMMENT ON COLUMN ORDERP.emp_no IS '사원번호';

COMMENT ON COLUMN ORDERP.est_no IS '견적서번호';

COMMENT ON COLUMN ORDERP.or_date IS '작성일자';

COMMENT ON COLUMN ORDERP.OR_REQ_DATE IS '납기요청일자';

COMMENT ON COLUMN ORDERP.OR_status IS '진행상태';

CREATE UNIQUE INDEX PK_ORDERP
	ON ORDERP (
		OR_no ASC
	);

ALTER TABLE ORDERP
    ADD
        CONSTRAINT PK_ORDERP
            PRIMARY KEY (
                         OR_no
                );

/* 상품 */
CREATE TABLE PROD (
                      prod_no CHAR(5) NOT NULL, /* 상품코드 */
                      lprod_no CHAR(5), /* 분류코드 */
                      prod_standard VARCHAR2(10), /* 규격 */
                      prod_stand_size VARCHAR2(10), /* 규격단위 */
                      prod_stock_size VARCHAR2(10), /* 수량단위 */
                      prod_name VARCHAR2(100), /* 상품명 */
                      prod_out_price NUMBER, /* 출고단가 */
                      prod_stock NUMBER, /* 현재고량 */
                      prod_safe_stock NUMBER, /* 안전재고량 */
                      prod_validity DATE, /* 유통기한 */
                      prod_use CHAR(4) /* 생산여부 */
);

COMMENT ON TABLE PROD IS '상품';

COMMENT ON COLUMN PROD.prod_no IS '상품코드';

COMMENT ON COLUMN PROD.lprod_no IS '분류코드';

COMMENT ON COLUMN PROD.prod_standard IS '규격';

COMMENT ON COLUMN PROD.prod_stand_size IS '규격단위';

COMMENT ON COLUMN PROD.prod_stock_size IS '수량단위';

COMMENT ON COLUMN PROD.prod_name IS '상품명';

COMMENT ON COLUMN PROD.prod_out_price IS '출고단가';

COMMENT ON COLUMN PROD.prod_stock IS '현재고량';

COMMENT ON COLUMN PROD.prod_safe_stock IS '안전재고량';

COMMENT ON COLUMN PROD.prod_validity IS '유통기한';

COMMENT ON COLUMN PROD.prod_use IS '생산여부';

CREATE UNIQUE INDEX PK_PROD
	ON PROD (
		prod_no ASC
	);

ALTER TABLE PROD
    ADD
        CONSTRAINT PK_PROD
            PRIMARY KEY (
                         prod_no
                );

/* BOM */
CREATE TABLE BOM (
                     prod_no CHAR(5) NOT NULL, /* 상품코드 */
                     mat_no CHAR(5) NOT NULL, /* 원자재코드 */
                     mat_number NUMBER, /* 원자재수량 */
                     mat_size VARCHAR2(10) /* 원자재 단위 */
);

COMMENT ON TABLE BOM IS 'BOM';

COMMENT ON COLUMN BOM.prod_no IS '상품코드';

COMMENT ON COLUMN BOM.mat_no IS '원자재코드';

COMMENT ON COLUMN BOM.mat_number IS '원자재수량';

COMMENT ON COLUMN BOM.mat_size IS '원자재 단위';

CREATE UNIQUE INDEX PK_BOM
	ON BOM (
		prod_no ASC,
		mat_no ASC
	);

ALTER TABLE BOM
    ADD
        CONSTRAINT PK_BOM
            PRIMARY KEY (
                         prod_no,
                         mat_no
                );

/* 인사발령 */
CREATE TABLE ANNOUNCEMENT (
                              ann_no NUMBER NOT NULL, /* 발령코드 */
                              pos_no CHAR(5), /* 직급코드 */
                              dep_no CHAR(2), /* 부서코드 */
                              emp_no CHAR(10), /* 사원번호 */
                              ann_date DATE, /* 발령일자 */
                              remark VARCHAR2(200), /* 비고 */
                              ann_status CHAR(4) /* 발령상태 */
);

COMMENT ON TABLE ANNOUNCEMENT IS '인사발령';

COMMENT ON COLUMN ANNOUNCEMENT.ann_no IS '발령코드';

COMMENT ON COLUMN ANNOUNCEMENT.pos_no IS '직급코드';

COMMENT ON COLUMN ANNOUNCEMENT.dep_no IS '부서코드';

COMMENT ON COLUMN ANNOUNCEMENT.emp_no IS '사원번호';

COMMENT ON COLUMN ANNOUNCEMENT.ann_date IS '발령일자';

COMMENT ON COLUMN ANNOUNCEMENT.remark IS '비고';

COMMENT ON COLUMN ANNOUNCEMENT.ann_status IS '발령상태';

CREATE UNIQUE INDEX PK_ANNOUNCEMENT
	ON ANNOUNCEMENT (
		ann_no ASC
	);

ALTER TABLE ANNOUNCEMENT
    ADD
        CONSTRAINT PK_ANNOUNCEMENT
            PRIMARY KEY (
                         ann_no
                );

/* 출하지시서 */
CREATE TABLE OR_DELIVERY (
                             deliv_no NUMBER NOT NULL, /* 출하지시서번호 */
                             OR_no NUMBER, /* 주문서번호 */
                             emp_no CHAR(10), /* 사원번호 */
                             deliv_date DATE NOT NULL, /* 작성일자 */
                             deliv_prog CHAR(4), /* 진행상태 */
                             deliv_schd DATE /* 출고요청일 */
);

COMMENT ON TABLE OR_DELIVERY IS '출하지시서';

COMMENT ON COLUMN OR_DELIVERY.deliv_no IS '출하지시서번호';

COMMENT ON COLUMN OR_DELIVERY.OR_no IS '주문서번호';

COMMENT ON COLUMN OR_DELIVERY.emp_no IS '사원번호';

COMMENT ON COLUMN OR_DELIVERY.deliv_date IS '작성일자';

COMMENT ON COLUMN OR_DELIVERY.deliv_prog IS '진행상태';

COMMENT ON COLUMN OR_DELIVERY.deliv_schd IS '출고요청일';

CREATE UNIQUE INDEX PK_OR_DELIVERY
	ON OR_DELIVERY (
		deliv_no ASC
	);

ALTER TABLE OR_DELIVERY
    ADD
        CONSTRAINT PK_OR_DELIVERY
            PRIMARY KEY (
                         deliv_no
                );

/* 출하등록 */
CREATE TABLE OR_SHIPMENT (
                             ship_no NUMBER NOT NULL, /* 출하등록번호 */
                             deliv_no NUMBER, /* 출하지시서번호 */
                             emp_no CHAR(10), /* 사원번호 */
                             ship_date DATE, /* 작성일자 */
                             ship_p_date DATE, /* 출하일 */
                             ship_prog CHAR(4) /* 진행상태 */
);

COMMENT ON TABLE OR_SHIPMENT IS '출하등록';

COMMENT ON COLUMN OR_SHIPMENT.ship_no IS '출하등록번호';

COMMENT ON COLUMN OR_SHIPMENT.deliv_no IS '출하지시서번호';

COMMENT ON COLUMN OR_SHIPMENT.emp_no IS '사원번호';

COMMENT ON COLUMN OR_SHIPMENT.ship_date IS '작성일자';

COMMENT ON COLUMN OR_SHIPMENT.ship_p_date IS '출하일';

COMMENT ON COLUMN OR_SHIPMENT.ship_prog IS '진행상태';

CREATE UNIQUE INDEX PK_OR_SHIPMENT
	ON OR_SHIPMENT (
		ship_no ASC
	);

ALTER TABLE OR_SHIPMENT
    ADD
        CONSTRAINT PK_OR_SHIPMENT
            PRIMARY KEY (
                         ship_no
                );

/* 거래명세서 */
CREATE TABLE OR_TRANS (
                          tran_no NUMBER NOT NULL, /* 거래명세서번호 */
                          ship_no NUMBER, /* 출하등록번호 */
                          tran_date DATE /* 작성일자 */
);

COMMENT ON TABLE OR_TRANS IS '거래명세서';

COMMENT ON COLUMN OR_TRANS.tran_no IS '거래명세서번호';

COMMENT ON COLUMN OR_TRANS.ship_no IS '출하등록번호';

COMMENT ON COLUMN OR_TRANS.tran_date IS '작성일자';

CREATE UNIQUE INDEX PK_OR_TRANS
	ON OR_TRANS (
		tran_no ASC
	);

ALTER TABLE OR_TRANS
    ADD
        CONSTRAINT PK_OR_TRANS
            PRIMARY KEY (
                         tran_no
                );

/* 상품반품 */
CREATE TABLE OR_RETURN_P (
                             or_retp_no NUMBER NOT NULL, /* 상품반품번호 */
                             ship_no NUMBER, /* 출하등록번호 */
                             emp_no CHAR(10), /* 사원번호 */
                             or_retp_date DATE, /* 반품일자 */
                             status CHAR(4) /* 진행상태 */
);

COMMENT ON TABLE OR_RETURN_P IS '상품반품';

COMMENT ON COLUMN OR_RETURN_P.or_retp_no IS '상품반품번호';

COMMENT ON COLUMN OR_RETURN_P.ship_no IS '출하등록번호';

COMMENT ON COLUMN OR_RETURN_P.emp_no IS '사원번호';

COMMENT ON COLUMN OR_RETURN_P.or_retp_date IS '반품일자';

COMMENT ON COLUMN OR_RETURN_P.status IS '진행상태';

CREATE UNIQUE INDEX PK_OR_RETURN_P
	ON OR_RETURN_P (
		or_retp_no ASC
	);

ALTER TABLE OR_RETURN_P
    ADD
        CONSTRAINT PK_OR_RETURN_P
            PRIMARY KEY (
                         or_retp_no
                );

/* 창고분류 */
CREATE TABLE LSTORE (
                        lstore_no CHAR(5) NOT NULL, /* 창고분류코드 */
                        lstore_name VARCHAR2(100) /* 창고분류명 */
);

COMMENT ON TABLE LSTORE IS '창고분류';

COMMENT ON COLUMN LSTORE.lstore_no IS '창고분류코드';

COMMENT ON COLUMN LSTORE.lstore_name IS '창고분류명';

CREATE UNIQUE INDEX PK_LSTORE
	ON LSTORE (
		lstore_no ASC
	);

ALTER TABLE LSTORE
    ADD
        CONSTRAINT PK_LSTORE
            PRIMARY KEY (
                         lstore_no
                );

/* 생산의뢰서 */
CREATE TABLE PDUCT_OR (
                          porder_no NUMBER NOT NULL, /* 생산의뢰번호 */
                          emp_no CHAR(10), /* 사원번호 */
                          porder_date DATE, /* 작성일자 */
                          porder_confirm CHAR(1) /* 확인여부 */
);

COMMENT ON TABLE PDUCT_OR IS '생산의뢰서';

COMMENT ON COLUMN PDUCT_OR.porder_no IS '생산의뢰번호';

COMMENT ON COLUMN PDUCT_OR.emp_no IS '사원번호';

COMMENT ON COLUMN PDUCT_OR.porder_date IS '작성일자';

COMMENT ON COLUMN PDUCT_OR.porder_confirm IS '확인여부';

CREATE UNIQUE INDEX PK_PDUCT_OR
	ON PDUCT_OR (
		porder_no ASC
	);

ALTER TABLE PDUCT_OR
    ADD
        CONSTRAINT PK_PDUCT_OR
            PRIMARY KEY (
                         porder_no
                );

/* 구매요청서 */
CREATE TABLE BUY_DOCUMENT (
                              buy_no NUMBER NOT NULL, /* 구매요청번호 */
                              emp_no CHAR(10) NOT NULL, /* 사원번호 */
                              doc_date DATE NOT NULL, /* 요청일자 */
                              doc_inDate DATE /* 입고요청일자 */
);

COMMENT ON TABLE BUY_DOCUMENT IS '구매요청서';

COMMENT ON COLUMN BUY_DOCUMENT.buy_no IS '구매요청번호';

COMMENT ON COLUMN BUY_DOCUMENT.emp_no IS '사원번호';

COMMENT ON COLUMN BUY_DOCUMENT.doc_date IS '요청일자';

COMMENT ON COLUMN BUY_DOCUMENT.doc_inDate IS '입고요청일자';

CREATE UNIQUE INDEX PK_BUY_DOCUMENT
	ON BUY_DOCUMENT (
		buy_no ASC
	);

ALTER TABLE BUY_DOCUMENT
    ADD
        CONSTRAINT PK_BUY_DOCUMENT
            PRIMARY KEY (
                         buy_no
                );

/* 발주서 */
CREATE TABLE BUY_ORDER (
                           or_code NUMBER NOT NULL, /* 발주번호 */
                           emp_no CHAR(10), /* 사원번호 */
                           buyer_no CHAR(5), /* 거래처코드 */
                           or_date DATE, /* 발주일자 */
                           req_date DATE, /* 납기요청일자 */
                           status CHAR(4) /* 삭제여부 */
);

COMMENT ON TABLE BUY_ORDER IS '발주서';

COMMENT ON COLUMN BUY_ORDER.or_code IS '발주번호';

COMMENT ON COLUMN BUY_ORDER.emp_no IS '사원번호';

COMMENT ON COLUMN BUY_ORDER.buyer_no IS '거래처코드';

COMMENT ON COLUMN BUY_ORDER.or_date IS '발주일자';

COMMENT ON COLUMN BUY_ORDER.req_date IS '납기요청일자';

COMMENT ON COLUMN BUY_ORDER.status IS '삭제여부';

CREATE UNIQUE INDEX PK_BUY_ORDER
	ON BUY_ORDER (
		or_code ASC
	);

ALTER TABLE BUY_ORDER
    ADD
        CONSTRAINT PK_BUY_ORDER
            PRIMARY KEY (
                         or_code
                );

/* 매입서 */
CREATE TABLE BUY_PURCHASE (
                              pur_code NUMBER NOT NULL, /* 매입번호 */
                              or_code NUMBER, /* 발주번호 */
                              emp_no CHAR(10), /* 사원번호 */
                              pur_date DATE, /* 매입일자 */
                              COL CHAR(4) /* 삭제여부 */
);

COMMENT ON TABLE BUY_PURCHASE IS '매입서';

COMMENT ON COLUMN BUY_PURCHASE.pur_code IS '매입번호';

COMMENT ON COLUMN BUY_PURCHASE.or_code IS '발주번호';

COMMENT ON COLUMN BUY_PURCHASE.emp_no IS '사원번호';

COMMENT ON COLUMN BUY_PURCHASE.pur_date IS '매입일자';

COMMENT ON COLUMN BUY_PURCHASE.COL IS '삭제여부';

CREATE UNIQUE INDEX PK_BUY_PURCHASE
	ON BUY_PURCHASE (
		pur_code ASC
	);

ALTER TABLE BUY_PURCHASE
    ADD
        CONSTRAINT PK_BUY_PURCHASE
            PRIMARY KEY (
                         pur_code
                );

/* 반품서 */
CREATE TABLE BUY_RETURN (
                            ret_no NUMBER NOT NULL, /* 반품서번호 */
                            pur_code NUMBER, /* 매입번호 */
                            emp_no CHAR(10), /* 사원번호 */
                            ret_date DATE, /* 반품일자 */
                            status CHAR(4) /* 삭제여부 */
);

COMMENT ON TABLE BUY_RETURN IS '반품서';

COMMENT ON COLUMN BUY_RETURN.ret_no IS '반품서번호';

COMMENT ON COLUMN BUY_RETURN.pur_code IS '매입번호';

COMMENT ON COLUMN BUY_RETURN.emp_no IS '사원번호';

COMMENT ON COLUMN BUY_RETURN.ret_date IS '반품일자';

COMMENT ON COLUMN BUY_RETURN.status IS '삭제여부';

CREATE UNIQUE INDEX PK_BUY_RETURN
	ON BUY_RETURN (
		ret_no ASC
	);

ALTER TABLE BUY_RETURN
    ADD
        CONSTRAINT PK_BUY_RETURN
            PRIMARY KEY (
                         ret_no
                );

/* 계정 */
CREATE TABLE ACCOUNT (
                         account_no NUMBER NOT NULL, /* 계정코드 */
                         stand_no CHAR(5), /* 표준계정코드 */
                         account_name VARCHAR2(50), /* 계정명 */
                         use_status CHAR(4), /* 사용여부 */
                         etc VARCHAR2(200) /* 비고 */
);

COMMENT ON TABLE ACCOUNT IS '계정';

COMMENT ON COLUMN ACCOUNT.account_no IS '계정코드';

COMMENT ON COLUMN ACCOUNT.stand_no IS '표준계정코드';

COMMENT ON COLUMN ACCOUNT.account_name IS '계정명';

COMMENT ON COLUMN ACCOUNT.use_status IS '사용여부';

COMMENT ON COLUMN ACCOUNT.etc IS '비고';

CREATE UNIQUE INDEX PK_ACCOUNT
	ON ACCOUNT (
		account_no ASC
	);

ALTER TABLE ACCOUNT
    ADD
        CONSTRAINT PK_ACCOUNT
            PRIMARY KEY (
                         account_no
                );

/* 표준계정 */
CREATE TABLE STANDARD_ACC (
                              stand_no CHAR(5) NOT NULL, /* 표준계정코드 */
                              stand_name VARCHAR2(50), /* 표준계정명 */
                              division VARCHAR2(30) /* 구분 */
);

COMMENT ON TABLE STANDARD_ACC IS '표준계정';

COMMENT ON COLUMN STANDARD_ACC.stand_no IS '표준계정코드';

COMMENT ON COLUMN STANDARD_ACC.stand_name IS '표준계정명';

COMMENT ON COLUMN STANDARD_ACC.division IS '구분';

CREATE UNIQUE INDEX PK_STANDARD_ACC
	ON STANDARD_ACC (
		stand_no ASC
	);

ALTER TABLE STANDARD_ACC
    ADD
        CONSTRAINT PK_STANDARD_ACC
            PRIMARY KEY (
                         stand_no
                );

/* 적요 */
CREATE TABLE SUMMARY (
                         summary_no NUMBER NOT NULL, /* 적요코드 */
                         summary VARCHAR2(100) /* 적요 */
);

COMMENT ON TABLE SUMMARY IS '적요';

COMMENT ON COLUMN SUMMARY.summary_no IS '적요코드';

COMMENT ON COLUMN SUMMARY.summary IS '적요';

CREATE UNIQUE INDEX PK_SUMMARY
	ON SUMMARY (
		summary_no ASC
	);

ALTER TABLE SUMMARY
    ADD
        CONSTRAINT PK_SUMMARY
            PRIMARY KEY (
                         summary_no
                );

/* 일반전표 */
CREATE TABLE CHIT (
                      chit_no NUMBER NOT NULL, /* 일반전표번호 */
                      buyer_no CHAR(5), /* 거래처코드 */
                      dep_no CHAR(2), /* 부서코드 */
                      emp_no CHAR(10), /* 사원번호 */
                      chit_date DATE, /* 전표일자 */
                      buy_sell VARCHAR2(10), /* 매입매출여부 */
                      sign_status CHAR(4) /* 승인여부 */
);

COMMENT ON TABLE CHIT IS '일반전표';

COMMENT ON COLUMN CHIT.chit_no IS '일반전표번호';

COMMENT ON COLUMN CHIT.buyer_no IS '거래처코드';

COMMENT ON COLUMN CHIT.dep_no IS '부서코드';

COMMENT ON COLUMN CHIT.emp_no IS '사원번호';

COMMENT ON COLUMN CHIT.chit_date IS '전표일자';

COMMENT ON COLUMN CHIT.buy_sell IS '매입매출여부';

COMMENT ON COLUMN CHIT.sign_status IS '승인여부';

CREATE UNIQUE INDEX PK_CHIT
	ON CHIT (
		chit_no ASC
	);

ALTER TABLE CHIT
    ADD
        CONSTRAINT PK_CHIT
            PRIMARY KEY (
                         chit_no
                );

/* 매출전표 */
CREATE TABLE SELLCHIT (
                          sell_chit_no NUMBER NOT NULL, /* 매출전표번호 */
                          ship_no NUMBER, /* 출하등록번호 */
                          emp_no CHAR(10), /* 사원번호 */
                          chit_date DATE, /* 전표일자 */
                          sign_status CHAR(4), /* 전표상태 */
                          summary VARCHAR2(200) /* 적요 */
);

COMMENT ON TABLE SELLCHIT IS '매출전표';

COMMENT ON COLUMN SELLCHIT.sell_chit_no IS '매출전표번호';

COMMENT ON COLUMN SELLCHIT.ship_no IS '출하등록번호';

COMMENT ON COLUMN SELLCHIT.emp_no IS '사원번호';

COMMENT ON COLUMN SELLCHIT.chit_date IS '전표일자';

COMMENT ON COLUMN SELLCHIT.sign_status IS '전표상태';

COMMENT ON COLUMN SELLCHIT.summary IS '적요';

CREATE UNIQUE INDEX PK_SELLCHIT
	ON SELLCHIT (
		sell_chit_no ASC
	);

ALTER TABLE SELLCHIT
    ADD
        CONSTRAINT PK_SELLCHIT
            PRIMARY KEY (
                         sell_chit_no
                );

/* 매입전표 */
CREATE TABLE BUYCHIT (
                         buy_chit_no NUMBER NOT NULL, /* 매입전표번호 */
                         pur_code NUMBER, /* 매입번호 */
                         emp_no CHAR(10), /* 사원번호 */
                         chit_date DATE, /* 전표일자 */
                         sign_status CHAR(4), /* 전표상태 */
                         summary VARCHAR2(100) /* 적요 */
);

COMMENT ON TABLE BUYCHIT IS '매입전표';

COMMENT ON COLUMN BUYCHIT.buy_chit_no IS '매입전표번호';

COMMENT ON COLUMN BUYCHIT.pur_code IS '매입번호';

COMMENT ON COLUMN BUYCHIT.emp_no IS '사원번호';

COMMENT ON COLUMN BUYCHIT.chit_date IS '전표일자';

COMMENT ON COLUMN BUYCHIT.sign_status IS '전표상태';

COMMENT ON COLUMN BUYCHIT.summary IS '적요';

CREATE UNIQUE INDEX PK_BUYCHIT
	ON BUYCHIT (
		buy_chit_no ASC
	);

ALTER TABLE BUYCHIT
    ADD
        CONSTRAINT PK_BUYCHIT
            PRIMARY KEY (
                         buy_chit_no
                );

/* 고정자산 */
CREATE TABLE FIXASSETS (
                           fixassets_no NUMBER NOT NULL, /* 고정자산코드 */
                           account_no NUMBER, /* 계정코드 */
                           life_year NUMBER, /* 내용연수 */
                           assets_name VARCHAR2(50), /* 자산명 */
                           getdate DATE, /* 취득일자 */
                           amor_way VARCHAR2(10), /* 상각방법 */
                           getcost NUMBER, /* 취득가액 */
                           use_status CHAR(4) /* 사용여부 */
);

COMMENT ON TABLE FIXASSETS IS '고정자산';

COMMENT ON COLUMN FIXASSETS.fixassets_no IS '고정자산코드';

COMMENT ON COLUMN FIXASSETS.account_no IS '계정코드';

COMMENT ON COLUMN FIXASSETS.life_year IS '내용연수';

COMMENT ON COLUMN FIXASSETS.assets_name IS '자산명';

COMMENT ON COLUMN FIXASSETS.getdate IS '취득일자';

COMMENT ON COLUMN FIXASSETS.amor_way IS '상각방법';

COMMENT ON COLUMN FIXASSETS.getcost IS '취득가액';

COMMENT ON COLUMN FIXASSETS.use_status IS '사용여부';

CREATE UNIQUE INDEX PK_FIXASSETS
	ON FIXASSETS (
		fixassets_no ASC
	);

ALTER TABLE FIXASSETS
    ADD
        CONSTRAINT PK_FIXASSETS
            PRIMARY KEY (
                         fixassets_no
                );

/* 감가상각률표 */
CREATE TABLE AMORTIZATION (
                              life_year NUMBER NOT NULL, /* 내용연수 */
                              ratio VARCHAR2(10), /* 정률법 */
                              fix VARCHAR2(10) /* 정액법 */
);

COMMENT ON TABLE AMORTIZATION IS '감가상각률표';

COMMENT ON COLUMN AMORTIZATION.life_year IS '내용연수';

COMMENT ON COLUMN AMORTIZATION.ratio IS '정률법';

COMMENT ON COLUMN AMORTIZATION.fix IS '정액법';

CREATE UNIQUE INDEX PK_AMORTIZATION
	ON AMORTIZATION (
		life_year ASC
	);

ALTER TABLE AMORTIZATION
    ADD
        CONSTRAINT PK_AMORTIZATION
            PRIMARY KEY (
                         life_year
                );

/* 감가상각이력 */
CREATE TABLE AMOR_MEMORY (
                             fixassets_no NUMBER NOT NULL, /* 고정자산코드 */
                             amor_date DATE NOT NULL, /* 감가상각일자 */
                             amor_cost NUMBER /* 상각액 */
);

COMMENT ON TABLE AMOR_MEMORY IS '감가상각이력';

COMMENT ON COLUMN AMOR_MEMORY.fixassets_no IS '고정자산코드';

COMMENT ON COLUMN AMOR_MEMORY.amor_date IS '감가상각일자';

COMMENT ON COLUMN AMOR_MEMORY.amor_cost IS '상각액';

CREATE UNIQUE INDEX PK_AMOR_MEMORY
	ON AMOR_MEMORY (
		fixassets_no ASC,
		amor_date ASC
	);

ALTER TABLE AMOR_MEMORY
    ADD
        CONSTRAINT PK_AMOR_MEMORY
            PRIMARY KEY (
                         fixassets_no,
                         amor_date
                );

/* 정책코드 */
CREATE TABLE RULE (
                      CODE CHAR(4) NOT NULL, /* 코드 */
                      NAME VARCHAR2(10) /* 정책명 */
);

COMMENT ON TABLE RULE IS '정책코드';

COMMENT ON COLUMN RULE.CODE IS '코드';

COMMENT ON COLUMN RULE.NAME IS '정책명';

CREATE UNIQUE INDEX PK_RULE
	ON RULE (
		CODE ASC
	);

ALTER TABLE RULE
    ADD
        CONSTRAINT PK_RULE
            PRIMARY KEY (
                         CODE
                );

/* 주문상품목록 */
CREATE TABLE OR_PLIST (
                          ORP_NO NUMBER NOT NULL, /* 주문상품목록번호 */
                          prod_no CHAR(5) NOT NULL, /* 상품코드 */
                          OR_no NUMBER NOT NULL, /* 주문서번호 */
                          ORP_qty NUMBER, /* 수량 */
                          ORP_price NUMBER /* 금액 */
);

COMMENT ON TABLE OR_PLIST IS '주문상품목록';

COMMENT ON COLUMN OR_PLIST.ORP_NO IS '주문상품목록번호';

COMMENT ON COLUMN OR_PLIST.prod_no IS '상품코드';

COMMENT ON COLUMN OR_PLIST.OR_no IS '주문서번호';

COMMENT ON COLUMN OR_PLIST.ORP_qty IS '수량';

COMMENT ON COLUMN OR_PLIST.ORP_price IS '금액';

CREATE UNIQUE INDEX PK_OR_PLIST
	ON OR_PLIST (
		ORP_NO ASC
	);

ALTER TABLE OR_PLIST
    ADD
        CONSTRAINT PK_OR_PLIST
            PRIMARY KEY (
                         ORP_NO
                );

/* 견적상품목록 */
CREATE TABLE OR_EST_P (
                          prod_no CHAR(5) NOT NULL, /* 상품코드 */
                          est_no NUMBER NOT NULL, /* 견적서번호 */
                          est_qty NUMBER /* 수량 */
);

COMMENT ON TABLE OR_EST_P IS '견적상품목록';

COMMENT ON COLUMN OR_EST_P.prod_no IS '상품코드';

COMMENT ON COLUMN OR_EST_P.est_no IS '견적서번호';

COMMENT ON COLUMN OR_EST_P.est_qty IS '수량';

CREATE UNIQUE INDEX PK_OR_EST_P
	ON OR_EST_P (
		prod_no ASC,
		est_no ASC
	);

ALTER TABLE OR_EST_P
    ADD
        CONSTRAINT PK_OR_EST_P
            PRIMARY KEY (
                         prod_no,
                         est_no
                );

/* 상품반품목록 */
CREATE TABLE OR_RET_PLIST (
                              ret_list_no NUMBER NOT NULL, /* 반품상품목록번호 */
                              or_retp_no NUMBER NOT NULL, /* 상품반품번호 */
                              ORP_NO NUMBER, /* 주문상품목록번호 */
                              ret_list_qty NUMBER, /* 수량 */
                              ret_comment CHAR(4) /* 반품사유 */
);

COMMENT ON TABLE OR_RET_PLIST IS '상품반품목록';

COMMENT ON COLUMN OR_RET_PLIST.ret_list_no IS '반품상품목록번호';

COMMENT ON COLUMN OR_RET_PLIST.or_retp_no IS '상품반품번호';

COMMENT ON COLUMN OR_RET_PLIST.ORP_NO IS '주문상품목록번호';

COMMENT ON COLUMN OR_RET_PLIST.ret_list_qty IS '수량';

COMMENT ON COLUMN OR_RET_PLIST.ret_comment IS '반품사유';

CREATE UNIQUE INDEX PK_OR_RET_PLIST
	ON OR_RET_PLIST (
		ret_list_no ASC
	);

ALTER TABLE OR_RET_PLIST
    ADD
        CONSTRAINT PK_OR_RET_PLIST
            PRIMARY KEY (
                         ret_list_no
                );

/* 구매원자재목록 */
CREATE TABLE BUY_DOC_MAT (
                             mat_no CHAR(5) NOT NULL, /* 원자재코드 */
                             buy_no NUMBER NOT NULL, /* 구매요청번호 */
                             qty NUMBER NOT NULL, /* 수량 */
                             doc_status CHAR(4) /* 발주상태 */
);

COMMENT ON TABLE BUY_DOC_MAT IS '구매원자재목록';

COMMENT ON COLUMN BUY_DOC_MAT.mat_no IS '원자재코드';

COMMENT ON COLUMN BUY_DOC_MAT.buy_no IS '구매요청번호';

COMMENT ON COLUMN BUY_DOC_MAT.qty IS '수량';

COMMENT ON COLUMN BUY_DOC_MAT.doc_status IS '발주상태';

CREATE UNIQUE INDEX PK_BUY_DOC_MAT
	ON BUY_DOC_MAT (
		mat_no ASC,
		buy_no ASC
	);

ALTER TABLE BUY_DOC_MAT
    ADD
        CONSTRAINT PK_BUY_DOC_MAT
            PRIMARY KEY (
                         mat_no,
                         buy_no
                );

/* 발주서원자재목록 */
CREATE TABLE BUY_OR_MAT (
                            ormat_code NUMBER NOT NULL, /* 발주서원자재번호 */
                            buy_no NUMBER, /* 구매요청번호 */
                            mat_no CHAR(5) NOT NULL, /* 원자재코드 */
                            or_code NUMBER NOT NULL, /* 발주번호 */
                            ormat_qty NUMBER, /* 수량 */
                            cost NUMBER /* 단가 */
);

COMMENT ON TABLE BUY_OR_MAT IS '발주서원자재목록';

COMMENT ON COLUMN BUY_OR_MAT.ormat_code IS '발주서원자재번호';

COMMENT ON COLUMN BUY_OR_MAT.buy_no IS '구매요청번호';

COMMENT ON COLUMN BUY_OR_MAT.mat_no IS '원자재코드';

COMMENT ON COLUMN BUY_OR_MAT.or_code IS '발주번호';

COMMENT ON COLUMN BUY_OR_MAT.ormat_qty IS '수량';

COMMENT ON COLUMN BUY_OR_MAT.cost IS '단가';

CREATE UNIQUE INDEX PK_BUY_OR_MAT
	ON BUY_OR_MAT (
		ormat_code ASC
	);

ALTER TABLE BUY_OR_MAT
    ADD
        CONSTRAINT PK_BUY_OR_MAT
            PRIMARY KEY (
                         ormat_code
                );

/* 상품입고 */
CREATE TABLE PROD_IN (
                         prod_in_no NUMBER NOT NULL, /* 상품입고코드 */
                         prod_no CHAR(5), /* 상품코드 */
                         prod_sector CHAR(4), /* 상품창고코드 */
                         pduct_no NUMBER, /* 생산물품번호 */
                         emp_no CHAR(10), /* 사원번호 */
                         prod_in_date DATE, /* 입고일자 */
                         prod_in_qty NUMBER /* 입고수량 */
);

COMMENT ON TABLE PROD_IN IS '상품입고';

COMMENT ON COLUMN PROD_IN.prod_in_no IS '상품입고코드';

COMMENT ON COLUMN PROD_IN.prod_no IS '상품코드';

COMMENT ON COLUMN PROD_IN.prod_sector IS '상품창고코드';

COMMENT ON COLUMN PROD_IN.pduct_no IS '생산물품번호';

COMMENT ON COLUMN PROD_IN.emp_no IS '사원번호';

COMMENT ON COLUMN PROD_IN.prod_in_date IS '입고일자';

COMMENT ON COLUMN PROD_IN.prod_in_qty IS '입고수량';

CREATE UNIQUE INDEX PK_PROD_IN
	ON PROD_IN (
		prod_in_no ASC
	);

ALTER TABLE PROD_IN
    ADD
        CONSTRAINT PK_PROD_IN
            PRIMARY KEY (
                         prod_in_no
                );

/* 상품출고 */
CREATE TABLE PROD_OUT (
                          prod_out_no NUMBER NOT NULL, /* 상품출고코드 */
                          deliv_no NUMBER NOT NULL, /* 출하지시서번호 */
                          prod_sector CHAR(4), /* 상품창고코드 */
                          emp_no CHAR(10), /* 사원번호 */
                          prod_out_date DATE, /* 출고일자 */
                          prod_out_qty NUMBER /* 출고수량 */
);

COMMENT ON TABLE PROD_OUT IS '상품출고';

COMMENT ON COLUMN PROD_OUT.prod_out_no IS '상품출고코드';

COMMENT ON COLUMN PROD_OUT.deliv_no IS '출하지시서번호';

COMMENT ON COLUMN PROD_OUT.prod_sector IS '상품창고코드';

COMMENT ON COLUMN PROD_OUT.emp_no IS '사원번호';

COMMENT ON COLUMN PROD_OUT.prod_out_date IS '출고일자';

COMMENT ON COLUMN PROD_OUT.prod_out_qty IS '출고수량';

CREATE UNIQUE INDEX PK_PROD_OUT
	ON PROD_OUT (
		prod_out_no ASC
	);

ALTER TABLE PROD_OUT
    ADD
        CONSTRAINT PK_PROD_OUT
            PRIMARY KEY (
                         prod_out_no
                );

/* 원자재입고 */
CREATE TABLE MATERIAL_IN (
                             mat_in_no VARCHAR2(10) NOT NULL, /* 원자재입고코드 */
                             mat_sector_no CHAR(4), /* 원자재창고구역번호 */
                             pur_code NUMBER NOT NULL, /* 매입번호 */
                             ormat_code NUMBER, /* 발주서원자재번호 */
                             emp_no CHAR(10), /* 사원번호 */
                             mat_in_date DATE, /* 입고일자 */
                             mat_in_qty NUMBER /* 입고수량 */
);

COMMENT ON TABLE MATERIAL_IN IS '원자재입고';

COMMENT ON COLUMN MATERIAL_IN.mat_in_no IS '원자재입고코드';

COMMENT ON COLUMN MATERIAL_IN.mat_sector_no IS '원자재창고구역번호';

COMMENT ON COLUMN MATERIAL_IN.pur_code IS '매입번호';

COMMENT ON COLUMN MATERIAL_IN.ormat_code IS '발주서원자재번호';

COMMENT ON COLUMN MATERIAL_IN.emp_no IS '사원번호';

COMMENT ON COLUMN MATERIAL_IN.mat_in_date IS '입고일자';

COMMENT ON COLUMN MATERIAL_IN.mat_in_qty IS '입고수량';

CREATE UNIQUE INDEX PK_MATERIAL_IN
	ON MATERIAL_IN (
		mat_in_no ASC
	);

ALTER TABLE MATERIAL_IN
    ADD
        CONSTRAINT PK_MATERIAL_IN
            PRIMARY KEY (
                         mat_in_no
                );

/* 반품원자재목록 */
CREATE TABLE BUY_RET_M (
                           retmat_no NUMBER NOT NULL, /* 반품원자재번호 */
                           ormat_code NUMBER, /* 발주서원자재번호 */
                           ret_no NUMBER, /* 반품서번호 */
                           retmat_qty NUMBER /* 반품수량 */
);

COMMENT ON TABLE BUY_RET_M IS '반품원자재목록';

COMMENT ON COLUMN BUY_RET_M.retmat_no IS '반품원자재번호';

COMMENT ON COLUMN BUY_RET_M.ormat_code IS '발주서원자재번호';

COMMENT ON COLUMN BUY_RET_M.ret_no IS '반품서번호';

COMMENT ON COLUMN BUY_RET_M.retmat_qty IS '반품수량';

CREATE UNIQUE INDEX PK_BUY_RET_M
	ON BUY_RET_M (
		retmat_no ASC
	);

ALTER TABLE BUY_RET_M
    ADD
        CONSTRAINT PK_BUY_RET_M
            PRIMARY KEY (
                         retmat_no
                );

/* 원자재생산출고 */
CREATE TABLE MAT_MF_OUT (
                            mf_no NUMBER NOT NULL, /* 원자재 생산출고 */
                            mat_no CHAR(5), /* 원자재코드 */
                            pduct_no NUMBER, /* 생산물품번호 */
                            mf_date DATE /* 출고일자 */
);

COMMENT ON TABLE MAT_MF_OUT IS '원자재생산출고';

COMMENT ON COLUMN MAT_MF_OUT.mf_no IS '원자재 생산출고';

COMMENT ON COLUMN MAT_MF_OUT.mat_no IS '원자재코드';

COMMENT ON COLUMN MAT_MF_OUT.pduct_no IS '생산물품번호';

COMMENT ON COLUMN MAT_MF_OUT.mf_date IS '출고일자';

CREATE UNIQUE INDEX PK_MAT_MF_OUT
	ON MAT_MF_OUT (
		mf_no ASC
	);

ALTER TABLE MAT_MF_OUT
    ADD
        CONSTRAINT PK_MAT_MF_OUT
            PRIMARY KEY (
                         mf_no
                );

/* 원자재창고구역 */
CREATE TABLE MAT_SECTOR (
                            mat_sector_no CHAR(4) NOT NULL, /* 원자재창고구역번호 */
                            mat_no CHAR(5) NOT NULL, /* 원자재코드 */
                            sector_no CHAR(5), /* 창고구역번호 */
                            mat_cnt NUMBER /* 원자재갯수 */
);

COMMENT ON TABLE MAT_SECTOR IS '원자재창고구역';

COMMENT ON COLUMN MAT_SECTOR.mat_sector_no IS '원자재창고구역번호';

COMMENT ON COLUMN MAT_SECTOR.mat_no IS '원자재코드';

COMMENT ON COLUMN MAT_SECTOR.sector_no IS '창고구역번호';

COMMENT ON COLUMN MAT_SECTOR.mat_cnt IS '원자재갯수';

CREATE UNIQUE INDEX PK_MAT_SECTOR
	ON MAT_SECTOR (
		mat_sector_no ASC
	);

ALTER TABLE MAT_SECTOR
    ADD
        CONSTRAINT PK_MAT_SECTOR
            PRIMARY KEY (
                         mat_sector_no
                );

/* 상품창고구역 */
CREATE TABLE PROD_SECTOR (
                             prod_sector CHAR(4) NOT NULL, /* 상품창고코드 */
                             prod_no CHAR(5) NOT NULL, /* 상품코드 */
                             sector_no CHAR(5), /* 창고구역번호 */
                             prod_cnt NUMBER /* 창고갯수 */
);

COMMENT ON TABLE PROD_SECTOR IS '상품창고구역';

COMMENT ON COLUMN PROD_SECTOR.prod_sector IS '상품창고코드';

COMMENT ON COLUMN PROD_SECTOR.prod_no IS '상품코드';

COMMENT ON COLUMN PROD_SECTOR.sector_no IS '창고구역번호';

COMMENT ON COLUMN PROD_SECTOR.prod_cnt IS '창고갯수';

CREATE UNIQUE INDEX PK_PROD_SECTOR
	ON PROD_SECTOR (
		prod_sector ASC
	);

ALTER TABLE PROD_SECTOR
    ADD
        CONSTRAINT PK_PROD_SECTOR
            PRIMARY KEY (
                         prod_sector
                );

/* 상품반품입고 */
CREATE TABLE PROD_RET_IN (
                             ret_in_no NUMBER NOT NULL, /* 반품상품입고코드 */
                             ret_list_no NUMBER, /* 반품상품목록번호 */
                             prod_sector CHAR(4), /* 상품창고코드 */
                             ret_in_date DATE /* 입고일자 */
);

COMMENT ON TABLE PROD_RET_IN IS '상품반품입고';

COMMENT ON COLUMN PROD_RET_IN.ret_in_no IS '반품상품입고코드';

COMMENT ON COLUMN PROD_RET_IN.ret_list_no IS '반품상품목록번호';

COMMENT ON COLUMN PROD_RET_IN.prod_sector IS '상품창고코드';

COMMENT ON COLUMN PROD_RET_IN.ret_in_date IS '입고일자';

CREATE UNIQUE INDEX PK_PROD_RET_IN
	ON PROD_RET_IN (
		ret_in_no ASC
	);

ALTER TABLE PROD_RET_IN
    ADD
        CONSTRAINT PK_PROD_RET_IN
            PRIMARY KEY (
                         ret_in_no
                );

/* 원자재폐기 */
CREATE TABLE MAT_DISPOSAL (
                              dis_mater NUMBER NOT NULL, /* 원자재폐기번호 */
                              emp_no CHAR(10), /* 사원번호 */
                              ormat_code NUMBER, /* 발주서원자재번호 */
                              mat_no CHAR(5), /* 원자재코드 */
                              rep_no NUMBER, /* 생산보고서번호 */
                              dis_date DATE, /* 폐기일자 */
                              dis_cnt NUMBER /* 폐기수량 */
);

COMMENT ON TABLE MAT_DISPOSAL IS '원자재폐기';

COMMENT ON COLUMN MAT_DISPOSAL.dis_mater IS '원자재폐기번호';

COMMENT ON COLUMN MAT_DISPOSAL.emp_no IS '사원번호';

COMMENT ON COLUMN MAT_DISPOSAL.ormat_code IS '발주서원자재번호';

COMMENT ON COLUMN MAT_DISPOSAL.mat_no IS '원자재코드';

COMMENT ON COLUMN MAT_DISPOSAL.rep_no IS '생산보고서번호';

COMMENT ON COLUMN MAT_DISPOSAL.dis_date IS '폐기일자';

COMMENT ON COLUMN MAT_DISPOSAL.dis_cnt IS '폐기수량';

CREATE UNIQUE INDEX PK_MAT_DISPOSAL
	ON MAT_DISPOSAL (
		dis_mater ASC
	);

ALTER TABLE MAT_DISPOSAL
    ADD
        CONSTRAINT PK_MAT_DISPOSAL
            PRIMARY KEY (
                         dis_mater
                );

/* 창고구역 */
CREATE TABLE SECTOR (
                        sector_no CHAR(5) NOT NULL, /* 창고구역번호 */
                        store_no NUMBER /* 창고코드 */
);

COMMENT ON TABLE SECTOR IS '창고구역';

COMMENT ON COLUMN SECTOR.sector_no IS '창고구역번호';

COMMENT ON COLUMN SECTOR.store_no IS '창고코드';

CREATE UNIQUE INDEX PK_SECTOR
	ON SECTOR (
		sector_no ASC
	);

ALTER TABLE SECTOR
    ADD
        CONSTRAINT PK_SECTOR
            PRIMARY KEY (
                         sector_no
                );

/* 전표거래품목 */
CREATE TABLE CHITLIST (
                          deal_no NUMBER NOT NULL, /* 전표거래품목번호 */
                          chit_no NUMBER, /* 일반전표번호 */
                          product VARCHAR2(100), /* 품목 */
                          price NUMBER, /* 가액 */
                          summary VARCHAR2(100), /* 적요 */
                          qty NUMBER /* 수량 */
);

COMMENT ON TABLE CHITLIST IS '전표거래품목';

COMMENT ON COLUMN CHITLIST.deal_no IS '전표거래품목번호';

COMMENT ON COLUMN CHITLIST.chit_no IS '일반전표번호';

COMMENT ON COLUMN CHITLIST.product IS '품목';

COMMENT ON COLUMN CHITLIST.price IS '가액';

COMMENT ON COLUMN CHITLIST.summary IS '적요';

COMMENT ON COLUMN CHITLIST.qty IS '수량';

CREATE UNIQUE INDEX PK_CHITLIST
	ON CHITLIST (
		deal_no ASC
	);

ALTER TABLE CHITLIST
    ADD
        CONSTRAINT PK_CHITLIST
            PRIMARY KEY (
                         deal_no
                );

/* 생산보고서 */
CREATE TABLE PROD_REPORT (
                             rep_no NUMBER NOT NULL, /* 생산보고서번호 */
                             porder_no NUMBER, /* 생산의뢰번호 */
                             emp_no CHAR(10), /* 사원번호 */
                             rep_date DATE, /* 작성일자 */
                             prod_discnt NUMBER /* 폐기수량 */
);

COMMENT ON TABLE PROD_REPORT IS '생산보고서';

COMMENT ON COLUMN PROD_REPORT.rep_no IS '생산보고서번호';

COMMENT ON COLUMN PROD_REPORT.porder_no IS '생산의뢰번호';

COMMENT ON COLUMN PROD_REPORT.emp_no IS '사원번호';

COMMENT ON COLUMN PROD_REPORT.rep_date IS '작성일자';

COMMENT ON COLUMN PROD_REPORT.prod_discnt IS '폐기수량';

CREATE UNIQUE INDEX PK_PROD_REPORT
	ON PROD_REPORT (
		rep_no ASC
	);

ALTER TABLE PROD_REPORT
    ADD
        CONSTRAINT PK_PROD_REPORT
            PRIMARY KEY (
                         rep_no
                );

/* 생산의뢰서물품목록 */
CREATE TABLE PDUCT_LIST (
                            pduct_no NUMBER NOT NULL, /* 생산물품번호 */
                            prod_no CHAR(5), /* 상품코드 */
                            porder_no NUMBER, /* 생산의뢰번호 */
                            pduct_cnt NUMBER /* 수량 */
);

COMMENT ON TABLE PDUCT_LIST IS '생산의뢰서물품목록';

COMMENT ON COLUMN PDUCT_LIST.pduct_no IS '생산물품번호';

COMMENT ON COLUMN PDUCT_LIST.prod_no IS '상품코드';

COMMENT ON COLUMN PDUCT_LIST.porder_no IS '생산의뢰번호';

COMMENT ON COLUMN PDUCT_LIST.pduct_cnt IS '수량';

CREATE UNIQUE INDEX PK_PDUCT_LIST
	ON PDUCT_LIST (
		pduct_no ASC
	);

ALTER TABLE PDUCT_LIST
    ADD
        CONSTRAINT PK_PDUCT_LIST
            PRIMARY KEY (
                         pduct_no
                );

/* 상품폐기 */
CREATE TABLE PROD_DIS (
                          pdis_prod NUMBER NOT NULL, /* 상품폐기번호 */
                          emp_no CHAR(10), /* 사원번호 */
                          ret_list_no NUMBER, /* 반품상품목록번호 */
                          prod_no CHAR(5), /* 상품코드 */
                          pdis_date DATE, /* 폐기일자 */
                          pdis_cnt NUMBER /* 폐기수량 */
);

COMMENT ON TABLE PROD_DIS IS '상품폐기';

COMMENT ON COLUMN PROD_DIS.pdis_prod IS '상품폐기번호';

COMMENT ON COLUMN PROD_DIS.emp_no IS '사원번호';

COMMENT ON COLUMN PROD_DIS.ret_list_no IS '반품상품목록번호';

COMMENT ON COLUMN PROD_DIS.prod_no IS '상품코드';

COMMENT ON COLUMN PROD_DIS.pdis_date IS '폐기일자';

COMMENT ON COLUMN PROD_DIS.pdis_cnt IS '폐기수량';

CREATE UNIQUE INDEX PK_PROD_DIS
	ON PROD_DIS (
		pdis_prod ASC
	);

ALTER TABLE PROD_DIS
    ADD
        CONSTRAINT PK_PROD_DIS
            PRIMARY KEY (
                         pdis_prod
                );

/* 사원자격증 */
CREATE TABLE EMP_CERT (
                          cert_no NUMBER NOT NULL, /* 자격증코드 */
                          emp_no CHAR(10) NOT NULL, /* 사원번호 */
                          cert_sector VARCHAR2(100), /* 자격증구분 */
                          cert_title VARCHAR2(500), /* 자격증명 */
                          issue_agency VARCHAR2(300), /* 발급기관명 */
                          cert_date DATE /* 취득일 */
);

COMMENT ON TABLE EMP_CERT IS '사원자격증';

COMMENT ON COLUMN EMP_CERT.cert_no IS '자격증코드';

COMMENT ON COLUMN EMP_CERT.emp_no IS '사원번호';

COMMENT ON COLUMN EMP_CERT.cert_sector IS '자격증구분';

COMMENT ON COLUMN EMP_CERT.cert_title IS '자격증명';

COMMENT ON COLUMN EMP_CERT.issue_agency IS '발급기관명';

COMMENT ON COLUMN EMP_CERT.cert_date IS '취득일';

CREATE UNIQUE INDEX PK_EMP_CERT
	ON EMP_CERT (
		cert_no ASC
	);

ALTER TABLE EMP_CERT
    ADD
        CONSTRAINT PK_EMP_CERT
            PRIMARY KEY (
                         cert_no
                );

/* 자격증종류 */
CREATE TABLE CERTIFICATIONS (
    cert_no NUMBER NOT NULL /* 자격증코드 */
);

COMMENT ON TABLE CERTIFICATIONS IS '자격증종류';

COMMENT ON COLUMN CERTIFICATIONS.cert_no IS '자격증코드';

CREATE UNIQUE INDEX PK_CERTIFICATIONS
	ON CERTIFICATIONS (
		cert_no ASC
	);

ALTER TABLE CERTIFICATIONS
    ADD
        CONSTRAINT PK_CERTIFICATIONS
            PRIMARY KEY (
                         cert_no
                );

/* 사원경력 */
CREATE TABLE EMP_CAREER (
                            emp_no CHAR(10) NOT NULL, /* 사원번호 */
                            company VARCHAR2(100) NOT NULL, /* 회사 */
                            career_task VARCHAR2(300), /* 경력업무 */
                            work_year NUMBER, /* 근속년수 */
                            final_position VARCHAR2(200) /* 최종직급 */
);

COMMENT ON TABLE EMP_CAREER IS '사원경력';

COMMENT ON COLUMN EMP_CAREER.emp_no IS '사원번호';

COMMENT ON COLUMN EMP_CAREER.company IS '회사';

COMMENT ON COLUMN EMP_CAREER.career_task IS '경력업무';

COMMENT ON COLUMN EMP_CAREER.work_year IS '근속년수';

COMMENT ON COLUMN EMP_CAREER.final_position IS '최종직급';

CREATE UNIQUE INDEX PK_EMP_CAREER
	ON EMP_CAREER (
		emp_no ASC,
		company ASC
	);

ALTER TABLE EMP_CAREER
    ADD
        CONSTRAINT PK_EMP_CAREER
            PRIMARY KEY (
                         emp_no,
                         company
                );

/* 학력 */
CREATE TABLE EDUCATION (
                           emp_no CHAR(10) NOT NULL, /* 사원번호 */
                           edu_name VARCHAR2(100) NOT NULL, /* 출신학교명 */
                           major VARCHAR2(100), /* 전공 */
                           graduate VARCHAR2(50) /* 졸업여부 */
);

COMMENT ON TABLE EDUCATION IS '학력';

COMMENT ON COLUMN EDUCATION.emp_no IS '사원번호';

COMMENT ON COLUMN EDUCATION.edu_name IS '출신학교명';

COMMENT ON COLUMN EDUCATION.major IS '전공';

COMMENT ON COLUMN EDUCATION.graduate IS '졸업여부';

CREATE UNIQUE INDEX PK_EDUCATION
	ON EDUCATION (
		emp_no ASC,
		edu_name ASC
	);

ALTER TABLE EDUCATION
    ADD
        CONSTRAINT PK_EDUCATION
            PRIMARY KEY (
                         emp_no,
                         edu_name
                );

/* 급여명세서 */
CREATE TABLE SALARY_TRANS (
                              emp_no CHAR(10) NOT NULL, /* 사원번호 */
                              sal_date DATE NOT NULL, /* 급여지급일자 */
                              my_basicsalary NUMBER, /* 기본급여 */
                              extension_pay NUMBER, /* 연장수당 */
                              deduction NUMBER, /* 공제액 */
                              actual_payment NUMBER /* 실지급액 */
);

COMMENT ON TABLE SALARY_TRANS IS '급여명세서';

COMMENT ON COLUMN SALARY_TRANS.emp_no IS '사원번호';

COMMENT ON COLUMN SALARY_TRANS.sal_date IS '급여지급일자';

COMMENT ON COLUMN SALARY_TRANS.my_basicsalary IS '기본급여';

COMMENT ON COLUMN SALARY_TRANS.extension_pay IS '연장수당';

COMMENT ON COLUMN SALARY_TRANS.deduction IS '공제액';

COMMENT ON COLUMN SALARY_TRANS.actual_payment IS '실지급액';

CREATE UNIQUE INDEX PK_SALARY_TRANS
	ON SALARY_TRANS (
		emp_no ASC,
		sal_date ASC
	);

ALTER TABLE SALARY_TRANS
    ADD
        CONSTRAINT PK_SALARY_TRANS
            PRIMARY KEY (
                         emp_no,
                         sal_date
                );

/* 퇴직금 */
CREATE TABLE RETIREMENT (
                            emp_no CHAR(10) NOT NULL, /* 사원번호 */
                            payment_day DATE NOT NULL, /* 지급일자 */
                            retire_date DATE, /* 퇴사일자 */
                            retire_salary NUMBER, /* 퇴직급여 */
                            deduction NUMBER, /* 공제액 */
                            retire_reason VARCHAR2(200) /* 퇴직사유 */
);

COMMENT ON TABLE RETIREMENT IS '퇴직금';

COMMENT ON COLUMN RETIREMENT.emp_no IS '사원번호';

COMMENT ON COLUMN RETIREMENT.payment_day IS '지급일자';

COMMENT ON COLUMN RETIREMENT.retire_date IS '퇴사일자';

COMMENT ON COLUMN RETIREMENT.retire_salary IS '퇴직급여';

COMMENT ON COLUMN RETIREMENT.deduction IS '공제액';

COMMENT ON COLUMN RETIREMENT.retire_reason IS '퇴직사유';

CREATE UNIQUE INDEX PK_RETIREMENT
	ON RETIREMENT (
		emp_no ASC,
		payment_day ASC
	);

ALTER TABLE RETIREMENT
    ADD
        CONSTRAINT PK_RETIREMENT
            PRIMARY KEY (
                         emp_no,
                         payment_day
                );

/* 근태현황 */
CREATE TABLE WORK (
                      emp_no CHAR(10) NOT NULL, /* 사원번호 */
                      work_date DATE NOT NULL, /* 근태일자 */
                      work_time DATE, /* 출근시간 */
                      offwork_time DATE /* 퇴근시간 */
);

COMMENT ON TABLE WORK IS '근태현황';

COMMENT ON COLUMN WORK.emp_no IS '사원번호';

COMMENT ON COLUMN WORK.work_date IS '근태일자';

COMMENT ON COLUMN WORK.work_time IS '출근시간';

COMMENT ON COLUMN WORK.offwork_time IS '퇴근시간';

CREATE UNIQUE INDEX PK_WORK
	ON WORK (
		emp_no ASC,
		work_date ASC
	);

ALTER TABLE WORK
    ADD
        CONSTRAINT PK_WORK
            PRIMARY KEY (
                         emp_no,
                         work_date
                );

/* 공지사항 */
CREATE TABLE NOTICE (
                        notice_no NUMBER NOT NULL, /* 공지사항번호 */
                        emp_no CHAR(10), /* 사원번호 */
                        notice_title VARCHAR2(100), /* 제목 */
                        notice_date DATE, /* 작성일자 */
                        notice_content VARCHAR2(400), /* 내용 */
                        notice_view NUMBER /* 조회수 */
);

COMMENT ON TABLE NOTICE IS '공지사항';

COMMENT ON COLUMN NOTICE.notice_no IS '공지사항번호';

COMMENT ON COLUMN NOTICE.emp_no IS '사원번호';

COMMENT ON COLUMN NOTICE.notice_title IS '제목';

COMMENT ON COLUMN NOTICE.notice_date IS '작성일자';

COMMENT ON COLUMN NOTICE.notice_content IS '내용';

COMMENT ON COLUMN NOTICE.notice_view IS '조회수';

CREATE UNIQUE INDEX PK_NOTICE
	ON NOTICE (
		notice_no ASC
	);

ALTER TABLE NOTICE
    ADD
        CONSTRAINT PK_NOTICE
            PRIMARY KEY (
                         notice_no
                );

/* 일정 */
CREATE TABLE CALENDAR (
                          calendar_no NUMBER NOT NULL, /* 일정번호 */
                          emp_no CHAR(10), /* 사원번호 */
                          calendar_title VARCHAR2(100), /* 일정명 */
                          calendar_content VARCHAR2(300), /* 내용 */
                          calendar_date DATE, /* 작성일자 */
                          calendar_start DATE, /* 일정시작일 */
                          calendar_end DATE /* 일정종료일 */
);

COMMENT ON TABLE CALENDAR IS '일정';

COMMENT ON COLUMN CALENDAR.calendar_no IS '일정번호';

COMMENT ON COLUMN CALENDAR.emp_no IS '사원번호';

COMMENT ON COLUMN CALENDAR.calendar_title IS '일정명';

COMMENT ON COLUMN CALENDAR.calendar_content IS '내용';

COMMENT ON COLUMN CALENDAR.calendar_date IS '작성일자';

COMMENT ON COLUMN CALENDAR.calendar_start IS '일정시작일';

COMMENT ON COLUMN CALENDAR.calendar_end IS '일정종료일';

CREATE UNIQUE INDEX PK_CALENDAR
	ON CALENDAR (
		calendar_no ASC
	);

ALTER TABLE CALENDAR
    ADD
        CONSTRAINT PK_CALENDAR
            PRIMARY KEY (
                         calendar_no
                );

/* 첨부파일 */
CREATE TABLE ATTATCH (
                         attatch_code NUMBER NOT NULL, /* 파일코드 */
                         notice_no NUMBER, /* 공지사항번호 */
                         attatch_name VARCHAR2(100) /* 파일명 */
);

COMMENT ON TABLE ATTATCH IS '첨부파일';

COMMENT ON COLUMN ATTATCH.attatch_code IS '파일코드';

COMMENT ON COLUMN ATTATCH.notice_no IS '공지사항번호';

COMMENT ON COLUMN ATTATCH.attatch_name IS '파일명';

CREATE UNIQUE INDEX PK_ATTATCH
	ON ATTATCH (
		attatch_code ASC
	);

ALTER TABLE ATTATCH
    ADD
        CONSTRAINT PK_ATTATCH
            PRIMARY KEY (
                         attatch_code
                );

/* 일반물품발주 */
CREATE TABLE BUY_ITEM (
                          item_no CHAR(5) NOT NULL, /* 일반물품코드 */
                          or_code NUMBER, /* 발주번호 */
                          item_name VARCHAR2(100), /* 일반물품명 */
                          item_qty NUMBER, /* 수량 */
                          item_cost NUMBER, /* 단가 */
                          item_lprod VARCHAR2(100), /* 분류명 */
                          item_stand_size VARCHAR2(10) /* 규격단위 */
);

COMMENT ON TABLE BUY_ITEM IS '일반물품발주';

COMMENT ON COLUMN BUY_ITEM.item_no IS '일반물품코드';

COMMENT ON COLUMN BUY_ITEM.or_code IS '발주번호';

COMMENT ON COLUMN BUY_ITEM.item_name IS '일반물품명';

COMMENT ON COLUMN BUY_ITEM.item_qty IS '수량';

COMMENT ON COLUMN BUY_ITEM.item_cost IS '단가';

COMMENT ON COLUMN BUY_ITEM.item_lprod IS '분류명';

COMMENT ON COLUMN BUY_ITEM.item_stand_size IS '규격단위';

CREATE UNIQUE INDEX PK_BUY_ITEM
	ON BUY_ITEM (
		item_no ASC
	);

ALTER TABLE BUY_ITEM
    ADD
        CONSTRAINT PK_BUY_ITEM
            PRIMARY KEY (
                         item_no
                );

/* 급여책정 */
CREATE TABLE SALARY_CAL (
                            dep_no CHAR(2) NOT NULL, /* 부서코드 */
                            pos_no CHAR(5) NOT NULL, /* 직급코드 */
                            salary NUMBER /* 기본급여 */
);

COMMENT ON TABLE SALARY_CAL IS '급여책정';

COMMENT ON COLUMN SALARY_CAL.dep_no IS '부서코드';

COMMENT ON COLUMN SALARY_CAL.pos_no IS '직급코드';

COMMENT ON COLUMN SALARY_CAL.salary IS '기본급여';

CREATE UNIQUE INDEX PK_SALARY_CAL
	ON SALARY_CAL (
		dep_no ASC,
		pos_no ASC
	);

ALTER TABLE SALARY_CAL
    ADD
        CONSTRAINT PK_SALARY_CAL
            PRIMARY KEY (
                         dep_no,
                         pos_no
                );

/* 원자재반품출고 */
CREATE TABLE MATERIAL_OUT (
                              met_out_no NUMBER NOT NULL, /* 원자재반품출고번호 */
                              retmat_no NUMBER, /* 반품원자재번호 */
                              mat_sector_no CHAR(4), /* 원자재창고구역번호 */
                              met_out_date DATE /* 출고일자 */
);

COMMENT ON TABLE MATERIAL_OUT IS '원자재반품출고';

COMMENT ON COLUMN MATERIAL_OUT.met_out_no IS '원자재반품출고번호';

COMMENT ON COLUMN MATERIAL_OUT.retmat_no IS '반품원자재번호';

COMMENT ON COLUMN MATERIAL_OUT.mat_sector_no IS '원자재창고구역번호';

COMMENT ON COLUMN MATERIAL_OUT.met_out_date IS '출고일자';

CREATE UNIQUE INDEX PK_MATERIAL_OUT
	ON MATERIAL_OUT (
		met_out_no ASC
	);

ALTER TABLE MATERIAL_OUT
    ADD
        CONSTRAINT PK_MATERIAL_OUT
            PRIMARY KEY (
                         met_out_no
                );

/* 반품일반목록 */
CREATE TABLE BUY_RET_I (
                           retitem_no NUMBER NOT NULL, /* 반품일반번호 */
                           item_no CHAR(5), /* 일반물품코드 */
                           ret_no NUMBER, /* 반품서번호 */
                           retitem_qty NUMBER /* 반품수량 */
);

COMMENT ON TABLE BUY_RET_I IS '반품일반목록';

COMMENT ON COLUMN BUY_RET_I.retitem_no IS '반품일반번호';

COMMENT ON COLUMN BUY_RET_I.item_no IS '일반물품코드';

COMMENT ON COLUMN BUY_RET_I.ret_no IS '반품서번호';

COMMENT ON COLUMN BUY_RET_I.retitem_qty IS '반품수량';

CREATE UNIQUE INDEX PK_BUY_RET_I
	ON BUY_RET_I (
		retitem_no ASC
	);

ALTER TABLE BUY_RET_I
    ADD
        CONSTRAINT PK_BUY_RET_I
            PRIMARY KEY (
                         retitem_no
                );

/* 권한목록 */
CREATE TABLE ROLES (
                       role_name VARCHAR2(20) NOT NULL, /* 권한명 */
                       description VARCHAR2(100) /* 권한명칭 */
);

COMMENT ON TABLE ROLES IS '권한목록';

COMMENT ON COLUMN ROLES.role_name IS '권한명';

COMMENT ON COLUMN ROLES.description IS '권한명칭';

CREATE UNIQUE INDEX PK_ROLES
	ON ROLES (
		role_name ASC
	);

ALTER TABLE ROLES
    ADD
        CONSTRAINT PK_ROLES
            PRIMARY KEY (
                         role_name
                );

/* 사원권한 */
CREATE TABLE ROLE_EMP (
                          emp_no CHAR(10) NOT NULL, /* 사원번호 */
                          role_name VARCHAR2(20) NOT NULL /* 권한명 */
);

COMMENT ON TABLE ROLE_EMP IS '사원권한';

COMMENT ON COLUMN ROLE_EMP.emp_no IS '사원번호';

COMMENT ON COLUMN ROLE_EMP.role_name IS '권한명';

CREATE UNIQUE INDEX PK_ROLE_EMP
	ON ROLE_EMP (
		emp_no ASC,
		role_name ASC
	);

ALTER TABLE ROLE_EMP
    ADD
        CONSTRAINT PK_ROLE_EMP
            PRIMARY KEY (
                         emp_no,
                         role_name
                );

ALTER TABLE STORE
    ADD
        CONSTRAINT FK_LSTORE_TO_STORE
            FOREIGN KEY (
                         lstore_no
                )
                REFERENCES LSTORE (
                                   lstore_no
                    );

ALTER TABLE EMPLOYEE
    ADD
        CONSTRAINT FK_DEPARTMENT_TO_EMPLOYEE
            FOREIGN KEY (
                         dep_no
                )
                REFERENCES DEPARTMENT (
                                       dep_no
                    );

ALTER TABLE EMPLOYEE
    ADD
        CONSTRAINT FK_POSITION_TO_EMPLOYEE
            FOREIGN KEY (
                         pos_no
                )
                REFERENCES POSITION (
                                     pos_no
                    );

ALTER TABLE DEPARTMENT
    ADD
        CONSTRAINT FK_DEPARTMENT_TO_DEPARTMENT
            FOREIGN KEY (
                         dep_no2
                )
                REFERENCES DEPARTMENT (
                                       dep_no
                    );

ALTER TABLE POSITION
    ADD
        CONSTRAINT FK_POSITION_TO_POSITION
            FOREIGN KEY (
                         pos_no2
                )
                REFERENCES POSITION (
                                     pos_no
                    );

ALTER TABLE MATERIAL
    ADD
        CONSTRAINT FK_LPROD_TO_MATERIAL
            FOREIGN KEY (
                         lprod_no
                )
                REFERENCES LPROD (
                                  lprod_no
                    );

ALTER TABLE OR_ESTIMATE
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_OR_ESTIMATE
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE OR_ESTIMATE
    ADD
        CONSTRAINT FK_BUYER_TO_OR_ESTIMATE
            FOREIGN KEY (
                         buyer_no
                )
                REFERENCES BUYER (
                                  buyer_no
                    );

ALTER TABLE ORDERP
    ADD
        CONSTRAINT FK_BUYER_TO_ORDERP
            FOREIGN KEY (
                         buyer_no
                )
                REFERENCES BUYER (
                                  buyer_no
                    );

ALTER TABLE ORDERP
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_ORDERP
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE ORDERP
    ADD
        CONSTRAINT FK_OR_ESTIMATE_TO_ORDERP
            FOREIGN KEY (
                         est_no
                )
                REFERENCES OR_ESTIMATE (
                                        est_no
                    );

ALTER TABLE PROD
    ADD
        CONSTRAINT FK_LPROD_TO_PROD
            FOREIGN KEY (
                         lprod_no
                )
                REFERENCES LPROD (
                                  lprod_no
                    );

ALTER TABLE BOM
    ADD
        CONSTRAINT FK_MATERIAL_TO_BOM
            FOREIGN KEY (
                         mat_no
                )
                REFERENCES MATERIAL (
                                     mat_no
                    );

ALTER TABLE BOM
    ADD
        CONSTRAINT FK_PROD_TO_BOM
            FOREIGN KEY (
                         prod_no
                )
                REFERENCES PROD (
                                 prod_no
                    );

ALTER TABLE ANNOUNCEMENT
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_ANNOUNCEMENT
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE ANNOUNCEMENT
    ADD
        CONSTRAINT FK_POSITION_TO_ANNOUNCEMENT
            FOREIGN KEY (
                         pos_no
                )
                REFERENCES POSITION (
                                     pos_no
                    );

ALTER TABLE ANNOUNCEMENT
    ADD
        CONSTRAINT FK_DEPARTMENT_TO_ANNOUNCEMENT
            FOREIGN KEY (
                         dep_no
                )
                REFERENCES DEPARTMENT (
                                       dep_no
                    );

ALTER TABLE OR_DELIVERY
    ADD
        CONSTRAINT FK_ORDERP_TO_OR_DELIVERY
            FOREIGN KEY (
                         OR_no
                )
                REFERENCES ORDERP (
                                   OR_no
                    );

ALTER TABLE OR_DELIVERY
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_OR_DELIVERY
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE OR_SHIPMENT
    ADD
        CONSTRAINT FK_OR_DELIVERY_TO_OR_SHIPMENT
            FOREIGN KEY (
                         deliv_no
                )
                REFERENCES OR_DELIVERY (
                                        deliv_no
                    );

ALTER TABLE OR_SHIPMENT
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_OR_SHIPMENT
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE OR_TRANS
    ADD
        CONSTRAINT FK_OR_SHIPMENT_TO_OR_TRANS
            FOREIGN KEY (
                         ship_no
                )
                REFERENCES OR_SHIPMENT (
                                        ship_no
                    );

ALTER TABLE OR_RETURN_P
    ADD
        CONSTRAINT FK_OR_SHIPMENT_TO_OR_RETURN_P
            FOREIGN KEY (
                         ship_no
                )
                REFERENCES OR_SHIPMENT (
                                        ship_no
                    );

ALTER TABLE OR_RETURN_P
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_OR_RETURN_P
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE PDUCT_OR
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_PDUCT_OR
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE BUY_DOCUMENT
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_BUY_DOCUMENT
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE BUY_ORDER
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_BUY_ORDER
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE BUY_ORDER
    ADD
        CONSTRAINT FK_BUYER_TO_BUY_ORDER
            FOREIGN KEY (
                         buyer_no
                )
                REFERENCES BUYER (
                                  buyer_no
                    );

ALTER TABLE BUY_PURCHASE
    ADD
        CONSTRAINT FK_BUY_ORDER_TO_BUY_PURCHASE
            FOREIGN KEY (
                         or_code
                )
                REFERENCES BUY_ORDER (
                                      or_code
                    );

ALTER TABLE BUY_PURCHASE
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_BUY_PURCHASE
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE BUY_RETURN
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_BUY_RETURN
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE BUY_RETURN
    ADD
        CONSTRAINT FK_BUY_PURCHASE_TO_BUY_RETURN
            FOREIGN KEY (
                         pur_code
                )
                REFERENCES BUY_PURCHASE (
                                         pur_code
                    );

ALTER TABLE ACCOUNT
    ADD
        CONSTRAINT FK_STANDARD_ACC_TO_ACCOUNT
            FOREIGN KEY (
                         stand_no
                )
                REFERENCES STANDARD_ACC (
                                         stand_no
                    );

ALTER TABLE CHIT
    ADD
        CONSTRAINT FK_BUYER_TO_CHIT
            FOREIGN KEY (
                         buyer_no
                )
                REFERENCES BUYER (
                                  buyer_no
                    );

ALTER TABLE CHIT
    ADD
        CONSTRAINT FK_DEPARTMENT_TO_CHIT
            FOREIGN KEY (
                         dep_no
                )
                REFERENCES DEPARTMENT (
                                       dep_no
                    );

ALTER TABLE CHIT
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_CHIT
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE SELLCHIT
    ADD
        CONSTRAINT FK_OR_SHIPMENT_TO_SELLCHIT
            FOREIGN KEY (
                         ship_no
                )
                REFERENCES OR_SHIPMENT (
                                        ship_no
                    );

ALTER TABLE SELLCHIT
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_SELLCHIT
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE BUYCHIT
    ADD
        CONSTRAINT FK_BUY_PURCHASE_TO_BUYCHIT
            FOREIGN KEY (
                         pur_code
                )
                REFERENCES BUY_PURCHASE (
                                         pur_code
                    );

ALTER TABLE BUYCHIT
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_BUYCHIT
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE FIXASSETS
    ADD
        CONSTRAINT FK_ACCOUNT_TO_FIXASSETS
            FOREIGN KEY (
                         account_no
                )
                REFERENCES ACCOUNT (
                                    account_no
                    );

ALTER TABLE FIXASSETS
    ADD
        CONSTRAINT FK_AMORTIZATION_TO_FIXASSETS
            FOREIGN KEY (
                         life_year
                )
                REFERENCES AMORTIZATION (
                                         life_year
                    );

ALTER TABLE AMOR_MEMORY
    ADD
        CONSTRAINT FK_FIXASSETS_TO_AMOR_MEMORY
            FOREIGN KEY (
                         fixassets_no
                )
                REFERENCES FIXASSETS (
                                      fixassets_no
                    );

ALTER TABLE OR_PLIST
    ADD
        CONSTRAINT FK_PROD_TO_OR_PLIST
            FOREIGN KEY (
                         prod_no
                )
                REFERENCES PROD (
                                 prod_no
                    );

ALTER TABLE OR_PLIST
    ADD
        CONSTRAINT FK_ORDERP_TO_OR_PLIST
            FOREIGN KEY (
                         OR_no
                )
                REFERENCES ORDERP (
                                   OR_no
                    );

ALTER TABLE OR_EST_P
    ADD
        CONSTRAINT FK_PROD_TO_OR_EST_P
            FOREIGN KEY (
                         prod_no
                )
                REFERENCES PROD (
                                 prod_no
                    );

ALTER TABLE OR_EST_P
    ADD
        CONSTRAINT FK_OR_ESTIMATE_TO_OR_EST_P
            FOREIGN KEY (
                         est_no
                )
                REFERENCES OR_ESTIMATE (
                                        est_no
                    );

ALTER TABLE OR_RET_PLIST
    ADD
        CONSTRAINT FK_OR_RETURN_P_TO_OR_RET_PLIST
            FOREIGN KEY (
                         or_retp_no
                )
                REFERENCES OR_RETURN_P (
                                        or_retp_no
                    );

ALTER TABLE OR_RET_PLIST
    ADD
        CONSTRAINT FK_OR_PLIST_TO_OR_RET_PLIST
            FOREIGN KEY (
                         ORP_NO
                )
                REFERENCES OR_PLIST (
                                     ORP_NO
                    );

ALTER TABLE BUY_DOC_MAT
    ADD
        CONSTRAINT FK_MATERIAL_TO_BUY_DOC_MAT
            FOREIGN KEY (
                         mat_no
                )
                REFERENCES MATERIAL (
                                     mat_no
                    );

ALTER TABLE BUY_DOC_MAT
    ADD
        CONSTRAINT FK_BUY_DOCUMENT_TO_BUY_DOC_MAT
            FOREIGN KEY (
                         buy_no
                )
                REFERENCES BUY_DOCUMENT (
                                         buy_no
                    );

ALTER TABLE BUY_OR_MAT
    ADD
        CONSTRAINT FK_MATERIAL_TO_BUY_OR_MAT
            FOREIGN KEY (
                         mat_no
                )
                REFERENCES MATERIAL (
                                     mat_no
                    );

ALTER TABLE BUY_OR_MAT
    ADD
        CONSTRAINT FK_BUY_ORDER_TO_BUY_OR_MAT
            FOREIGN KEY (
                         or_code
                )
                REFERENCES BUY_ORDER (
                                      or_code
                    );

ALTER TABLE BUY_OR_MAT
    ADD
        CONSTRAINT FK_BUY_DOCUMENT_TO_BUY_OR_MAT
            FOREIGN KEY (
                         buy_no
                )
                REFERENCES BUY_DOCUMENT (
                                         buy_no
                    );

ALTER TABLE PROD_IN
    ADD
        CONSTRAINT FK_PROD_TO_PROD_IN
            FOREIGN KEY (
                         prod_no
                )
                REFERENCES PROD (
                                 prod_no
                    );

ALTER TABLE PROD_IN
    ADD
        CONSTRAINT FK_PROD_SECTOR_TO_PROD_IN
            FOREIGN KEY (
                         prod_sector
                )
                REFERENCES PROD_SECTOR (
                                        prod_sector
                    );

ALTER TABLE PROD_IN
    ADD
        CONSTRAINT FK_PDUCT_LIST_TO_PROD_IN
            FOREIGN KEY (
                         pduct_no
                )
                REFERENCES PDUCT_LIST (
                                       pduct_no
                    );

ALTER TABLE PROD_IN
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_PROD_IN
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE PROD_OUT
    ADD
        CONSTRAINT FK_OR_DELIVERY_TO_PROD_OUT
            FOREIGN KEY (
                         deliv_no
                )
                REFERENCES OR_DELIVERY (
                                        deliv_no
                    );

ALTER TABLE PROD_OUT
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_PROD_OUT
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE PROD_OUT
    ADD
        CONSTRAINT FK_PROD_SECTOR_TO_PROD_OUT
            FOREIGN KEY (
                         prod_sector
                )
                REFERENCES PROD_SECTOR (
                                        prod_sector
                    );

ALTER TABLE MATERIAL_IN
    ADD
        CONSTRAINT FK_MAT_SECTOR_TO_MATERIAL_IN
            FOREIGN KEY (
                         mat_sector_no
                )
                REFERENCES MAT_SECTOR (
                                       mat_sector_no
                    );

ALTER TABLE MATERIAL_IN
    ADD
        CONSTRAINT FK_BUY_PURCHASE_TO_MATERIAL_IN
            FOREIGN KEY (
                         pur_code
                )
                REFERENCES BUY_PURCHASE (
                                         pur_code
                    );

ALTER TABLE MATERIAL_IN
    ADD
        CONSTRAINT FK_BUY_OR_MAT_TO_MATERIAL_IN
            FOREIGN KEY (
                         ormat_code
                )
                REFERENCES BUY_OR_MAT (
                                       ormat_code
                    );

ALTER TABLE MATERIAL_IN
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_MATERIAL_IN
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE BUY_RET_M
    ADD
        CONSTRAINT FK_BUY_RETURN_TO_BUY_RET_M
            FOREIGN KEY (
                         ret_no
                )
                REFERENCES BUY_RETURN (
                                       ret_no
                    );

ALTER TABLE BUY_RET_M
    ADD
        CONSTRAINT FK_BUY_OR_MAT_TO_BUY_RET_M
            FOREIGN KEY (
                         ormat_code
                )
                REFERENCES BUY_OR_MAT (
                                       ormat_code
                    );

ALTER TABLE MAT_MF_OUT
    ADD
        CONSTRAINT FK_MATERIAL_TO_MAT_MF_OUT
            FOREIGN KEY (
                         mat_no
                )
                REFERENCES MATERIAL (
                                     mat_no
                    );

ALTER TABLE MAT_MF_OUT
    ADD
        CONSTRAINT FK_PDUCT_LIST_TO_MAT_MF_OUT
            FOREIGN KEY (
                         pduct_no
                )
                REFERENCES PDUCT_LIST (
                                       pduct_no
                    );

ALTER TABLE MAT_SECTOR
    ADD
        CONSTRAINT FK_MATERIAL_TO_MAT_SECTOR
            FOREIGN KEY (
                         mat_no
                )
                REFERENCES MATERIAL (
                                     mat_no
                    );

ALTER TABLE MAT_SECTOR
    ADD
        CONSTRAINT FK_SECTOR_TO_MAT_SECTOR
            FOREIGN KEY (
                         sector_no
                )
                REFERENCES SECTOR (
                                   sector_no
                    );

ALTER TABLE PROD_SECTOR
    ADD
        CONSTRAINT FK_PROD_TO_PROD_SECTOR
            FOREIGN KEY (
                         prod_no
                )
                REFERENCES PROD (
                                 prod_no
                    );

ALTER TABLE PROD_SECTOR
    ADD
        CONSTRAINT FK_SECTOR_TO_PROD_SECTOR
            FOREIGN KEY (
                         sector_no
                )
                REFERENCES SECTOR (
                                   sector_no
                    );

ALTER TABLE PROD_RET_IN
    ADD
        CONSTRAINT FK_OR_RET_PLIST_TO_PROD_RET_IN
            FOREIGN KEY (
                         ret_list_no
                )
                REFERENCES OR_RET_PLIST (
                                         ret_list_no
                    );

ALTER TABLE PROD_RET_IN
    ADD
        CONSTRAINT FK_PROD_SECTOR_TO_PROD_RET_IN
            FOREIGN KEY (
                         prod_sector
                )
                REFERENCES PROD_SECTOR (
                                        prod_sector
                    );

ALTER TABLE MAT_DISPOSAL
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_MAT_DISPOSAL
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE MAT_DISPOSAL
    ADD
        CONSTRAINT FK_BUY_OR_MAT_TO_MAT_DISPOSAL
            FOREIGN KEY (
                         ormat_code
                )
                REFERENCES BUY_OR_MAT (
                                       ormat_code
                    );

ALTER TABLE MAT_DISPOSAL
    ADD
        CONSTRAINT FK_MATERIAL_TO_MAT_DISPOSAL
            FOREIGN KEY (
                         mat_no
                )
                REFERENCES MATERIAL (
                                     mat_no
                    );

ALTER TABLE MAT_DISPOSAL
    ADD
        CONSTRAINT FK_PROD_REPORT_TO_MAT_DISPOSAL
            FOREIGN KEY (
                         rep_no
                )
                REFERENCES PROD_REPORT (
                                        rep_no
                    );

ALTER TABLE SECTOR
    ADD
        CONSTRAINT FK_STORE_TO_SECTOR
            FOREIGN KEY (
                         store_no
                )
                REFERENCES STORE (
                                  store_no
                    );

ALTER TABLE CHITLIST
    ADD
        CONSTRAINT FK_CHIT_TO_CHITLIST
            FOREIGN KEY (
                         chit_no
                )
                REFERENCES CHIT (
                                 chit_no
                    );

ALTER TABLE PROD_REPORT
    ADD
        CONSTRAINT FK_PDUCT_OR_TO_PROD_REPORT
            FOREIGN KEY (
                         porder_no
                )
                REFERENCES PDUCT_OR (
                                     porder_no
                    );

ALTER TABLE PROD_REPORT
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_PROD_REPORT
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE PDUCT_LIST
    ADD
        CONSTRAINT FK_PDUCT_OR_TO_PDUCT_LIST
            FOREIGN KEY (
                         porder_no
                )
                REFERENCES PDUCT_OR (
                                     porder_no
                    );

ALTER TABLE PDUCT_LIST
    ADD
        CONSTRAINT FK_PROD_TO_PDUCT_LIST
            FOREIGN KEY (
                         prod_no
                )
                REFERENCES PROD (
                                 prod_no
                    );

ALTER TABLE PROD_DIS
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_PROD_DIS
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE PROD_DIS
    ADD
        CONSTRAINT FK_OR_RET_PLIST_TO_PROD_DIS
            FOREIGN KEY (
                         ret_list_no
                )
                REFERENCES OR_RET_PLIST (
                                         ret_list_no
                    );

ALTER TABLE PROD_DIS
    ADD
        CONSTRAINT FK_PROD_TO_PROD_DIS
            FOREIGN KEY (
                         prod_no
                )
                REFERENCES PROD (
                                 prod_no
                    );

ALTER TABLE EMP_CERT
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_EMP_CERT
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE EMP_CAREER
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_EMP_CAREER
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE EDUCATION
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_EDUCATION
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE SALARY_TRANS
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_SALARY_TRANS
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE RETIREMENT
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_RETIREMENT
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE WORK
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_WORK
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE NOTICE
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_NOTICE
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE CALENDAR
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_CALENDAR
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE ATTATCH
    ADD
        CONSTRAINT FK_NOTICE_TO_ATTATCH
            FOREIGN KEY (
                         notice_no
                )
                REFERENCES NOTICE (
                                   notice_no
                    );

ALTER TABLE BUY_ITEM
    ADD
        CONSTRAINT FK_BUY_ORDER_TO_BUY_ITEM
            FOREIGN KEY (
                         or_code
                )
                REFERENCES BUY_ORDER (
                                      or_code
                    );

ALTER TABLE SALARY_CAL
    ADD
        CONSTRAINT FK_DEPARTMENT_TO_SALARY_CAL
            FOREIGN KEY (
                         dep_no
                )
                REFERENCES DEPARTMENT (
                                       dep_no
                    );

ALTER TABLE SALARY_CAL
    ADD
        CONSTRAINT FK_POSITION_TO_SALARY_CAL
            FOREIGN KEY (
                         pos_no
                )
                REFERENCES POSITION (
                                     pos_no
                    );

ALTER TABLE MATERIAL_OUT
    ADD
        CONSTRAINT FK_BUY_RET_M_TO_MATERIAL_OUT
            FOREIGN KEY (
                         retmat_no
                )
                REFERENCES BUY_RET_M (
                                      retmat_no
                    );

ALTER TABLE MATERIAL_OUT
    ADD
        CONSTRAINT FK_MAT_SECTOR_TO_MATERIAL_OUT
            FOREIGN KEY (
                         mat_sector_no
                )
                REFERENCES MAT_SECTOR (
                                       mat_sector_no
                    );

ALTER TABLE BUY_RET_I
    ADD
        CONSTRAINT FK_BUY_RETURN_TO_BUY_RET_I
            FOREIGN KEY (
                         ret_no
                )
                REFERENCES BUY_RETURN (
                                       ret_no
                    );

ALTER TABLE BUY_RET_I
    ADD
        CONSTRAINT FK_BUY_ITEM_TO_BUY_RET_I
            FOREIGN KEY (
                         item_no
                )
                REFERENCES BUY_ITEM (
                                     item_no
                    );

ALTER TABLE ROLE_EMP
    ADD
        CONSTRAINT FK_EMPLOYEE_TO_ROLE_EMP
            FOREIGN KEY (
                         emp_no
                )
                REFERENCES EMPLOYEE (
                                     emp_no
                    );

ALTER TABLE ROLE_EMP
    ADD
        CONSTRAINT FK_ROLES_TO_ROLE_EMP
            FOREIGN KEY (
                         role_name
                )
                REFERENCES ROLES (
                                  role_name
                    );