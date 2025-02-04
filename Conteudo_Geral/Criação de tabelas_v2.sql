
-- Criar o banco de dados ecommerce
-- o script de criação deve ser executado nessa ordem para que não tenha probelmas com referências de chaves/tabelas
CREATE DATABASE ecommerce;
USE ecommerce;

-- Tabela Cliente -- CRIADO
CREATE TABLE Cliente (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    Pnome VARCHAR(45),
    Meio VARCHAR(45),
    Sobrenome VARCHAR(45),
    Identificacao_documento INT,
    Endereco VARCHAR(100),
    PJ_idCliente INT,
    PF_idCliente INT,
    Dt_nascimento DATE
);

-- Tabela PF (Pessoa Física) -- CRIADO
CREATE TABLE PF (
    idCliente INT PRIMARY KEY,
    CPF VARCHAR(45),
    Cliente_idCliente INT,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

-- Tabela PJ (Pessoa Jurídica)  -- CRIADO
CREATE TABLE PJ (
    idCliente INT PRIMARY KEY,
    CNPJ VARCHAR(45),
    Cliente_idCliente INT,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

-- Tabela Fornecedor -- CRIADO
CREATE TABLE Fornecedor (
    idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    endereco VARCHAR(200)
);

-- Tabela Produto -- CRIADO
CREATE TABLE Produto (
    idProduto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    preco DECIMAL(10, 2)
);

-- Tabela Terceiro_Vendedor -- CRIADO
CREATE TABLE Terceiro_Vendedor (
    idTerceiro_Vendedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    contato VARCHAR(100)
);

-- Tabela Pedido -- -- CRIADO
CREATE TABLE Pedido (
    idPedido INT AUTO_INCREMENT PRIMARY KEY,
    idCliente INT,
    dataPedido DATE,
    valorTotal DECIMAL(10, 2),
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

-- Tabela Pagamento -- -- CRIADO
CREATE TABLE Pagamento (
    idPagamento INT AUTO_INCREMENT PRIMARY KEY,
    idPedido INT,
    dataPagamento DATE,
    valorPagamento DECIMAL(10, 2),
    formaPagamento VARCHAR(50),
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido)
);

-- Tabela Entrega -- CRIADO
CREATE TABLE Entrega (
    idEntrega INT AUTO_INCREMENT PRIMARY KEY,
    idPedido INT,
    dataEntrega DATE,
    statusEntrega VARCHAR(50),
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido)
);

-- Tabela Disponibilizando_um_produto -- -- CRIADO
CREATE TABLE Disponibilizando_um_produto (
    idProduto INT,
    idFornecedor INT,
    PRIMARY KEY (idProduto, idFornecedor),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto),
    FOREIGN KEY (idFornecedor) REFERENCES Fornecedor(idFornecedor)
);

-- Tabela Estoque -- CRIADO
CREATE TABLE Estoque (
    idEstoque INT AUTO_INCREMENT PRIMARY KEY,
    localizacao VARCHAR(100)
);

-- Tabela Produto_Estoque -- CRIADO
CREATE TABLE Produto_Estoque (
    idProduto INT,
    idEstoque INT,
    quantidade INT,
    PRIMARY KEY (idProduto, idEstoque),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto),
    FOREIGN KEY (idEstoque) REFERENCES Estoque(idEstoque)
);

-- Tabela Produto_Vendedor_terceiros -- CRIADO
CREATE TABLE Produto_Vendedor_terceiros (
    idProduto INT,
    idTerceiro_Vendedor INT,
    preco DECIMAL(10, 2),
    PRIMARY KEY (idProduto, idTerceiro_Vendedor),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto),
    FOREIGN KEY (idTerceiro_Vendedor) REFERENCES Terceiro_Vendedor(idTerceiro_Vendedor)
);

-- Tabela Produto_Pedido -- CRIADO
CREATE TABLE Produto_Pedido (
    idPedido INT,
    idProduto INT,
    quantidade INT,
    precoUnitario DECIMAL(10, 2),
    PRIMARY KEY (idPedido, idProduto),
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);

-- Tabela Pagamentos_Cliente -- CRIADO
CREATE TABLE Pagamentos_Cliente (
    idPagamento INT,
    idCliente INT,
    PRIMARY KEY (idPagamento, idCliente),
    FOREIGN KEY (idPagamento) REFERENCES Pagamento(idPagamento),
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);


