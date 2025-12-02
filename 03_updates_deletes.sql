-- ==============================================
--  UPDATES E DELETES - SISTEMA DE AGENDAMENTO
-- ==============================================

-- UPDATES --------------------------------------

-- 1. Atualizar telefone de um cliente
UPDATE Clientes
SET telefone = '47999998888'
WHERE id_cliente = 1;

-- 2. Alterar preço de um serviço
UPDATE Servicos
SET preco = 75.00
WHERE id_servico = 3; -- Corte + Barba

-- 3. Atualizar status de um agendamento
UPDATE Agendamentos
SET status = 'Concluído'
WHERE id_agendamento = 1;

-- DELETES --------------------------------------

-- 1. Remover agendamentos cancelados
DELETE FROM Agendamentos
WHERE status = 'Cancelado';

-- 2. Remover cliente que pediu exclusão (desde que não tenha mais agendamentos ativos)
DELETE FROM Clientes
WHERE id_cliente = 4;

-- 3. Remover um serviço descontinuado
DELETE FROM Servicos
WHERE id_servico = 4; -- Sobrancelha

