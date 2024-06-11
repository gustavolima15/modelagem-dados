create table editoras (
	id serial primary key,
  nome text not null,
  cnpj text unique,
  data_cadastro timestamp default now()
);

insert into editoras (nome, cnpj) values ('Cubos Academy', '00112233445566778899');




create table livros (
	isbn integer primary key,
  editora_id integer references editoras(id),
  titulo text not null,
  data_publicacao date not null
 );
 
 insert into livros 
 (isbn, editora_id, titulo, data_publicacao)
 values
 (12346, 1, 'Nodejs Avançado', '2023-06-10');

create table enderecos (
	id serial primary key,
  editora_id integer references editoras(id),
  cep text not null,
  rua text,
  bairro text,
  cidade text,
  estados char(2),
  pais text
);

insert into enderecos (editora_id, cep)
values (1, '44700-000');

create table categorias (
	id serial primary key,
  nome text not null
);

create table livro_categoria(
	livro_isbn integer references livros(isbn),
  categoria_id integer references categorias(id)
);

insert into categorias (nome) values ('Tecnologia'), ('Programação'), ('Nodejs');

insert into livro_categoria (livro_isbn, categoria_id)
values
(12345, 1),
(12345, 2),
(12346, 2);

create table comentarios (
	id serial primary key,
  descricao text not null,
  comentario_id integer references comentarios(id),
  livros_isbn integer references livros(isbn)
);

insert into comentarios (livros_isbn, descricao)
values (12345, 'Livro muito bom');

insert into comentarios (comentario_id, descricao)
values (1, 'Obrigado pelo elogio');



alter table 








