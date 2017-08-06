-- 코디
CREATE TABLE CODI (
	seq         NUMBER           PRIMARY KEY, -- 코디식별번호
	members_id  VARCHAR(15 CHAR) NOT NULL,     -- 회원식별번호
	category    NUMBER(1)        NOT NULL, -- 코디카테고리
	name        VARCHAR(10 CHAR) NOT NULL, -- 코디이름
	writer      VARCHAR(8 CHAR)  NULL,     -- 작성자닉네임
	image_name  VARCHAR(100)     NOT NULL, -- 파일명
	image_src   VARCHAR(200)     NOT NULL, -- 파일경로
	image_size  VARCHAR(100)     NOT NULL, -- 파일크기
	o_item_no   NUMBER           NULL,     -- 아우터상품번호
	t_item_no   NUMBER           NULL,     -- 상의상품번호
	b_item_no   NUMBER           NULL,     -- 하의상품번호
	s_item_no   NUMBER           NULL,     -- 신발상품번호
	g_item_no   NUMBER           NULL,     -- 가방상품번호
	a_item_no   NUMBER           NULL,     -- 악세사리상품번호
	info        VARCHAR(200)     NOT NULL, -- 코디설명
	price       NUMBER           NOT NULL, -- 코디가격
	liked       NUMBER DEFAULT 0 NOT NULL, -- 좋아요
	regist_date DATE             NOT NULL, -- 코디등록일
	delete_date DATE             NULL      -- 코디삭제일
);
CREATE SEQUENCE CODI_SEQ;
-- 코디
ALTER TABLE CODI
	ADD
		CONSTRAINT FK_MEMBERS_TO_CODI -- 회원 -> 코디
		FOREIGN KEY (
			members_id -- 회원식별번호
		)
		REFERENCES MEMBERS ( -- 회원
			id -- 회원식별번호
		);
-- 코디 댓글
CREATE TABLE CODI_COMMENT (
	RE_NO         NUMBER             PRIMARY KEY, -- 댓글관리번호
	codi_seq      NUMBER             NOT NULL, -- 코디식별번호
	nickname      VARCHAR(50)        NOT NULL, -- 작성자닉네임
	CONTENT       VARCHAR2(250 CHAR) NOT NULL, -- 댓글작성내용
	regi_date     DATE               NOT NULL, -- 댓글작성일
	update_date   DATE               NULL,     -- 댓글수정일
	delete_date   DATE               NULL,     -- 댓글삭제일
	delete_reason VARCHAR(50)        NULL,     -- 삭제사유
	likes         NUMBER DEFAULT 0   NULL      -- 댓글추천수
);
CREATE SEQUENCE CODI_COMMENT_SEQ;
-- 코디 댓글
ALTER TABLE CODI_COMMENT
	ADD
		CONSTRAINT FK_CODI_TO_CODI_COMMENT -- 코디 -> 코디 댓글
		FOREIGN KEY (
			codi_seq -- 코디식별번호
		)
		REFERENCES CODI ( -- 코디
			seq -- 코디식별번호
		);
-- 회원 배송지 주소록
CREATE TABLE ADDRESS_BOOK (
	seq             NUMBER           PRIMARY KEY, -- 식별번호
	members_id      VARCHAR(15 CHAR) NOT NULL, -- 회원식별번호
	name            VARCHAR(5 CHAR)  NULL,     -- 배송지이름
	recipient_name  VARCHAR(10 CHAR) NULL,     -- 받는사람이름
	recipient_phone VARCHAR(12 CHAR) NULL,     -- 받는사람전화번호
	zipcode         VARCHAR(8 CHAR)  NOT NULL, -- 우편번호
	address         VARCHAR(20 CHAR) NOT NULL, -- 주소
	address_detail  VARCHAR(30 CHAR) NOT NULL, -- 상세주소
	is_default      NUMBER(1)        NULL,     -- 기본배송지여부
	regist_date     DATE             NOT NULL, -- 등록일
	update_date     DATE             NULL      -- 수정일
);
CREATE SEQUENCE ADDRESS_BOOK_SEQ;
-- 회원 배송지 주소록
ALTER TABLE ADDRESS_BOOK
	ADD
		CONSTRAINT FK_MEMBERS_TO_ADDRESS_BOOK -- 회원 -> 회원 배송지 주소록
		FOREIGN KEY (
			members_id -- 회원식별번호
		)
		REFERENCES MEMBERS ( -- 회원
			id -- 회원식별번호
		);
