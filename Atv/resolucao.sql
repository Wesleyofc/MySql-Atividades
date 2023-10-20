-- QUESTÃO 1

create schema wesleyAtv;
use wesleyAtv;

create table tb_fornecedor(
	codigo integer,
    primary key (codigo),
    nome varchar(40) not null,
    nome_contato varchar(40),
    num_contato integer not null
);

create table tb_setor (
	codigo integer primary key,
    descricao varchar(40) unique not null,
    num_corredo integer,
    responsavel varchar(40)
);
create table tb_produto (
	id integer not null primary key,
    nome varchar(40) not null,
    un_medida varchar(20) not null,
    tipo varchar(40),
    cod_setor integer not null,
    foreign key (cod_setor) references tb_setor(codigo),
    ativo boolean not null
);

create table tb_compras(
	id_produto integer,
    quantidade integer not null,
    preco float not null,
    data_ date not null,
    cod_fornecedor integer,
    primary key (id_produto,cod_fornecedor),
    foreign key (id_produto) references tb_produto (id),
    foreign key (cod_fornecedor) references tb_fornecedor (codigo)
);
