-- ==============================================
--  INSERÇÃO DE DADOS - SISTEMA DE AGENDAMENTO
-- ==============================================

-- Tabela Clientes
INSERT INTO Clientes (nome, telefone, email)
VALUES
('João Silva', '47988880001', 'joao@gmail.com'),
('Marina Lopes', '47998770002', 'marina@gmail.com'),
('Carlos Alberto', '47991234567', 'carlos@gmail.com'),
('Fernanda Dias', '47990011223', 'fernanda@gmail.com');

-- Tabela Barbeiros
INSERT INTO Barbeiros (nome, especialidade)
VALUES
('Rafael Souza', 'Corte Masculino'),
('Diego Martins', 'Barba e Navalha'),
('Henrique Rocha', 'Tintura Masculina');

-- Tabela Serviços
INSERT INTO Servicos (nome_servico, descricao, preco)
VALUES
('Corte Masculino', 'Corte simples com tesoura ou máquina', 40.00),
('Barba Completa', 'Aparação + Navalha quente', 35.00),
('Corte + Barba', 'Pacote completo', 70.00),
('Sobrancelha', 'Limpeza e alinhamento', 15.00);

-- Tabela Agendamentos
INSERT INTO Agendamentos (id_cliente, id_barbeiro, id_servico, data_hora, status)
VALUES
(1, 1, 1, '2025-03-01 09:00:00', 'Agendado'),
(2, 3, 3, '2025-03-01 10:30:00', 'Agendado'),
(3, 2, 2, '2025-03-01 14:00:00', 'Concluído'),
(4, 1, 4, '2025-03-02 16:00:00', 'Cancelado'),
(1, 2, 2, '2025-03-03 11:00:00', 'Agendado');
