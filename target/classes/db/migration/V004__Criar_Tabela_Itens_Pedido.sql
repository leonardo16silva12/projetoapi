create table ItemPedido(
	id bigint not null auto_increment primary key,
	idpedido bigint not null,
	codigoproduto int not null,
	qtdeitem decimal(12,2),
	valorunitario decimal(12,2),
	totalitem decimal(12,2)
	) ENGINE=InnoDB DEFAULT CHARSET=UTF8;
	
	alter table itempedido add constraint FK_itempedido_pedido foreign key(idpedido) references pedido(id);
	alter table itempedido add constraint FK_itempedido_produto foreign key(codigoproduto) references produto(id);
	
	insert into ItemPedido(idpedido, codigoproduto, qtdeitem, valorunitario, totalitem) values
	(1, 6, 10, 10.00, 100.00), (2, 12, 5, 50.00, 250.00), (3, 7, 10, 15.00, 150.00),
	(4, 7, 10, 15.00, 150.00), (5, 7, 10, 15.00, 150.00), (6, 7, 10, 15.00, 150.00),
	(7, 7, 10, 15.00, 150.00), (8, 7, 10, 15.00, 150.00), (9, 7, 10, 15.00, 150.00),
	(10, 7, 10, 15.00, 150.00);