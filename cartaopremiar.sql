create database cartaopremiar;
use cartaopremiar;

create table tb_modulo(
	id int not null primary key unique auto_increment,
    descricao varchar(80) not null,
    texto text not null,
    anexo varchar(80) not null,
    id_curso int not null,
    
    foreign key (id_curso) references tb_curso(id)
);

create table tb_curso(
	id int not null primary key unique auto_increment,
    descricao varchar(80) not null,
    ativo int(1) not null,
    resumo varchar(40) not null,
    id_professor int not null,
    
    foreign key (id_professor) references tb_professor(id)
);

create table tb_professor(
	id int not null primary key unique auto_increment,
    nome varchar(20) not null,
    descricao varchar(80) not null,
    cpf varchar(15) not null,
    data_nascimento date not null,
    endereco varchar(100) not null,
    curriculo varchar(300) not null,
    email varchar(80) not null,
    foto varchar(20) not null
);

/*drop table tb_modulo*/