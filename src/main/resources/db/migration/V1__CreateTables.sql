create table hibernate_sequence (next_val bigint) engine=MyISAM;
create table roles (id bigint not null, name varchar(60), primary key (id)) engine=MyISAM;
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=MyISAM;
create table users (id bigint not null, created datetime not null, password varchar(100), username varchar(15), primary key (id)) engine=MyISAM;
alter table roles add constraint UK_nb4h0p6txrmfc0xbrd1kglp9t unique (name);
alter table users add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username);
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id);
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id);

