-- =============================================
-- V8 - Inserção segura de conquista_aula
-- Relações entre conquistas e aulas
-- SEM USAR IDs FIXOS
-- =============================================


------------------------------------------------
-- 1. Ouvinte Atento → Unidade 1 (Aulas 1 e 2)
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c, aula a
WHERE c.nome = 'Ouvinte Atento'
  AND a.nome IN (
                 'Aula 1 - Reconhecer sons e sílabas',
                 'Aula 2 - Rimas e fonemas iniciais'
    );


------------------------------------------------
-- 2. Primeiras Letras → Unidade 2 (Aulas 1 a 3)
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c, aula a
WHERE c.nome = 'Primeiras Letras'
  AND a.nome IN (
                 'Aula 1 - Vogal A e I',
                 'Aula 2 - Consoantes F e M',
                 'Aula 3 - Vogal U e consoante L'
    );


------------------------------------------------
-- 3. Leitor em Formação → Unidade 2 (Aulas 1 a 4)
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c, aula a
WHERE c.nome = 'Leitor em Formação'
  AND a.nome IN (
                 'Aula 1 - Vogal A e I',
                 'Aula 2 - Consoantes F e M',
                 'Aula 3 - Vogal U e consoante L',
                 'Aula 4 - Vogal O, consoante V e E, N'
    );


------------------------------------------------
-- 4. Explorador de Sons → Unidade 3 (Aulas 1 e 2)
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c, aula a
WHERE c.nome = 'Explorador de Sons'
  AND a.nome IN (
                 'Aula 1 - Consoantes P e S',
                 'Aula 2 - Novos sons das vogais O e E'
    );


------------------------------------------------
-- 5. Construtor de Palavras → Unidade 3 (Aulas 1 a 3)
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c, aula a
WHERE c.nome = 'Construtor de Palavras'
  AND a.nome IN (
                 'Aula 1 - Consoantes P e S',
                 'Aula 2 - Novos sons das vogais O e E',
                 'Aula 3 - Consoantes T, Z, R, D, J, B'
    );


------------------------------------------------
-- 6. Mestre do Alfabeto → Unidade 4 (Aula 1)
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c, aula a
WHERE c.nome = 'Mestre do Alfabeto'
  AND a.nome = 'Aula 1 - Consoantes C, G, H, Q, X, K, W, Y';


------------------------------------------------
-- 7. Voz Nasal → Unidade 5 (Aula 1)
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c, aula a
WHERE c.nome = 'Voz Nasal'
  AND a.nome = 'Aula 1 - Vogais nasais e ditongos';


------------------------------------------------
-- 8. Caçador de Dígrafos → Unidade 5 (Aula 2)
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c, aula a
WHERE c.nome = 'Caçador de Dígrafos'
  AND a.nome = 'Aula 2 - Dígrafos';


------------------------------------------------
-- 9. Regras do Jogo → Unidade 6 (Aula 1)
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c, aula a
WHERE c.nome = 'Regras do Jogo'
  AND a.nome = 'Aula 1 - Regras de R e S';


------------------------------------------------
-- 10. Gênio das Regras → Unidade 6 (Aulas 2 e 3)
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c, aula a
WHERE c.nome = 'Gênio das Regras'
  AND a.nome IN (
                 'Aula 2 - Regras de C e G',
                 'Aula 3 - Encontros consonantais'
    );


------------------------------------------------
-- 11. Desbravador das Inconsistências → Unidade 7 (Aula 1)
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c, aula a
WHERE c.nome = 'Desbravador das Inconsistências'
  AND a.nome = 'Aula 1 - Sons inconsistentes';


------------------------------------------------
-- 12. Leitor Fluente → Unidade 7 (Aulas 1 e 2)
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c, aula a
WHERE c.nome = 'Leitor Fluente'
  AND a.nome IN (
                 'Aula 1 - Sons inconsistentes',
                 'Aula 2 - Revisão geral'
    );


------------------------------------------------
-- 13. Escritor Funcional → Unidades 6 e 7 (todas aulas)
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c
         JOIN aula a ON a.id_unidade IN (6, 7)
WHERE c.nome = 'Escritor Funcional';


------------------------------------------------
-- 14. Herói da Alfabetização → TODAS AS AULAS (1–7)
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c, aula a
WHERE c.nome = 'Herói da Alfabetização';


------------------------------------------------
-- 15. Conquistador das Palavras Frequentes → Unidades 5 a 7
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c
         JOIN aula a ON a.id_unidade IN (5, 6, 7)
WHERE c.nome = 'Conquistador das Palavras Frequentes';


------------------------------------------------
-- 16. Campeão da Escrita Certa → Unidades 2 a 6
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c
         JOIN aula a ON a.id_unidade IN (2, 3, 4, 5, 6)
WHERE c.nome = 'Campeão da Escrita Certa';


------------------------------------------------
-- 17. Super Auditivo → Unidades 1 e 2
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c
         JOIN aula a ON a.id_unidade IN (1, 2)
WHERE c.nome = 'Super Auditivo';


------------------------------------------------
-- 18. Guardião do Alfabeto → Unidades 2 a 4
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c
         JOIN aula a ON a.id_unidade IN (2, 3, 4)
WHERE c.nome = 'Guardião do Alfabeto';


------------------------------------------------
-- 19. Especialista em Leitura e Escrita → Unidades 5, 6 e 7
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c
         JOIN aula a ON a.id_unidade IN (5, 6, 7)
WHERE c.nome = 'Especialista em Leitura e Escrita';


------------------------------------------------
-- 20. Nenhum Brasileiro para Trás! → TODAS AS AULAS
------------------------------------------------
INSERT INTO conquista_aula (id_conquista, id_aula)
SELECT c.id_conquista, a.id_aula
FROM conquista c
         JOIN aula a ON TRUE
WHERE c.nome = 'Nenhum Brasileiro para Trás!';