-- 장바구니
CREATE TABLE MEMBERS_BASCKET (
	seq                NUMBER      		PRIMARY KEY, -- 식별번호
	members_id         VARCHAR(15 CHAR) NOT NULL, -- 회원식별번호
	product_detail_seq NUMBER      		NOT NULL, -- 상품옵션식별번호
	product_seq        NUMBER      		NOT NULL, -- 상품식별번호
	product_name       VARCHAR(50) 		NOT NULL, -- 상품명
	bascket_count      NUMBER      		NOT NULL  -- 수량
);
CREATE SEQUENCE MEMBERS_BASCKET_SEQ;
-- 장바구니
ALTER TABLE MEMBERS_BASCKET
	ADD
		CONSTRAINT FK_PRODUCT_DETAIL_MEMBASCKET -- 상품옵션 -> 장바구니
		FOREIGN KEY (
			product_detail_seq -- 상품옵션식별번호
		)
		REFERENCES PRODUCT_DETAIL ( -- 상품옵션
			seq -- 식별번호
		);

-- 장바구니
ALTER TABLE MEMBERS_BASCKET
	ADD
		CONSTRAINT FK_PRODUCT_DETAIL_TO_MEMBERS_BASCKET -- 상품옵션 -> 장바구니
		FOREIGN KEY (
			product_detail_seq -- 상품옵션식별번호
		)
		REFERENCES PRODUCT_DETAIL ( -- 상품옵션
			seq -- 식별번호
		);
----------------------------------------------------------------

-- 회원
CREATE TABLE MEMBERS (
	id             VARCHAR(15 CHAR) 	PRIMARY KEY, -- 아이디
	pwd            VARCHAR(50 CHAR) 	NOT NULL, -- 비밀번호
	types          CHAR                 NOT NULL, -- 회원타입
	name           VARCHAR(10 CHAR)		NOT NULL, -- 이름
	nickname       VARCHAR(8 CHAR) 		NOT NULL, -- 별명
	email          VARCHAR(30 CHAR) 	NOT NULL, -- 이메일
	is_rec_mail    NUMBER(1)        	NULL,     -- 이메일수신여부
	phone          VARCHAR(12 CHAR) 	NOT NULL, -- 전화번호
	is_rec_sms     NUMBER(1)       		NULL,     -- sms수신여부
	birth          VARCHAR(10)     		NOT NULL, -- 생년월일
	gender         NUMBER(1)  DEFAULT 1 NOT NULL, -- 성별
	zipcode        VARCHAR(8 CHAR)  	NOT NULL, -- 우편번호
	address        VARCHAR(20 CHAR) 	NOT NULL, -- 주소
	address_detail VARCHAR(30 CHAR) 	NOT NULL, -- 상세주소
	f_brand        VARCHAR(30 CHAR) 	NULL,     -- 선호브랜드
	followers      NUMBER           	NULL,     -- 팔로워수
	f_color        NUMBER           	NULL,     -- 선호색상
	job            VARCHAR(20 CHAR) 	NULL,     -- 직업
	join_date      DATE             	NOT NULL, -- 가입일
	is_member      NUMBER(1)  DEFAULT 1 NOT NULL  -- 회원여부
);
-- 관리자
CREATE TABLE ADMIN (
	id               VARCHAR(15 CHAR) PRIMARY KEY, -- 아이디(식별번호)
	pwd              VARCHAR(50 CHAR) NOT NULL, -- 비밀번호
	name             VARCHAR(10 CHAR) NOT NULL, -- 이름
	birth            VARCHAR(10 CHAR) NOT NULL, -- 생년월일
	email            VARCHAR(30 CHAR) NOT NULL, -- Email
	phone            VARCHAR(12 CHAR) NOT NULL, -- 전화번호
	authority        NUMBER           NOT NULL, -- 권한
	followers        NUMBER           NULL,     -- 팔로워수
	join_date        DATE             NOT NULL, -- 입사일
	resignation_date DATE             NULL,     -- 퇴사일
	is_resignation   NUMBER(1)        NOT NULL  -- 퇴사여부
);
-- 팔로우코디
CREATE TABLE FOLLOWING (
	seq        VARCHAR(15 CHAR)    NOT NULL, -- 회원식별번호
	members_id VARCHAR(15 CHAR)    NOT NULL, -- 코디네이터식별번호
	nickname   VARCHAR(100)		   NOT NULL  -- 코디별명
);
-- 팔로우코디
ALTER TABLE FOLLOWING
	ADD
		CONSTRAINT FK_MEMBERS_TO_FOLLOWING -- 회원 -> 팔로우코디
		FOREIGN KEY (
			seq -- 회원식별번호
		)
		REFERENCES MEMBERS ( -- 회원
			id -- 회원식별번호
		);
