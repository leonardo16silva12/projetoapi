	create table Categoria(
	id int not null auto_increment,
    nome varchar(100),
    primary key(id));
    
    create table Produto(
	id int not null auto_increment,
    nome varchar(100),
    preco decimal(12,2),
    idcategoria int not null,
    primary key(id));
    
    alter table Produto add constraint fk_produto_categoria foreign key(idcategoria) references Categoria(id);
    
    insert into categoria(nome) values
    ('Alimentos'), ('Eletrônicos'), ('Movéis')
    , ('Papelaria'), ('Automotivo'), ('Livros'), ('Moda')
    , ('Pet Shop'), ('Eletrodomésticos'), ('Brinquedos')
    , ('Bebidas'), ('Imóveis'), ('Antiguidades')
    , ('Instrumentos Musicais'), ('Lazer'), ('Hobbies')
    , ('Roupas'), ('Carros'), ('Motos');
    
    
    insert into produto(nome, preco, idcategoria) values
    ('Pipoca', 4.99, 1), ('PS4', 1499.00, 2), ('Sofá', 599.99, 3),
    ('Chocolate', 599.99, 1), ('Xbox One', 599.99, 2), ('Mesa de Jantar', 599.99, 3),
    ('Marca Texto', 1.99, 4), ('Pneu', 109.99, 5), ('Livro 1', 599.99, 6),
    ('Folha Sulfite', 9.99, 4), ('Oléo Diesel', 49.99, 5), ('Livro 2', 599.99, 6),
    ('Saia', 9.99, 7), ('Ração para Cachorro', 59.99, 8), ('Microondas', 299.99, 9),
    ('Amoeba', 9.99, 10), ('Carrinho da Hotwheels', 9.99, 10), ('Skate', 159.99, 10),
    ('Vestido', 14.99, 7), ('Ração para Gato', 29.99, 8), ('Cooktop', 499.99, 9),
    ('Nutella', 39.99, 1), ('Iphone 11', 7899.99, 2), ('Cama', 899.99, 3),
    ('Lapís Grafite', 0.99, 4), ('Cera para Carro', 29.99, 5), ('Guarda Roupa', 1699.99, 3),
    ('Coca Cola', 7.00, 11), ('Leda', 3.50, 11), ('Sprite', 5.00, 11),
    ('Casa 2 Andares', 319999.99, 12), ('Edícula Maria Luíza IV', 179999.99, 12), ('Chácara Monte Gerizim ', 400000.00, 12),
    ('Tapete Antigo', 5499.99, 13), ('Piano Antigo', 10999.99, 13), ('Relógio Antigo', 9599.99, 13),
    ('Violino', 1400.00, 14), ('Sax', 2900.00, 14), ('Violoncelo', 2499.99, 14),
    ('Piscina 10000L', 800.00, 15), ('Churrasqueira', 150.00, 15), ('Cadeira Massageadora', 4000.00, 15),
    ('Mesa de Ping Pong', 799.99, 16), ('Patins', 250.00, 16), ('Barraca', 200.00, 16),
    ('Blusa de Frio', 45.00, 17), ('Boné', 29.99, 17), ('Tênis', 299.99, 17),
    ('Nissan 350z', 324000.00, 18), ('Tesla Model X', 300000.00, 18), ('BMW M5', 700000.00, 18),
    ('Honda Hornet', 30000.00, 19), ('Kawasaki H2', 168000.00, 19), ('Yamaha XJ6', 30000.00, 19);