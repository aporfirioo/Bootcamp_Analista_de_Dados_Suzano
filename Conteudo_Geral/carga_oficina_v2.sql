-- Use o banco de dados
USE mecanica;

-- Inserção de dados na tabela CLIENTE
INSERT INTO CLIENTE (idCLIENTE, Nome, CPF_CNPJ, Telefone, Endereco) VALUES
(1, 'João da Silva', '123.456.789-00', '11999999999', 'Rua A, 123'),
(2, 'Maria Oliveira', '234.567.890-11', '21988888888', 'Rua B, 456'),
(3, 'Carlos Pereira', '345.678.901-22', '31977777777', 'Rua C, 789'),
(4, 'Ana Santos', '456.789.012-33', '41966666666', 'Rua D, 1011'),
(5, 'Pedro Lima', '567.890.123-44', '51955555555', 'Rua E, 1213');

-- Inserção de dados na tabela VEICULO
INSERT INTO VEICULO (idVEICULO, PLACA, MODELO, ANO, MARCA, COR, CLIENTE_idCLIENTE) VALUES
(1, 'ABC-1234', 'Modelo A', 2010, 'Marca A', 'Azul', 1),
(2, 'DEF-5678', 'Modelo B', 2012, 'Marca B', 'Vermelho', 2),
(3, 'GHI-9012', 'Modelo C', 2015, 'Marca C', 'Verde', 3),
(4, 'JKL-3456', 'Modelo D', 2018, 'Marca D', 'Preto', 4),
(5, 'MNO-7890', 'Modelo E', 2020, 'Marca E', 'Branco', 5);

-- Inserção de dados na tabela MECANICO
INSERT INTO MECANICO (idMECANICO, Nome, Endereco, Especialidade) VALUES
(1, 'Mecânico A', 'Rua F, 1314', 'Motor'),
(2, 'Mecânico B', 'Rua G, 1516', 'Transmissão'),
(3, 'Mecânico C', 'Rua H, 1718', 'Suspensão'),
(4, 'Mecânico D', 'Rua I, 1920', 'Freios'),
(5, 'Mecânico E', 'Rua J, 2122', 'Elétrica');

-- Inserção de dados na tabela ORDEM_SERVICO
INSERT INTO ORDEM_SERVICO (idORDEM_SERVICO, Data_de_Emissao, Data_de_Conclusao, Status, Valor_Total, VEICULO_idVEICULO, VEICULO_CLIENTE_idCLIENTE, MECANICO_idMECANICO) VALUES
(1, '2023-01-01', '2023-01-10', 'Concluído', 1500.00, 1, 1, 1),
(2, '2023-02-01', '2023-02-12', 'Concluído', 2000.00, 2, 2, 2),
(3, '2023-03-01', '2023-03-14', 'Concluído', 2500.00, 3, 3, 3),
(4, '2023-04-01', '2023-04-16', 'Concluído', 3000.00, 4, 4, 4),
(5, '2023-05-01', '2023-05-18', 'Concluído', 3500.00, 5, 5, 5);

-- Inserção de dados na tabela SERVICO
INSERT INTO SERVICO (idSERVICO, Descricao, Valor_da_Mao_de_Obra) VALUES
(1, 'Troca de Óleo', 150.00),
(2, 'Alinhamento e Balanceamento', 200.00),
(3, 'Revisão Completa', 300.00),
(4, 'Troca de Freios', 400.00),
(5, 'Reparo Elétrico', 500.00);

-- Inserção de dados na tabela ORDEM_SERVICO_POSSUI_SERVICOS
INSERT INTO ORDEM_SERVICO_POSSUI_SERVICOS (ORDEM_SERVICO_idORDEM_SERVICO, ORDEM_SERVICO_VEICULO_idVEICULO, ORDEM_SERVICO_VEICULO_CLIENTE_idCLIENTE, SERVICO_idSERVICO) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5);

-- Inserção de dados na tabela PECA
INSERT INTO PECA (idPECA, Descricao, Valor_Unitario) VALUES
(1, 'Filtro de Óleo', 50.00),
(2, 'Pastilhas de Freio', 100.00),
(3, 'Velas de Ignição', 75.00),
(4, 'Correia Dentada', 120.00),
(5, 'Bateria', 200.00);

-- Inserção de dados na tabela ORDEM_SERVICO_USA_PECAS
INSERT INTO ORDEM_SERVICO_USA_PECAS (PECA_idPECA, ORDEM_SERVICO_idORDEM_SERVICO, ORDEM_SERVICO_VEICULO_idVEICULO, ORDEM_SERVICO_VEICULO_CLIENTE_idCLIENTE) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5);

-- Inserção de dados na tabela MECANICO_EXECUTA_ORDEM_SERVICO
INSERT INTO MECANICO_EXECUTA_ORDEM_SERVICO (MECANICO_idMECANICO, ORDEM_SERVICO_idORDEM_SERVICO, ORDEM_SERVICO_VEICULO_idVEICULO, ORDEM_SERVICO_VEICULO_CLIENTE_idCLIENTE) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5);