----------------------------------------------------------------

-- 상품
CREATE TABLE Product (
	seq       NUMBER          		PRIMARY KEY, -- 상품식별번호
	category  VARCHAR(10)     		NOT NULL, -- 상품종류
	brand     NUMBER          		NOT NULL, -- 제조사
	name      VARCHAR(30 CHAR) 		NOT NULL, -- 상품명
	orgcost   NUMBER(10)      		NOT NULL, -- 판매원가
	salecost  NUMBER(10)      		NOT NULL, -- 판매단가
	cuscost   NUMBER(10)       		NOT NULL, -- 소비자가
	regdate   DATE           	 	NOT NULL, -- 상품등록일
	info_img  VARCHAR(100)   	 	NOT NULL, -- 상품상세정보
	thumbnail VARCHAR(100)     		NOT NULL, -- 썸네일
	likes     NUMBER(5) DEFAULT 0 	NOT NULL  -- 추천수
);
CREATE SEQUENCE PRODUCT_SEQ;
-- 상품옵션
CREATE TABLE PRODUCT_DETAIL (
	seq        	 	NUMBER PRIMARY KEY, -- 식별번호
	product_seq	 	NUMBER NOT NULL, -- 상품식별번호
	color       	NUMBER NOT NULL, -- 색상
	product_szie    NUMBER NOT NULL, -- 사이즈
	stock       	NUMBER NOT NULL  -- 재고수량
);
CREATE SEQUENCE PRODUCT_DETAIL_SEQ;
-- 상품옵션
ALTER TABLE PRODUCT_DETAIL
	ADD
		CONSTRAINT FK_Product_TO_PRODUCT_DETAIL -- 상품 -> 상품옵션
		FOREIGN KEY (
			product_seq -- 상품식별번호
		)
		REFERENCES Product ( -- 상품
			seq -- 상품식별번호
		);
-- 상품이미지
CREATE TABLE Product_image (
	seq          NUMBER      PRIMARY KEY, -- 식별번호
	img_name     VARCHAR(50) NOT NULL, -- 이미지파일명
	img_filesize VARCHAR(50) NOT NULL, -- 이미지파일크기
	img_size     VARCHAR(50) NOT NULL  -- 이미지사이즈
);
-- 상품이미지
ALTER TABLE Product_image
	ADD
		CONSTRAINT FK_PRODUCT_DETAIL_TO_Product_image -- 상품옵션 -> 상품이미지
		FOREIGN KEY (
			seq -- 식별번호
		)
		REFERENCES PRODUCT_DETAIL ( -- 상품옵션
			seq -- 식별번호
		);
