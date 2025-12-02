-- ==============================================
--  CONSULTAS SELECT - SISTEMA DE AGENDAMENTO
-- ==============================================

-- 1. Listar todos os clientes em ordem alfabética
SELECT * 
FROM Clientes
ORDER BY nome ASC;

-- 2. Buscar agendamentos futuros
SELECT *
FROM Agendamentos
WHERE data_hora > NOW()
ORDER BY data_hora;

-- 3. Relatório completo de agendamentos (com JOINs)
SELECT 
    A.id_agendamento,
    C.nome AS cliente,
    B.nome AS barbeiro,
    S.nome_servico AS servico,
    A.data_hora,
    A.status
FROM Agendamentos A
JOIN Clientes C ON C.id_cliente = A.id_cliente
JOIN Barbeiros B ON B.id_barbeiro = A.id_barbeiro
JOIN Servicos S ON S.id_servico = A.id_servico
ORDER BY A.data_hora;

-- 4. Limitar a 3 registros mais recentes
SELECT *
FROM Agendamentos
ORDER BY data_hora DESC
LIMIT 3;

-- 5. Buscar serviços acima de R$ 40
SELECT *
FROM Servicos
WHERE preco > 40.00;
