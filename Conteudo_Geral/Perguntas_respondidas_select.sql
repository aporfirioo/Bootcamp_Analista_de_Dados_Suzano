-- Qual é o total de vendas (valorTotal) por cliente?
SELECT c.Pnome, c.Sobrenome, SUM(p.valorTotal) AS TotalVendas
FROM Cliente c
INNER JOIN Pedido p ON c.idCliente = p.idCliente
GROUP BY c.Pnome, c.Sobrenome
ORDER BY TotalVendas DESC;

-- Quais são os pedidos com valor total acima de 3000?
SELECT p.idPedido, c.Pnome, c.Sobrenome, p.valorTotal
FROM Pedido p
INNER JOIN Cliente c ON p.idCliente = c.idCliente
WHERE p.valorTotal > 3000
ORDER BY p.valorTotal DESC;

-- Qual é a média dos valores pagos por forma de pagamento?
SELECT pg.formaPagamento,  round(AVG(pg.valorPagamento),2) AS MediaPagamento
FROM Pagamento pg
GROUP BY pg.formaPagamento
ORDER BY MediaPagamento DESC;

-- Quantos produtos cada fornecedor está fornecendo e qual é o total de produtos fornecidos por cada um?
SELECT f.nome AS Fornecedor, COUNT(dp.idProduto) AS TotalProdutos
FROM Fornecedor f
INNER JOIN Disponibilizando_um_produto dp ON f.idFornecedor = dp.idFornecedor
GROUP BY f.nome
ORDER BY TotalProdutos DESC;

-- Qual é a quantidade total de produtos vendidos por pedido e o valor total por pedido?
SELECT pp.idPedido, SUM(pp.quantidade) AS TotalQuantidade, SUM(pp.quantidade * pp.precoUnitario) AS ValorTotal
FROM Produto_Pedido pp
GROUP BY pp.idPedido
ORDER BY ValorTotal DESC;

-- Quais clientes têm um total de vendas (valorTotal) menor que 5000, e qual é o valor total e a quantidade total de pedidos desses clientes?
SELECT c.idCliente, c.Pnome, c.Sobrenome, SUM(p.valorTotal) AS TotalVendas, COUNT(p.idPedido) AS TotalPedidos
FROM Cliente c
INNER JOIN Pedido p ON c.idCliente = p.idCliente
WHERE c.idCliente IS NOT NULL
GROUP BY c.idCliente, c.Pnome, c.Sobrenome
HAVING SUM(p.valorTotal) < 5000
ORDER BY TotalVendas DESC;


-- Quantos pedidos foram feitos por cada cliente?
SELECT c.idCliente, c.Pnome, c.Sobrenome, COUNT(p.idPedido) AS TotalPedidos
FROM Cliente c
INNER JOIN Pedido p ON c.idCliente = p.idCliente
GROUP BY c.idCliente, c.Pnome, c.Sobrenome;

-- Algum vendedor também é fornecedor?
SELECT tv.nome AS Vendedor, f.nome AS Fornecedor
FROM Terceiro_Vendedor tv
INNER JOIN Fornecedor f ON tv.nome = f.nome;

-- Relação de produtos, fornecedores e estoques:

SELECT p.nome AS Produto, f.nome AS Fornecedor, e.localizacao AS Estoque, pe.quantidade
FROM Produto p
INNER JOIN Disponibilizando_um_produto dp ON p.idProduto = dp.idProduto
INNER JOIN Fornecedor f ON dp.idFornecedor = f.idFornecedor
INNER JOIN Produto_Estoque pe ON p.idProduto = pe.idProduto
INNER JOIN Estoque e ON pe.idEstoque = e.idEstoque;

-- Relação de nomes dos fornecedores e nomes dos produtos:
SELECT f.nome AS Fornecedor, p.nome AS Produto
FROM Fornecedor f
INNER JOIN Disponibilizando_um_produto dp ON f.idFornecedor = dp.idFornecedor
INNER JOIN Produto p ON dp.idProduto = p.idProduto;
