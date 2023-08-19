create database bd_aula03;
\c bd_aula03;

create table tbl_cliente(codigo_cliente integer PRIMARY KEY, nome text NOT NULL, cidade text, endereco text);

CREATE DOMAIN chk_categoria text CHECK(VALUE= 'DRAMA' OR VALUE='COMEDIA');
create table tbl_titulo(codigo_titulo integer PRIMARY KEY, titulo text NOT NULL, categoria chk_categoria);

create table tbl_emprestimo(numero_emprestimo integer PRIMARY KEY, codigo_cliente integer, codigo_livro integer);

CREATE DOMAIN chk_status text CHECK(VALUE='DISPONIVEL' OR VALUE='ALUGADO');
create table tbl_livros(cod_livro integer PRIMARY KEY, codigo_titulo integer, status chk_status);