-- 관심상품
CREATE TABLE MEMBERS_LIKED (
	seq          NUMBER 		  PRIMARY KEY, -- 식별번호
	MEMBERS_id   VARCHAR(15 CHAR) NOT NULL, -- 회원식별번호
	item_seq     NUMBER 		  NOT NULL  -- 상품식별번호
);
CREATE SEQUENCE MEMBERS_LIKED_SEQ;
-- 관심상품
ALTER TABLE MEMBERS_LIKED
	ADD
		CONSTRAINT FK_MEMBERS_TO_MEMBERS_LIKED -- 회원 -> 관심상품
		FOREIGN KEY (
			MEMBERS_id -- 회원식별번호
		)
		REFERENCES MEMBERS ( -- 회원
			id -- 회원식별번호
		);

-- 관심상품
ALTER TABLE MEMBERS_LIKED
	ADD
		CONSTRAINT FK_Product_TO_MEMBERS_LIKED -- 상품 -> 관심상품
		FOREIGN KEY (
			item_seq -- 상품식별번호
		)
		REFERENCES Product ( -- 상품
			seq -- 상품식별번호
		);
-- 구매후기
CREATE TABLE PRODUCT_REVIEW (
	seq         NUMBER           PRIMARY KEY, -- 식별번호
	product_seq NUMBER           NOT NULL, -- 상품식별번호
	wrtier      VARCHAR(10 CHAR) NOT NULL, -- 작성자닉네임
	content     CLOB             NOT NULL, -- 리뷰내용
	like_count  NUMBER           NULL,     -- 좋아요수
	reg_date    DATE             NOT NULL, -- 리뷰작성일
	update_date DATE             NULL      -- 리뷰수정일
);
CREATE SEQUENCE PRODUCT_REVIEW_SEQ;
-- 구매후기
ALTER TABLE PRODUCT_REVIEW
	ADD
		CONSTRAINT FK_Product_TO_PRODUCT_REVIEW -- 상품 -> 구매후기
		FOREIGN KEY (
			product_seq -- 상품식별번호
		)
		REFERENCES Product ( -- 상품
			seq -- 상품식별번호
		);
-- 후기로그
CREATE TABLE REVIEW (
	seq            NUMBER    PRIMARY KEY, -- 식별번호
	review_seq     NUMBER    NOT NULL, -- 후기식별번호
	reg_date       DATE      NOT NULL, -- 작성일
	update_date    DATE      NOT NULL, -- 수정일
	update_content LONG TEXT NOT NULL  -- 수정내용
);
CREATE SEQUENCE REVIEW_SEQ;
-- 후기로그
ALTER TABLE REVIEW
	ADD
		CONSTRAINT FK_PRODUCT_REVIEW_TO_REVIEW -- 구매후기 -> 후기로그
		FOREIGN KEY (
			review_seq -- 후기식별번호
		)
		REFERENCES PRODUCT_REVIEW ( -- 구매후기
			seq -- 식별번호
		);
----------------------------------------------------------------

-- 주문테이블
CREATE TABLE ORDER (
	seq                  NUMBER    			PRIMARY KEY, -- 식별번호
	members_id           VARCHAR(15 CHAR)   NOT NULL, -- 회원식별번호
	settleprice          NUMBER    			NOT NULL, -- 결제금액
	discount             NUMBER    			NULL,     -- 할인금액
	original_settleprice NUMBER    			NULL,     -- 할인적용전금액
	step                 NUMBER(1) 			NOT NULL  -- 주문상태(주문배송과정)
);
CREATE SEQUENCE ORDER_SEQ;
-- 주문테이블
ALTER TABLE ORDER
	ADD
		CONSTRAINT FK_MEMBERS_TO_ORDER -- 회원 -> 주문테이블
		FOREIGN KEY (
			members_id -- 회원식별번호
		)
		REFERENCES MEMBERS ( -- 회원
			id -- 회원식별번호
		);
-- 주문상품옵션
CREATE TABLE ORDER_ITEM_OPTION (
	seq                NUMBER PRIMARY KEY, -- 식별번호
	order_seq          NUMBER NOT NULL, -- 주문번호
	product_detail_seq NUMBER NOT NULL, -- 상품옵션
	stock              NUMBER NOT NULL  -- 수량
);
CREATE SEQUENCE ORDER_ITEM_OPTION_SEQ;
-- 주문상품옵션
ALTER TABLE ORDER_ITEM_OPTION
	ADD
		CONSTRAINT FK_ORDER_TO_ORDER_ITEM_OPTION -- 주문테이블 -> 주문상품옵션
		FOREIGN KEY (
			order_seq -- 주문번호
		)
		REFERENCES ORDER ( -- 주문테이블
			seq -- 식별번호
		);

