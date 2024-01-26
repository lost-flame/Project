create table euser(
eid number(38) not null,
firstName varchar2(30) not null,
middleName varchar2(30) not null,
lastName varchar2(30) not null,
gender varchar2(30) not null,
mobileNumber varchar2(30) not null,
address varchar2(30) not null,
email varchar2(30) not null,
password varchar2(30) not null,
securityQuestion varchar2(30) not null,
securityAnswer varchar2(30) not null,
constraint pk primary key(eid)
);

drop table euser purge

CREATE SEQUENCE eid
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

desc euser

select * from euser

create table eadmin(
eid number(38) not null,
firstName varchar2(30) not null,
middleName varchar2(30) not null,
lastName varchar2(30) not null,
gender varchar2(30) not null,
mobileNumber varchar2(30) not null,
address varchar2(30) not null,
email varchar2(30) not null,
password varchar2(30) not null,
constraint admin_pk primary key(eid)
);

CREATE SEQUENCE eaid
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

insert into eadmin values(eaid.nextval,'Nikhil', 'Kumar','Jamwa','Male','2547965413','BCIIT','bciit1@s.com','bC@1isit');

desc eadmin;

select * from eadmin;

create table eproducts(
epid number(38) not null,
category varchar2(30) not null,
subcategory varchar2(30) not null,
quantity varchar2(30) not null,
price varchar2(30) not null,
image varchar2(30) not null,
constraint prdct primary key(epid)
);

CREATE SEQUENCE epid
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

drop sequence epid;

desc eproducts;

select * from eproducts;

desc eproducts;

insert into eproducts values(epid.nextval,'Men's Fashion','Clothing','30','25,000');

alter table eproducts
add image blob not null;

alter table eproducts
modify image varchar2(30) null;

delete from eproducts;

insert 
into eproducts (epid,category,subcategory,quantity,price) values(epid.nextval,'Electronics','Headphones','30','25,000');

insert all
into eproducts (epid,category,subcategory,quantity,price,image) values(epid.nextval,'Electronics','Headphones','30','25,000')
into eproducts (epid,category,subcategory,quantity,price,image) values(epid.nextval,'Electronics','Headphones','30','25,000')
into eproducts (epid,category,subcategory,quantity,price,image) values(epid.nextval,'Electronics','Headphones','30','25,000')
into eproducts (epid,category,subcategory,quantity,price,image) values(epid.nextval,'Electronics','Home Audio','30','25,000')
into eproducts (epid,category,subcategory,quantity,price,image) values(epid.nextval,'Men''s Fashion','Clothing','30','25,000')
into eproducts (epid,category,subcategory,quantity,price,image) values(epid.nextval,'Men''s Fashion','Shoes','30','25,000')
into eproducts (epid,category,subcategory,quantity,price,image) values(epid.nextval,'Men''s Fashion','Watches','30','25,000')
into eproducts (epid,category,subcategory,quantity,price,image) values(epid.nextval,'Men''s Fashion','Accessories','30','25,000')
into eproducts (epid,category,subcategory,quantity,price,image) values(epid.nextval,'Women''s Fashion','Clothing','30','25,000')
into eproducts (epid,category,subcategory,quantity,price,image) values(epid.nextval,'Women''s Fashion','Shoes','30','25,000')
into eproducts (epid,category,subcategory,quantity,price,image) values(epid.nextval,'Women''s Fashion','Jewelry','30','25,000')
into eproducts (epid,category,subcategory,quantity,price,image) values(epid.nextval,'Women''s Fashion','Handbags','30','25,000')

select * from dual;

drop table eproducts purge;

create table images(
image varchar2(30)
);

select * from images;