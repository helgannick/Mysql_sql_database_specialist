create database hospital ;

use hospital;

create table paciente (
	id int auto_increment primary key,
    CPF char(11) not null,
    RG varchar(30) not null,
    Nome varchar(50) not null,
    Convenio varchar(20) not null,
	constraint unique_cpf_paciente unique (CPF)
);


create table enfermeiro(
	id int auto_increment primary key,
    CPF char(11) not null,
    Coren varchar(20) not null,
    Nome varchar(255) not null
   
    
    
    

);

create table triagem (
	id int auto_increment primary key,
	data_triagem timestamp,
    peso double not null,
    pressao varchar(10) not null, -- 13 por 8
    temperatura double not null,
    id_paciente int not null,
    id_enfermeiro int not null,
    foreign key (id_paciente) references paciente(id),
    foreign key (id_enfermeiro) references enfermeiro(id)
    
);

create table especialidade (
	id int auto_increment primary key,
    descrição varchar(150)
    
);


create table medico(
	id int auto_increment primary key,
    crm varchar(20) not null,
    cpf char(11) not null,
    nome varchar(255) not null,
    id_especialidade int
    
    
);

create table medico_especialidade (
	id_medico int not null,
	id_especialidade int not null,
	foreign key (id_medico) references medico(id),
    foreign key (id_especialidade) references especialidade(id),
    primary key (id_medico, id_especialidade)
);

create table consulta(
	id int auto_increment primary key,
    data_consulta timestamp not null default current_timestamp,
    id_medico int not null,
    id_triagem int not null,
    foreign key (id_medico) references medico(id),
    foreign key (id_triagem) references triagem(id)
    
    
);

create table farmaceutico(
	id int auto_increment primary key,
	nome varchar(255) not null,
	cpf char(11) not null,
	crf varchar(30) not null
	
);

create table remedio(
	id int auto_increment primary key,
	descrição varchar(150) not null,
	dosagem varchar(15) not null,
	apresentação varchar(150) not null
	
);

create table quarto(
	id int auto_increment primary key,
    numero int not null
    
);

create table internação (
	id int auto_increment primary key,
    data_entrada date not null ,
    data_saida date ,
    id_quarto int not null,
    id_consulta int not null
    
);

create table evolução(
	id int auto_increment,
    descrição text not null,
    data_evolução timestamp not null default current_timestamp ,
    id_internação int not null,
    id_medico int not null,
    foreign key (id_internação) references internação(id),
    foreign key (id_medico) references medico(id),
    primary key (id)
    
);

create table receita(
	id int auto_increment,
    data_receita timestamp not null default current_timestamp,
    id_enfermeiro int,
    id_consulta int ,
    id_evolução int,
    id_farmaceutico int,
    foreign key (id_enfermeiro) references enfermeiro(id),
    foreign key (id_consulta) references consulta(id),
    foreign key (id_farmaceutico) references farmaceutico(id),
    foreign key (id_evolução) references evolução(id),
    primary key (id)
);

create table receita_remedio(
	id_receita int not null,
    id_remedio int not null,
    como_tomar varchar(250) not null,
    foreign key (id_receita) references receita(id),
    foreign key (id_remedio) references remedio(id),
    primary key (id_receita, id_remedio)
    
    
);

show tables;