-- 주문상품옵션
ALTER TABLE ORDER_ITEM_OPTION
	ADD
		CONSTRAINT FK_PRODUCT_DETAIL_TO_ORDER_ITEM_OPTION -- 상품옵션 -> 주문상품옵션
		FOREIGN KEY (
			product_detail_seq -- 상품옵션
		)
		REFERENCES PRODUCT_DETAIL ( -- 상품옵션
			seq -- 식별번호
		);
-- 결제정보
CREATE TABLE PAYMENT (
	order_seq             NUMBER       PRIMARY KEY, -- 식별번호
	deposit_yn            NUMBER(1)    NOT NULL, -- 입금상태
	deposit_date          DATE         NULL,     -- 입금일시
	depositor             VARCHAR(10)) NOT NULL, -- 입금자명
	pg_transaction_number NUMBER       NULL,     -- PG고유번호
	pg                    VARCHAR(10)  NULL,     -- PG사 명
	payment               VARCHAR(10)  NOT NULL, -- 결제수단
	bank_name             VARCHAR(20)  NULL,     -- 입금은행
	bank_account          VARCHAR(20)  NULL,     -- 입금계좌정보
	pg_approval_number    VARCHAR(20)  NULL,     -- 신용카드승인번호
	cash_receipts_no      VARCHAR(20)  NULL      -- 현금영수증번호
);
-- 결제정보
ALTER TABLE PAYMENT
	ADD
		CONSTRAINT FK_ORDER_TO_PAYMENT -- 주문테이블 -> 결제정보
		FOREIGN KEY (
			order_seq -- 식별번호
		)
		REFERENCES ORDER ( -- 주문테이블
			seq -- 식별번호
		);
-- 배송정보
CREATE TABLE DELIVERY_INFO (
	order_seq                NUMBER           PRIMARY KEY, -- 식별번호
	order_user_name          VARCHAR(10)      NOT NULL, -- 주문자명
	order_cellphone          VARCHAR(20)      NOT NULL, -- 주문자휴대폰
	recipient_user_name      VARCHAR(10)      NOT NULL, -- 받는자명
	recipient_cellphone      VARCHAR(20)      NOT NULL, -- 받는자휴대폰
	delivery_cost            VARCHAR(20)      NOT NULL, -- 기본배송비
	recipient_zipcode        NUMBER           NOT NULL, -- 배송지우편번호
	recipient_address        VARCHAR(100)     NOT NULL, -- 배송지주소
	recipient_address_detail VARCHAR(100)     NOT NULL, -- 배송지주소상세
	memo                     VARCHAR(100)     NULL,     -- 배송메시지
	regist_date              VARCHAR(20)      NOT NULL, -- 주문접수일
	total_ea                 NUMBER           NOT NULL, -- 총주문수량
	delivery_number          VARCHAR(20)      NOT NULL, -- 운송장번호
	members_id               VARCHAR(15)      NOT NULL, -- 회원식별번호
	recipient_name           VARCHAR(10 CHAR) NOT NULL, -- 받는사람이름
	recipient_phone          VARCHAR(12 CHAR) NOT NULL  -- 받는사람전화번호
);
-- 배송정보
ALTER TABLE DELIVERY_INFO
	ADD
		CONSTRAINT FK_ORDER_TO_DELIVERY_INFO -- 주문테이블 -> 배송정보
		FOREIGN KEY (
			order_seq -- 식별번호
		)
		REFERENCES ORDER ( -- 주문테이블
			seq -- 식별번호
		);
----------------------------------------------------------------

