create database bd_aula03;
\c bd_aula03;

create table tbl_cliente(codigo integer PRIMARY KEY, nome text NOT NULL, endereco text);
create table tbl_titulo