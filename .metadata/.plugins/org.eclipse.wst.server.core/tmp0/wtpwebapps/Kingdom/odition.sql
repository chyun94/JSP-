create table tbl_artist_20210509(
artist_id char(4) not null,
artist_name VARCHAR2(20),
artist_gender char(1),
artist_birth char(8),
talent char(1),
agency VARCHAR2(20)
);

insert into tbl_artist_20210509 (artist_id,artist_name,artist_gender,artist_birth,talent,agency)
values ('A001','김스타','F','19970101','1','A엔터테이먼트');

create TABLE tbl_memto_20210509(
mento_id char(4) not null,
mento_name VARCHAR2(20)
);

insert into tbl_mento_20210219 (mento_id,mento_name)
values('J001','함멘토');

CREATE TABLE tbl_point_20210509(
serial_no number(8) not null,
artist_id char(4),
mento_id char(4),
point number(3)
);

insert into tbl_point_20210509(serial_no,artist_id,mento_id,point)
values('2019001','A001','J001','78');

commit;
