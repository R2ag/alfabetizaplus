-- =============================================
-- V3 - Inserção das AULAS do projeto Alfabetiza+
-- Usando SELECT para evitar IDs fixos
-- =============================================

-----------------------------
-- UNIDADE 1 – Aprender a ouvir
-----------------------------

INSERT INTO aula (id_unidade, nome, descricao, video_aula_url)
SELECT u.id_unidade,
       'Aula 1 - Reconhecer sons e sílabas',
       'Desenvolver a percepção auditiva e identificação de sílabas.',
       'Fm3gvxkIfrg'
FROM unidade u
WHERE u.nome = 'Unidade 1 - Aprender a ouvir';

INSERT INTO aula (id_unidade, nome, descricao, video_aula_url)
SELECT u.id_unidade,
       'Aula 2 - Rimas e fonemas iniciais',
       'Trabalhar palavras que rimam e distinguir sons iniciais e finais.',
       'Fm3gvxkIfrg'
FROM unidade u
WHERE u.nome = 'Unidade 1 - Aprender a ouvir';


-----------------------------
-- UNIDADE 2 – As primeiras letras
-----------------------------

INSERT INTO aula (id_unidade, nome, descricao)
SELECT u.id_unidade,
       'Aula 1 - Vogal A e I',
       'Aprender e escrever as vogais A e I.'
FROM unidade u WHERE u.nome = 'Unidade 2 - As primeiras letras';

INSERT INTO aula (id_unidade, nome, descricao)
SELECT u.id_unidade,
       'Aula 2 - Consoantes F e M',
       'Aprender as consoantes F e M e praticar leitura de palavras com A, I, F, M.'
FROM unidade u WHERE u.nome = 'Unidade 2 - As primeiras letras';

INSERT INTO aula (id_unidade, nome, descricao)
SELECT u.id_unidade,
       'Aula 3 - Vogal U e consoante L',
       'Aprender a letra U e a consoante L.'
FROM unidade u WHERE u.nome = 'Unidade 2 - As primeiras letras';

INSERT INTO aula (id_unidade, nome, descricao)
SELECT u.id_unidade,
       'Aula 4 - Vogal O, consoante V e E, N',
       'Consolidar o aprendizado das primeiras letras.'
FROM unidade u WHERE u.nome = 'Unidade 2 - As primeiras letras';


-----------------------------
-- UNIDADE 3 – Novas letras
-----------------------------

INSERT INTO aula (id_unidade, nome, descricao)
SELECT u.id_unidade,
       'Aula 1 - Consoantes P e S',
       'Aprender as consoantes P e S e suas combinações.'
FROM unidade u WHERE u.nome = 'Unidade 3 - Novas letras';

INSERT INTO aula (id_unidade, nome, descricao)
SELECT u.id_unidade,
       'Aula 2 - Novos sons das vogais O e E',
       'Compreender os sons “u”, “ê” e “ô” representados por O e E.'
FROM unidade u WHERE u.nome = 'Unidade 3 - Novas letras';

INSERT INTO aula (id_unidade, nome, descricao)
SELECT u.id_unidade,
       'Aula 3 - Consoantes T, Z, R, D, J, B',
       'Ampliar o repertório de leitura e escrita com novas consoantes.'
FROM unidade u WHERE u.nome = 'Unidade 3 - Novas letras';


-----------------------------
-- UNIDADE 4 – As últimas letras
-----------------------------

INSERT INTO aula (id_unidade, nome, descricao)
SELECT u.id_unidade,
       'Aula 1 - Consoantes C, G, H, Q, X, K, W, Y',
       'Finalizar o alfabeto e praticar sons de letras com usos variados.'
FROM unidade u WHERE u.nome = 'Unidade 4 - As últimas letras';


-----------------------------
-- UNIDADE 5 – Juntando letras
-----------------------------

INSERT INTO aula (id_unidade, nome, descricao)
SELECT u.id_unidade,
       'Aula 1 - Vogais nasais e ditongos',
       'Aprender sons nasais e ditongos nasais.'
FROM unidade u WHERE u.nome = 'Unidade 5 - Juntando letras';

INSERT INTO aula (id_unidade, nome, descricao)
SELECT u.id_unidade,
       'Aula 2 - Dígrafos',
       'Aprender os dígrafos NH, LH, RR, SS, CH, QU, GU, Ç.'
FROM unidade u WHERE u.nome = 'Unidade 5 - Juntando letras';

INSERT INTO aula (id_unidade, nome, descricao)
SELECT u.id_unidade,
       'Aula 3 - Consolidação',
       'Aplicar as regras de escrita com nasais e dígrafos.'
FROM unidade u WHERE u.nome = 'Unidade 5 - Juntando letras';


-----------------------------
-- UNIDADE 6 – Letras com regras
-----------------------------

INSERT INTO aula (id_unidade, nome, descricao)
SELECT u.id_unidade,
       'Aula 1 - Regras de R e S',
       'Aprender a ler e escrever R e S entre vogais.'
FROM unidade u WHERE u.nome = 'Unidade 6 - Letras com regras';

INSERT INTO aula (id_unidade, nome, descricao)
SELECT u.id_unidade,
       'Aula 2 - Regras de C e G',
       'Aprender as regras de C e G antes de E e I.'
FROM unidade u WHERE u.nome = 'Unidade 6 - Letras com regras';

INSERT INTO aula (id_unidade, nome, descricao)
SELECT u.id_unidade,
       'Aula 3 - Encontros consonantais',
       'Ler e escrever encontros consonantais com R e L.'
FROM unidade u WHERE u.nome = 'Unidade 6 - Letras com regras';


-----------------------------
-- UNIDADE 7 – Letras inconsistentes
-----------------------------

INSERT INTO aula (id_unidade, nome, descricao)
SELECT u.id_unidade,
       'Aula 1 - Sons inconsistentes',
       'Compreender casos em que letras têm sons variáveis.'
FROM unidade u WHERE u.nome = 'Unidade 7 - Letras inconsistentes';

INSERT INTO aula (id_unidade, nome, descricao)
SELECT u.id_unidade,
       'Aula 2 - Revisão geral',
       'Leitura e escrita de palavras e frases com regras inconsistentes.'
FROM unidade u WHERE u.nome = 'Unidade 7 - Letras inconsistentes';



