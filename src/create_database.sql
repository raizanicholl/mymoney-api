CREATE DATABASE controle_financeiro;

CREATE TABLE usuarios (
	id serial primary key,
  	email VARCHAR(100)NOT NULL,
	senha text NOT NULL,

)

CREATE TABLE transactions (
    id serial primary key,
    usuario_id integer NOT NULL,
    data_transacao timestamptz NOT NULL,
    tipo varchar(15) NOT NULL,
    dia_da_semana varchar(15) NOT NULL,
    categoria int NOT NULL ,
    valor int NOT NULL,
    descricao text NOT NULL,
    foreign key (usuario_id) references usuarios (id)
)