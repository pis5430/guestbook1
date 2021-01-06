-- guestbook1 프로젝트 만들기 
-- webdb계정 guestbook 테이블 만들기

--테이블 지우기
drop table guestbook;

--시퀀스 삭제(잘못 건드렸을경우 삭제하고 다시만드는 용도)
drop sequence seq_guest_no;

--guestbook 테이블 만들기
create table guestbook (
    no number,
    name varchar2(80),
    password varchar2(20),
    content varchar2(2000),
    reg_date date,
    primary key(no)
);


-- 테이블 생성 확인
select *
from guestbook;

-- seq_guest_no 시퀀스 생성
create sequence seq_guest_no
increment by 1
start with 1;

--시퀀스 생성 확인
select *
from user_sequences;

-- guestbook 테이블 데이터 삽입
insert into guestbook
values (seq_guest_no.nextval, '이정재', '1234' ,'안녕하세요' , sysdate );

insert into guestbook
values (seq_guest_no.nextval, '이정재', '1234' ,'안녕' , sysdate );

-- 기본자료 생성완료  

select no,
       name,
       password,
       content,
       reg_date
from guestbook;

--등록화면
--비밀번호 확인
--등록리스트 addList.jsp
--등록 add.jsp
--삭제폼 deleteForm.jsp
--삭제 delete.jsp

commit;
rollback;