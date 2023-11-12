-- criando a Banco de Dados Curso De Programacao
create database CursoDeProgramacao;


-- selecionando o banco de dados CursosDeProgramação 
Use CursoDeProgramacao;

-- criando a tabela disciplinas
create table disciplinas(
id_disciplina int auto_increment primary key,
nome_disciplina varchar(50) not null,
nome_professor varchar(50) not null
)

-- criando a tabela aluno
create table alunos (
	id_alunos int auto_increment primary key,
    nome_alunos varchar(50) not null,
    disciplinas_id int,
    constraint foreign key (disciplinas_id)
    references disciplinas (id_disciplina)
    
)


-- inserindo dados nas tabelas disciplinas e alunos
insert into disciplinas(nome_disciplina, nome_professor) values ('Bancos de dados', 'Maria Alves');
insert into disciplinas(nome_disciplina, nome_professor) values ('Python', 'Pietro Souza');
insert into disciplinas(nome_disciplina, nome_professor) values ('POO', 'Bia Tavares');

insert into alunos(nome_alunos, disciplinas_id) values ('Cleiton', 2);
insert into alunos(nome_alunos, disciplinas_id) values ('Carol', null);
insert into alunos(nome_alunos, disciplinas_id) values ('Ruan', 2);
insert into alunos(nome_alunos, disciplinas_id) values ('Gabi', 1);
insert into alunos(nome_alunos, disciplinas_id) values ('Rian', null );
insert into alunos(nome_alunos, disciplinas_id) values ('Mia', 2 );
insert into alunos(nome_alunos, disciplinas_id) values ('Malu', 1 );


-- select
select * from disciplinas;
select * from alunos;

-- inner join
select nome_alunos, nome_disciplina from alunos
inner join disciplinas
on disciplinas.id_disciplina = alunos.disciplinas_id;
 


-- left join
 select nome_alunos, nome_disciplina
 from
 alunos left join disciplinas
 on disciplinas.id_disciplina = alunos.disciplinas_id;
 
 
-- right join 
select nome_alunos, nome_disciplina
 from
 alunos right join disciplinas
 on disciplinas.id_disciplina = alunos.disciplinas_id;
 
 
 
 ---Union-
  select nome_alunos, nome_disciplina
 from
 alunos left join disciplinas
 on disciplinas.id_disciplina = alunos.disciplinas_id
union 
select nome_alunos, nome_disciplina
 from
 alunos right join disciplinas
 on disciplinas.id_disciplina = alunos.disciplinas_id;
