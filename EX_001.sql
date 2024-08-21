-- Active: 1724271195638@@127.0.0.1@3306@marina

-- 1. — ENCONTRE O NOME DOS MARINHEIROS QUE RESERVARAM PELO MENOS 1 BARCO
SELECT DISTINCT(m.nome_marin)
FROM  marinheiros m
INNER JOIN reservas r ON m.id_marin = r.fk_id_marin;

-- 2. -- ENCONTRE O NOME DOS MARINHEIROS QUE RESERVARAM O BARCO INTERLAKE.
SELECT m.nome_marin
FROM reservas r
INNER JOIN marinheiros m ON r.fk_id_marin = m.id_marin
INNER JOIN barco b ON r.fk_id_barco = b.id_barco
WHERE b.nome_barco = 'Interlake'

-- 3. -- ENCONTRE A AVALIAÇÃO DOS MARINHEIROS QUE RESERVARAM O BARCO MARINE.
SELECT m.avaliacao
FROM reservas r
INNER JOIN marinheiros m ON r.fk_id_marin = m.id_marin
INNER JOIN barco b ON r.fk_id_barco = b.id_barco
WHERE b.nome_barco = 'Marine'

-- 4. -- ENCONTRE A DATA DE NASCIMENTO E O NOME, DOS MARINHEIROS QUE RESERVARAM O BARCO CLIPPER
SELECT m.dataNascimento, m.nome_marin
FROM reservas r
INNER JOIN marinheiros m ON r.fk_id_marin = m.id_marin
INNER JOIN barco b ON r.fk_id_barco = b.id_barco
WHERE b.nome_barco = 'Clipper'

-- 5. -- ENCONTRE O ID E O DIA EM QUE OS MARINHEIROS RESERVARAM UM BARCO VERMELHO
SELECT r.id, DAY(r.diaReserva)
FROM reservas r
INNER JOIN marinheiros m ON r.fk_id_marin = m.id_marin
INNER JOIN barco b ON r.fk_id_barco = b.id_barco
WHERE b.cor = 'vermelho'

-- 6. -- ENCONTRE O ID E O DIA EM QUE OS MARINHEIROS RESERVARAM UM BARCO VERDE
SELECT r.id, DAY(r.diaReserva)
FROM reservas r
INNER JOIN marinheiros m ON r.fk_id_marin = m.id_marin
INNER JOIN barco b ON r.fk_id_barco = b.id_barco
WHERE b.cor = 'verde'

-- 7. -- ENCONTRE O ID E O DIA EM QUE OS MARINHEIROS RESERVARAM UM BARCO AZUL
SELECT r.id, DAY(r.diaReserva)
FROM reservas r
INNER JOIN marinheiros m ON r.fk_id_marin = m.id_marin
INNER JOIN barco b ON r.fk_id_barco = b.id_barco
WHERE b.cor = 'azul'

-- 8. — ENCONTRE AS CORES DOS BARCOS RESERVADOS POR LUBBER APRESENTE O NOME DO BARCO E A COR
SELECT b.nome_barco, b.cor
FROM reservas r
INNER JOIN marinheiros m ON r.fk_id_marin = m.id_marin
INNER JOIN barco b ON r.fk_id_barco = b.id_barco
WHERE m.nome_marin = 'Lubber'

-- 9. — ENCONTRE AS DATAS E O NOME DOS BARCOS RESERVADOS POR TECLAUDIO.
SELECT r.diaReserva, b.nome_barco
FROM reservas r
INNER JOIN marinheiros m ON r.fk_id_marin = m.id_marin
INNER JOIN barco b ON r.fk_id_barco = b.id_barco
WHERE m.nome_marin = 'Teclaudio'

-- 10.— ENCONTRE AS CORES E O NOME DOS BARCOS RESERVADOS POR DUSTIN NO DIA 10/10/2023
SELECT b.cor, b.nome_barco
FROM reservas r
INNER JOIN marinheiros m ON r.fk_id_marin = m.id_marin
INNER JOIN barco b ON r.fk_id_barco = b.id_barco
WHERE m.nome_marin = 'Dustin' AND r.diaReserva = '2023/10/10'

-- 11.— ENCONTRE O NOME DE QUEM RESERVOU UM BARCO NO DIA 2023/05/09
SELECT m.nome_marin
FROM reservas r
INNER JOIN marinheiros m ON r.fk_id_marin = m.id_marin
INNER JOIN barco b ON r.fk_id_barco = b.id_barco
WHERE r.diaReserva = '2023/05/09'

-- 12.— ENCONTRE O NOME DE QUEM RESERVOU UM BARCO DEPOIS DO DIA 2023/05/09 AGRUPE PELOS NOMES
SELECT m.nome_marin
FROM reservas r
INNER JOIN marinheiros m ON r.fk_id_marin = m.id_marin
INNER JOIN barco b ON r.fk_id_barco = b.id_barco
WHERE r.diaReserva > '2023/05/09'
GROUP BY m.nome_marin