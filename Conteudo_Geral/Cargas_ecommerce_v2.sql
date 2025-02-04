
-- Inserção de dados

-- Inserir dados na tabela Cliente -- Feito
INSERT INTO Cliente (Pnome, Meio, Sobrenome, Identificacao_documento, Endereco, PJ_idCliente, PF_idCliente, Dt_nascimento) VALUES
('João', 'da', 'Silva', 123456, 'Rua A, 123', NULL, 1, '1980-01-01'),
('Maria', 'de', 'Oliveira', 654321, 'Rua B, 456', NULL, 2, '1990-02-02'),
('Empresa Alpha', NULL, NULL, NULL, 'Av. Industrial, 789', 1, NULL, NULL),
('Pedro', 'dos', 'Santos', 987654, 'Rua C, 789', NULL, 3, '1985-03-03'),
('Empresa Beta', NULL, NULL, NULL, 'Av. Comercial, 101', 2, NULL, NULL);

-- Inserir dados na tabela PF -- Feito
INSERT INTO PF (idCliente, CPF, Cliente_idCliente) VALUES
(1, '123.456.789-00', 1),
(2, '987.654.321-00', 2),
(3, '456.789.123-00', 4);

-- Inserir dados na tabela PJ -- Feito
INSERT INTO PJ (idCliente, CNPJ, Cliente_idCliente) VALUES
(1, '12.345.678/0001-99', 3),
(2, '98.765.432/0001-88', 5);

-- Inserir dados na tabela Fornecedor -- Feito
INSERT INTO Fornecedor (nome, endereco) VALUES
('Fornecedor 1', 'Endereço do Fornecedor 1'),
('Fornecedor 2', 'Endereço do Fornecedor 2'),
('Fornecedor 3', 'Endereço do Fornecedor 3'),
('Fornecedor 4', 'Endereço do Fornecedor 4'),
('Fornecedor 5', 'Endereço do Fornecedor 5');

-- Inserir dados na tabela Produto -- Feito
INSERT INTO Produto (nome, descricao, preco) VALUES
('Produto A', 'Descrição do Produto A', 100.00),
('Produto B', 'Descrição do Produto B', 200.00),
('Produto C', 'Descrição do Produto C', 300.00),
('Produto D', 'Descrição do Produto D', 400.00),
('Produto E', 'Descrição do Produto E', 500.00);

-- Inserir dados na tabela Terceiro_Vendedor -- Feito
INSERT INTO Terceiro_Vendedor (nome, contato) VALUES
('Vendedor 1', 'Contato do Vendedor 1'),
('Vendedor 2', 'Contato do Vendedor 2'),
('Vendedor 3', 'Contato do Vendedor 3'),
('Vendedor 4', 'Contato do Vendedor 4'),
('Vendedor 5', 'Contato do Vendedor 5');

-- Inserir dados na tabela Pedido -- Feito
INSERT INTO Pedido (idCliente, dataPedido, valorTotal) VALUES
(1, '2024-01-15', 1500.00),
(2, '2024-01-20', 2500.00),
(3, '2024-01-25', 3000.00),
(4, '2024-02-10', 3500.00),
(5, '2024-02-15', 4000.00);

-- Inserir dados na tabela Pagamento -- Feito
INSERT INTO Pagamento (idPedido, dataPagamento, valorPagamento, formaPagamento) VALUES
(1, '2024-01-16', 1500.00, 'Cartão'),
(2, '2024-01-21', 2500.00, 'Boleto'),
(3, '2024-01-26', 3000.00, 'Transferência'),
(4, '2024-02-11', 3500.00, 'PIX'),
(5, '2024-02-16', 4000.00, 'Dinheiro');

-- Inserir dados na tabela Entrega -- Feito
INSERT INTO Entrega (idPedido, dataEntrega, statusEntrega) VALUES
(1, '2024-01-17', 'Entregue'),
(2, '2024-01-22', 'Entregue'),
(3, '2024-01-27', 'Pendente'),
(4, '2024-02-12', 'Entregue'),
(5, '2024-02-17', 'Pendente');

-- Inserir dados na tabela Disponibilizando_um_produto -- Feito
INSERT INTO Disponibilizando_um_produto (idProduto, idFornecedor) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Inserir dados na tabela Estoque -- Feito
INSERT INTO Estoque (localizacao) VALUES
('São Paulo'),
('Rio de Janeiro'),
('Brasília'),
('Curitiba'),
('Salvador');

-- Inserir dados na tabela Produto_Estoque -- Feito
INSERT INTO Produto_Estoque (idProduto, idEstoque, quantidade) VALUES
(1, 1, 100),
(2, 2, 200),
(3, 3, 150),
(4, 4, 180),
(5, 5, 130);

-- Inserir dados na tabela Produto_Vendedor_terceiros -- Feito
INSERT INTO Produto_Vendedor_terceiros (idProduto, idTerceiro_Vendedor, preco) VALUES
(1, 1, 150.00),
(2, 2, 250.00),
(3, 3, 350.00),
(4, 4, 450.00),
(5, 5, 550.00);

-- Inserir dados na tabela Produto_Pedido -- Feito
INSERT INTO Produto_Pedido (idPedido, idProduto, quantidade, precoUnitario) VALUES
(1, 1, 2, 150.00),
(2, 2, 1, 250.00),
(3, 3, 3, 350.00),
(4, 4, 2, 450.00),
(5, 5, 1, 550.00);

-- Inserir dados na tabela Pagamentos_Cliente -- Feito
INSERT INTO Pagamentos_Cliente (idPagamento, idCliente) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

