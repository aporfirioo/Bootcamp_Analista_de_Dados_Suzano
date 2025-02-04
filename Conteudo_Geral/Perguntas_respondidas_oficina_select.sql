use mecanica;
/*1. Recuperações simples com SELECT Statement
Pergunta: Quais são todos os nomes dos clientes na tabela CLIENTE?*/
SELECT Nome FROM CLIENTE;

/*2. Filtros com WHERE Statement
Pergunta: Quais veículos são do ano 2018 ou posteriores?*/
SELECT * FROM VEICULO
WHERE ANO >= 2018;

/*3. Crie expressões para gerar atributos derivados
Pergunta: Qual o nome dos clientes e o total gasto considerando o valor total das ordens de serviço concluídas?*/
SELECT CLIENTE.Nome, SUM(ORDEM_SERVICO.Valor_Total) AS TotalGasto
FROM CLIENTE
JOIN ORDEM_SERVICO ON CLIENTE.idCLIENTE = ORDEM_SERVICO.VEICULO_CLIENTE_idCLIENTE
WHERE ORDEM_SERVICO.Status = 'Concluído'
GROUP BY CLIENTE.Nome;

/*4. Defina ordenações dos dados com ORDER BY
Pergunta: Liste todos os mecânicos ordenados pelo nome em ordem alfabética.*/
SELECT * FROM MECANICO
ORDER BY Nome;

/*5. Condições de filtros aos grupos – HAVING Statement
Pergunta: Quais clientes têm um total gasto superior a 3000 em ordens de serviço concluídas?*/
SELECT CLIENTE.Nome, SUM(ORDEM_SERVICO.Valor_Total) AS TotalGasto
FROM CLIENTE
JOIN ORDEM_SERVICO ON CLIENTE.idCLIENTE = ORDEM_SERVICO.VEICULO_CLIENTE_idCLIENTE
WHERE ORDEM_SERVICO.Status = 'Concluído'
GROUP BY CLIENTE.Nome
HAVING SUM(ORDEM_SERVICO.Valor_Total) > 3000;

/*6. Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
Pergunta: Quais são os nomes dos clientes, os modelos dos veículos e os nomes dos mecânicos associados a cada ordem de serviço?*/

SELECT CLIENTE.Nome AS Cliente, VEICULO.MODELO AS Veiculo, MECANICO.Nome AS Mecanico
FROM ORDEM_SERVICO
JOIN CLIENTE ON ORDEM_SERVICO.VEICULO_CLIENTE_idCLIENTE = CLIENTE.idCLIENTE
JOIN VEICULO ON ORDEM_SERVICO.VEICULO_idVEICULO = VEICULO.idVEICULO
JOIN MECANICO ON ORDEM_SERVICO.MECANICO_idMECANICO = MECANICO.idMECANICO;






