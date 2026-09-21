USE narahoteis_db;


-- ============================================================
-- 1. RESERVAS POR CANAL DE VENDA
-- ============================================================
-- Pergunta de negócio:
-- Quantas reservas estão associadas a cada canal de venda?

SELECT
    c.nome_canal,
    COUNT(r.id_reserva) AS qtd_reservas
FROM reservas r
JOIN canais_venda c
    ON r.id_canal = c.id_canal
GROUP BY
    c.nome_canal
ORDER BY
    qtd_reservas DESC;


-- ============================================================
-- 2. RESERVAS POR TIPO DE CLIENTE
-- ============================================================
-- Pergunta de negócio:
-- Qual tipo de cliente concentra o maior número de reservas?

SELECT
    c.tipo_cliente,
    COUNT(r.id_reserva) AS qtd_reservas
FROM reservas r
JOIN clientes c
    ON r.id_cliente = c.id_cliente
GROUP BY
    c.tipo_cliente
ORDER BY
    qtd_reservas DESC;


-- ============================================================
-- 3. RESERVAS POR ESTADO DE ORIGEM
-- ============================================================
-- Pergunta de negócio:
-- Quais estados de origem apresentam maior número de reservas?

SELECT
    c.estado_origem,
    COUNT(r.id_reserva) AS qtd_reservas
FROM reservas r
JOIN clientes c
    ON r.id_cliente = c.id_cliente
GROUP BY
    c.estado_origem
ORDER BY
    qtd_reservas DESC;


-- ============================================================
-- 4. RESERVAS POR CANAL E TIPO DE CLIENTE
-- ============================================================
-- Pergunta de negócio:
-- Quais canais são mais utilizados por cada tipo de cliente?

SELECT
    c.tipo_cliente,
    ca.nome_canal,
    COUNT(r.id_reserva) AS qtd_reservas
FROM reservas r
JOIN clientes c
    ON r.id_cliente = c.id_cliente
JOIN canais_venda ca
    ON r.id_canal = ca.id_canal
GROUP BY
    c.tipo_cliente,
    ca.nome_canal
ORDER BY
    c.tipo_cliente,
    qtd_reservas DESC;


-- ============================================================
-- 5. RESERVAS CANCELADAS POR CANAL
-- ============================================================
-- Pergunta de negócio:
-- Quais canais apresentam maior quantidade de reservas canceladas?

SELECT
    ca.nome_canal,
    COUNT(r.id_reserva) AS qtd_canceladas
FROM reservas r
JOIN canais_venda ca
    ON r.id_canal = ca.id_canal
WHERE
    r.status_reserva = 'Cancelada'
GROUP BY
    ca.nome_canal
ORDER BY
    qtd_canceladas DESC;


-- ============================================================
-- 6. RESERVAS POR UNIDADE
-- ============================================================
-- Pergunta de negócio:
-- Quais unidades concentram o maior número de reservas?

SELECT
    u.nome_unidade,
    COUNT(r.id_reserva) AS qtd_reservas
FROM reservas r
JOIN unidades u
    ON r.id_unidade = u.id_unidade
GROUP BY
    u.nome_unidade
ORDER BY
    qtd_reservas DESC;


-- ============================================================
-- 7. RESERVAS POR REGIÃO
-- ============================================================
-- Pergunta de negócio:
-- Quais regiões apresentam maior número de reservas?

SELECT
    u.regiao,
    COUNT(r.id_reserva) AS qtd_reservas
FROM reservas r
JOIN unidades u
    ON r.id_unidade = u.id_unidade
GROUP BY
    u.regiao
ORDER BY
    qtd_reservas DESC;


-- ============================================================
-- 8. MÉDIA DE AVALIAÇÃO POR UNIDADE
-- ============================================================
-- Pergunta de negócio:
-- Quais unidades apresentam melhor avaliação média dos hóspedes?

SELECT
    u.nome_unidade,
    AVG(r.avaliacao_hospede) AS media_avaliacao
FROM reservas r
JOIN unidades u
    ON r.id_unidade = u.id_unidade
WHERE
    r.avaliacao_hospede IS NOT NULL
GROUP BY
    u.nome_unidade
ORDER BY
    media_avaliacao DESC;


-- ============================================================
-- 9. RESERVAS POR TIPO DE QUARTO
-- ============================================================
-- Pergunta de negócio:
-- Quais tipos de quarto apresentam maior número de reservas?

SELECT
    tq.descricao,
    COUNT(r.id_reserva) AS qtd_reservas
FROM reservas r
JOIN tipo_quartos tq
    ON r.id_tipo_quarto = tq.id_tipo_quarto
GROUP BY
    tq.descricao
ORDER BY
    qtd_reservas DESC;


-- ============================================================
-- 10. UNIDADES COM MAIOR NÚMERO DE RESERVAS
-- ============================================================
-- Pergunta de negócio:
-- Quais unidades possuem mais de 100 reservas?

SELECT
    u.nome_unidade,
    COUNT(r.id_reserva) AS qtd_reservas
FROM reservas r
JOIN unidades u
    ON r.id_unidade = u.id_unidade
GROUP BY
    u.nome_unidade
HAVING
    COUNT(r.id_reserva) > 100
ORDER BY
    qtd_reservas DESC;