-- 공지사항
CREATE TABLE NOTICE (
	seq            NUMBER           PRIMARY KEY, -- 식별번호
	admin_id       VARCHAR(15 CHAR) NOT NULL, -- 관리자 식별번호
	title          VARCHAR(15 CHAR) NOT NULL, -- 제목
	types          NUMBER(1)        NOT NULL, -- 글타입
	contents       CLOB             NOT NULL, -- 내용
	org_file_name  VARCHAR(50 CHAR) NULL,     -- 첨부파일명
	save_file_name VARCHAR(50 CHAR) NULL,     -- 저장된파일명
	file_size      NUMBER           NULL,     -- 파일크기
	admin_name     VARCHAR(10 CHAR) NULL,     -- 작성자명
	regist_date    DATE             NOT NULL, -- 작성일
	update_date    DATE             NULL,     -- 수정일
	is_popup       NUMBER(1)        NOT NULL  -- 팝업여부
);
CREATE SEQUENCE NOTICE_SEQ;
-- 공지사항
ALTER TABLE NOTICES
	ADD
		CONSTRAINT FK_ADMIN_TO_NOTICES -- 관리자 -> 공지사항
		FOREIGN KEY (
			admin_id -- 관리자 식별번호
		)
		REFERENCES ADMIN ( -- 관리자
			id -- 식별번호
		);
-- 1:1 문의
CREATE TABLE QNA (
	seq         NUMBER           PRIMARY KEY, -- 식별번호
	members_id  VARCHAR(15 CHAR) NOT NULL, -- 회원식별번호
	admin_id    VARCHAR(15 CHAR) NOT NULL, -- 관리자식별번호
	order_seq   NUMBER           NOT NULL, -- 주문식별번호
	title       VARCHAR(15 CHAR) NOT NULL, -- 제목
	content     CLOB             NOT NULL, -- 내용
	writer      VARCHAR(10 CHAR) NOT NULL, -- 작성자이름
	types       NUMBER(1)        NOT NULL, -- 게시글타입
	parent_seq  NUMBER           NOT NULL, -- 부모게시글번호
	regist_date DATE             NOT NULL, -- 작성일
	update_date DATE             NULL      -- 수정일
);
CREATE SEQUENCE QNA_SEQ;
-- 1:1 문의
ALTER TABLE QNA
	ADD
		CONSTRAINT FK_ADMIN_TO_QNA -- 관리자 -> 1:1 문의
		FOREIGN KEY (
			admin_id -- 관리자식별번호
		)
		REFERENCES ADMIN ( -- 관리자
			id -- 식별번호
		);
-- 1:1 문의
ALTER TABLE QNA
	ADD
		CONSTRAINT FK_MEMBERS_TO_QNA -- 회원 -> 1:1 문의
		FOREIGN KEY (
			member_id -- 회원식별번호
		)
		REFERENCES MEMBERS ( -- 회원
			id -- 회원식별번호
		);
-- 1:1 문의
ALTER TABLE QNA
	ADD
		CONSTRAINT FK_ORDER_TO_QNA -- 주문테이블 -> 1:1 문의
		FOREIGN KEY (
			order_seq -- 주문식별번호
		)
		REFERENCES ORDER ( -- 주문테이블
			seq -- 식별번호
		);
-- FAQ
CREATE TABLE FAQ (
	seq         NUMBER           PRIMARY KEY, -- 식별번호
	admin_id    VARCHAR(15 CHAR) NOT NULL, -- 관리자 식별번호
	category    NUMBER           NOT NULL, -- 카테고리
	title       VARCHAR(15 CHAR) NOT NULL, -- 제목
	content     CLOB             NOT NULL, -- 내용
	admin_name  VARCHAR(10 CHAR) NOT NULL, -- 작성자명
	regist_date DATE             NOT NULL  -- 작성일
);
CREATE SEQUENCE FAQ_SEQ;
-- FAQ
ALTER TABLE FAQ
	ADD
		CONSTRAINT FK_ADMIN_TO_FAQ -- 관리자 -> FAQ
		FOREIGN KEY (
			admin_id -- 관리자 식별번호
		)
		REFERENCES ADMIN ( -- 관리자
			id -- 식별번호
		);
