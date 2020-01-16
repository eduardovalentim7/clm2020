use dbclm2020;

create table tb_usuarios(
id_usuario INT NOT NULL auto_increment primary key,
login varchar(64) not null,
senha varchar(256) not null, 
dt_cadastro timestamp not null default current_timestamp()
);

insert into tb_usuarios(login, senha) values ('root', '123');
insert into tb_usuarios(login, senha) values ('eduardo','123');
select * from tb_usuarios; 

update tb_usuarios set senha ='456' where id_usuario = 2;
delete from tb_usuarios where id_usuario = 2;
truncate table tb_usuarios; (zera o autoincrement);

alter table tb_usuarios ADD tipo tinyint(4) NOT NULL DEFAULT '0'
