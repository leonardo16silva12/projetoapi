    create table Pedido(
	id bigint not null auto_increment,
    datapedido date,
    valorpedido decimal(12,2),
    idcliente int not null,
    primary key(id));
    
    alter table Pedido add constraint fk_pedido_clientes foreign key(idcliente) references Cliente(id);
    
    insert into Pedido(dataPedido, valorPedido, idcliente) values
    ('2020/01/01', 4.99, 5), ('2020/01/05', 9.99, 7), ('2020/01/09', 99.99, 9),
    ('2020/01/02', 1200.00, 2), ('2020/01/06', 1300.00, 1), ('2020/01/10', 3400.00, 3),
    ('2020/01/03', 100.00, 8), ('2020/01/07', 250.00, 4), ('2020/01/11', 750.00, 12),
    ('2020/01/04', 45.99, 11);