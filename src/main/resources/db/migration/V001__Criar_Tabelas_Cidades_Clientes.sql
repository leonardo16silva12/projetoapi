Create Table Cidade(
   id int not null auto_increment,
   nome varchar(150),
   estado char(2),
   primary key(id));
   
Create Table Cliente(
id int not null auto_increment,
nome varchar(200),
telefone varchar(20),
cidade_id int not null,
primary key(id));

alter table cliente add constraint fk_cliente_cidade foreign key(cidade_id) references cidade(id);   


insert into cidade(nome, estado) values ('Macatuba', 'SP');
insert into cidade(nome, estado) values ('Bauru', 'SP');
insert into cidade(nome, estado) values ('Barra Bonita', 'SP');
insert into cidade(nome, estado) values ('Areiópolis', 'SP');
insert into cidade(nome, estado) values ('Nárnia', 'SP');
insert into cidade(nome, estado) values ('Cafelândia', 'SP');
insert into cidade(nome, estado) values ('Jaú', 'SP');
insert into cidade(nome, estado) values ('Pederneiras', 'SP');
insert into cidade(nome, estado) values ('Alfredo Guedes', 'SP');
insert into cidade(nome, estado) values ('Laranjal Paulista', 'SP');
insert into cidade(nome, estado) values ('Botucatu', 'SP');
insert into cidade(nome, estado) values ('Telêmaco Borba', 'PR');
insert into cidade(nome, estado) values ('Manaus', 'AM');
insert into cidade(nome, estado) values ('Belo Horizonte', 'MG');
insert into cidade(nome, estado) values ('Niterói', 'RJ');
insert into cidade(nome, estado) values ('Maceió', 'AL');
insert into cidade(nome, estado) values ('Vitória', 'ES');
insert into cidade(nome, estado) values ('Curitiba', 'PR');
insert into cidade(nome, estado) values ('Recife', 'PE');
insert into cidade(nome, estado) values ('Porto Alegre', 'RS');
insert into cidade(nome, estado) values ('Goiânia', 'GO');
insert into cidade(nome, estado) values ('Guarulhos', 'SP');
insert into cidade(nome, estado) values ('Sorocaba', 'SP');
insert into cidade(nome, estado) values ('Joinville', 'SC');
insert into cidade(nome, estado) values ('Londrina', 'PR');
insert into cidade(nome, estado) values ('São José do Rio Preto', 'SP');
insert into cidade(nome, estado) values ('Jundiaí', 'SP');
insert into cidade(nome, estado) values ('Montes Claros', 'MG');
insert into cidade(nome, estado) values ('Uberaba', 'MG');
insert into cidade(nome, estado) values ('Boa Vista', 'RR');
insert into cidade(nome, estado) values ('Indaiatuba', 'SP');
insert into cidade(nome, estado) values ('Rio Claro', 'SP');
insert into cidade(nome, estado) values ('Nova Friburgo', 'RJ');
insert into cidade(nome, estado) values ('Itu', 'SP');
insert into cidade(nome, estado) values ('Itapetininga', 'SP');
insert into cidade(nome, estado) values ('Balneário Camboriú', 'SC');
insert into cidade(nome, estado) values ('Florianópolis', 'SC');
insert into cidade(nome, estado) values ('Cabreúva', 'SP');
insert into cidade(nome, estado) values ('Bariri', 'SP');
insert into cidade(nome, estado) values ('Agudos', 'SP');
insert into cidade(nome, estado) values ('Gramado', 'RS');
insert into cidade(nome, estado) values ('Mineiros do Tietê', 'SP');

insert into cliente(nome, telefone, cidade_id) values ('Leonardo', '999999',1);
insert into cliente(nome, telefone, cidade_id) values ('Luana', '999999',1);
insert into cliente(nome, telefone, cidade_id) values ('Mariana', '999999',2);
insert into cliente(nome, telefone, cidade_id) values ('Vinicius', '999999',3);
insert into cliente(nome, telefone, cidade_id) values ('Lucas', '8888888',4);
insert into cliente(nome, telefone, cidade_id) values ('Renato', '999999',5);
insert into cliente(nome, telefone, cidade_id) values ('João', '999999',6);
insert into cliente(nome, telefone, cidade_id) values ('Roberto', '999999',7);
insert into cliente(nome, telefone, cidade_id) values ('Samuel', '999999',8);
insert into cliente(nome, telefone, cidade_id) values ('Matheus', '8888888',9);
insert into cliente(nome, telefone, cidade_id) values ('Pedro', '999999',10);
insert into cliente(nome, telefone, cidade_id) values ('Guilherme', '999999',11);
insert into cliente(nome, telefone, cidade_id) values ('Diego', '999999',12);
insert into cliente(nome, telefone, cidade_id) values ('Hud', '999999',3);
insert into cliente(nome, telefone, cidade_id) values ('Taís', '8888888',2);
insert into cliente(nome, telefone, cidade_id) values ('Luciana', '999999',1);
insert into cliente(nome, telefone, cidade_id) values ('Edna', '999999',14);
insert into cliente(nome, telefone, cidade_id) values ('Enzo', '999999',15);
insert into cliente(nome, telefone, cidade_id) values ('Moisés', '999999',16);
insert into cliente(nome, telefone, cidade_id) values ('Beatriz', '8888888',17);
insert into cliente(nome, telefone, cidade_id) values ('Paulo', '999999',18);
insert into cliente(nome, telefone, cidade_id) values ('José', '999999',19);
insert into cliente(nome, telefone, cidade_id) values ('Davi', '999999',20);
insert into cliente(nome, telefone, cidade_id) values ('Mardoqueu', '999999',22);
insert into cliente(nome, telefone, cidade_id) values ('Elias', '8888888',25);
insert into cliente(nome, telefone, cidade_id) values ('Eli', '999999',27);
insert into cliente(nome, telefone, cidade_id) values ('Sadraque', '999999',28);
insert into cliente(nome, telefone, cidade_id) values ('Mesaque', '999999',29);
insert into cliente(nome, telefone, cidade_id) values ('Abedenego', '999999',30);
insert into cliente(nome, telefone, cidade_id) values ('Tiago', '8888888',31);
insert into cliente(nome, telefone, cidade_id) values ('Filipe', '999999',32);
insert into cliente(nome, telefone, cidade_id) values ('Sansão', '999999',4);
insert into cliente(nome, telefone, cidade_id) values ('Salomão', '999999',5);
insert into cliente(nome, telefone, cidade_id) values ('Adonias', '999999',6);
insert into cliente(nome, telefone, cidade_id) values ('Rute', '8888888',7);
insert into cliente(nome, telefone, cidade_id) values ('Boaz', '999999',8);
insert into cliente(nome, telefone, cidade_id) values ('Ester', '999999',9);
insert into cliente(nome, telefone, cidade_id) values ('Jacó', '999999',10);
insert into cliente(nome, telefone, cidade_id) values ('Abraão', '999999',15);
insert into cliente(nome, telefone, cidade_id) values ('Isaque', '8888888',20);
