-- =============================================
-- V5 - Inserção das PRÁTICAS do projeto Alfabetiza+
-- Usando SELECT para evitar IDs fixos
-- =============================================


------------------------------------------------
-- UNIDADE 1 — AULA 1 — "Reconhecer sons e sílabas"
------------------------------------------------

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Ouça o som e selecione the imagem correspondente.',
       'https://server/img/praticas/som_1.png'
FROM atividade atv
WHERE atv.nome = 'Ouvir sons do ambiente';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Conte quantas sílabas a palavra possui.',
       'https://server/img/praticas/bater_palmas.png'
FROM atividade atv
WHERE atv.nome = 'Bater palmas por sílabas';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Escolha a divisão silábica correta.',
       'https://server/img/praticas/separar_silabas.png'
FROM atividade atv
WHERE atv.nome = 'Separar palavras em sílabas';


------------------------------------------------
-- UNIDADE 1 — AULA 2 — "Rimas e fonemas iniciais"
------------------------------------------------

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Encontre as palavras que rimam.',
       'https://server/img/praticas/rimas.png'
FROM atividade atv
WHERE atv.nome = 'Encontrar palavras que rimam';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Escolha o som inicial correto.',
       'https://server/img/praticas/som_inicial.png'
FROM atividade atv
WHERE atv.nome = 'Som inicial das palavras';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Identifique o som final semelhante.',
       'https://server/img/praticas/som_final.png'
FROM atividade atv
WHERE atv.nome = 'Som final das palavras';


-----------------------------------------------------------
-- UNIDADE 2 — AULA 1 — "A, I"
-----------------------------------------------------------

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Escolha a imagem que começa com a vogal A.',
       'https://server/img/praticas/vogal_a.png'
FROM atividade atv
WHERE atv.nome = 'Aprender a vogal A';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Selecione palavras com a vogal I.',
       'https://server/img/praticas/vogal_i.png'
FROM atividade atv
WHERE atv.nome = 'Aprender a vogal I';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Complete as palavras com A ou I.',
       'https://server/img/praticas/completar_ai.png'
FROM atividade atv
WHERE atv.nome = 'Completar palavras com A e I';


-----------------------------------------------------------
-- UNIDADE 2 — AULA 2 — "F e M"
-----------------------------------------------------------

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Associe a letra F às imagens corretas.',
       'https://server/img/praticas/letra_f.png'
FROM atividade atv
WHERE atv.nome = 'Aprender a letra F';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Associe a letra M às imagens corretas.',
       'https://server/img/praticas/letra_m.png'
FROM atividade atv
WHERE atv.nome = 'Aprender a letra M';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Monte as sílabas FA, FE, FI, FO, FU.',
       'https://server/img/praticas/silabas_f.png'
FROM atividade atv
WHERE atv.nome = 'Formar sílabas FA, FE, FI, FO, FU';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Monte as sílabas MA, ME, MI, MO, MU.',
       'https://server/img/praticas/silabas_m.png'
FROM atividade atv
WHERE atv.nome = 'Formar sílabas MA, ME, MI, MO, MU';


-----------------------------------------------------------
-- UNIDADE 2 — AULA 3 — "U e L"
-----------------------------------------------------------

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Identifique objetos que começam com a vogal U.',
       'https://server/img/praticas/vogal_u.png'
FROM atividade atv
WHERE atv.nome = 'Aprender a vogal U';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Associe a consoante L às imagens.',
       'https://server/img/praticas/consoante_l.png'
FROM atividade atv
WHERE atv.nome = 'Aprender a consoante L';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Complete as palavras com a letra L.',
       'https://server/img/praticas/completar_l.png'
FROM atividade atv
WHERE atv.nome = 'Palavras com L';


-----------------------------------------------------------
-- UNIDADE 2 — AULA 4 — "O, V, E, N"
-----------------------------------------------------------

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Identifique a vogal O nas palavras.',
       'https://server/img/praticas/vogal_o.png'
FROM atividade atv
WHERE atv.nome = 'Aprender a vogal O';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Associe as letras V e N às palavras corretas.',
       'https://server/img/praticas/consoantes_vn.png'
FROM atividade atv
WHERE atv.nome = 'Aprender as letras V e N';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Monte palavras simples com O, V, E, N.',
       'https://server/img/praticas/montar_palavras.png'
FROM atividade atv
WHERE atv.nome = 'Montar palavras simples';


-----------------------------------------------------------
-- UNIDADE 3 — AULA 1 — "P e S"
-----------------------------------------------------------

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Associe imagens às sílabas com P.',
       'https://server/img/praticas/silabas_p.png'
FROM atividade atv
WHERE atv.nome = 'Aprender letra P';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Associe imagens às sílabas com S.',
       'https://server/img/praticas/silabas_s.png'
FROM atividade atv
WHERE atv.nome = 'Aprender letra S';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Monte sílabas com P e S.',
       'https://server/img/praticas/montar_ps.png'
FROM atividade atv
WHERE atv.nome = 'Formar sílabas com P e S';


-----------------------------------------------------------
-- UNIDADE 3 — AULA 2 — "sons variáveis"
-----------------------------------------------------------

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Identifique palavras com som Ô e Ó.',
       'https://server/img/praticas/sons_o.png'
FROM atividade atv
WHERE atv.nome = 'Som Ô e som Ó';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Comparar Ê e É.',
       'https://server/img/praticas/sons_e.png'
FROM atividade atv
WHERE atv.nome = 'Som Ê e som É';


-----------------------------------------------------------
-- UNIDADE 3 — AULA 3 — "T, Z, R, D, J, B"
-----------------------------------------------------------

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Associe as novas consoantes às imagens.',
       'https://server/img/praticas/consoantes_3.png'
FROM atividade atv
WHERE atv.nome = 'Aprender novas letras';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Forme palavras usando as consoantes estudadas.',
       'https://server/img/praticas/formar_palavras.png'
FROM atividade atv
WHERE atv.nome = 'Formação de palavras';


------------------------------------------------
-- PRÁTICAS — UNIDADE 4 — AULA 1
------------------------------------------------

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Associe as palavras aos sons de C (CA, CE, CI, CO, CU).',
       'https://server/img/praticas/consoante_c.png'
FROM atividade atv
WHERE atv.nome = 'Aprender a letra C e seus sons';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Escolha as palavras com GE e GI.',
       'https://server/img/praticas/consoante_g.png'
FROM atividade atv
WHERE atv.nome = 'Aprender a letra G e seus sons';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Identifique o uso do H em palavras (hoje, hora, humano).',
       'https://server/img/praticas/consoante_h.png'
FROM atividade atv
WHERE atv.nome = 'Uso da letra H';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Selecione o som correto da letra X.',
       'https://server/img/praticas/consoante_x.png'
FROM atividade atv
WHERE atv.nome = 'Sons do X';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Reconheça palavras com K, W e Y.',
       'https://server/img/praticas/consoantes_estrangeiras.png'
FROM atividade atv
WHERE atv.nome = 'As letras estrangeiras K, W, Y';


------------------------------------------------
-- PRÁTICAS — UNIDADE 5 — AULA 1
------------------------------------------------

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Escolha palavras com vogais nasais (ã, õ).',
       'https://server/img/praticas/vogais_nasais.png'
FROM atividade atv
WHERE atv.nome = 'Reconhecer vogais nasais';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Complete palavras com ditongos nasais (ão, am, an).',
       'https://server/img/praticas/ditongos_nasais.png'
FROM atividade atv
WHERE atv.nome = 'Ditongos nasais';


------------------------------------------------
-- PRÁTICAS — UNIDADE 5 — AULA 2
------------------------------------------------

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Associe palavras contendo CH, NH e LH.',
       'https://server/img/praticas/digrafos_ch_nh_lh.png'
FROM atividade atv
WHERE atv.nome = 'Dígrafos CH, NH, LH';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Identifique palavras com RR e SS.',
       'https://server/img/praticas/digrafos_rr_ss.png'
FROM atividade atv
WHERE atv.nome = 'Dígrafos RR, SS';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Escolha palavras com QU e GU corretamente.',
       'https://server/img/praticas/digrafos_qu_gu.png'
FROM atividade atv
WHERE atv.nome = 'Dígrafos QU e GU';


------------------------------------------------
-- PRÁTICAS — UNIDADE 5 — AULA 3
------------------------------------------------

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Complete palavras misturando nasais e dígrafos estudados.',
       'https://server/img/praticas/revisao_nasais_digrafos.png'
FROM atividade atv
WHERE atv.nome = 'Revisão geral de nasais e dígrafos';


------------------------------------------------
-- PRÁTICAS — UNIDADE 6 — AULA 1
------------------------------------------------

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Escolha palavras com R fraco (caro, pera).',
       'https://server/img/praticas/som_r_fraco.png'
FROM atividade atv
WHERE atv.nome = 'Uso do R entre vogais';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Escolha palavras com RR forte (carro, torre).',
       'https://server/img/praticas/som_rr_forte.png'
FROM atividade atv
WHERE atv.nome = 'Uso do R entre vogais';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Identifique o som correto de S, SS e Z.',
       'https://server/img/praticas/som_s_z.png'
FROM atividade atv
WHERE atv.nome = 'Uso do S entre vogais';


------------------------------------------------
-- PRÁTICAS — UNIDADE 6 — AULA 2
------------------------------------------------

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Associe palavras com CE / CI e GE / GI.',
       'https://server/img/praticas/regra_c_g.png'
FROM atividade atv
WHERE atv.nome = 'Uso de C e G antes de E e I';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Classifique palavras conforme os sons de C e G.',
       'https://server/img/praticas/classificacao_cg.png'
FROM atividade atv
WHERE atv.nome = 'Palavras com C e G';


------------------------------------------------
-- PRÁTICAS — UNIDADE 6 — AULA 3
------------------------------------------------

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Associe palavras com encontros consonantais com R (br, cr, dr...).',
       'https://server/img/praticas/encontros_r.png'
FROM atividade atv
WHERE atv.nome = 'Encontros consonantais com R';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Associe palavras com encontros consonantais com L (bl, cl, fl...).',
       'https://server/img/praticas/encontros_l.png'
FROM atividade atv
WHERE atv.nome = 'Encontros consonantais com L';


------------------------------------------------
-- PRÁTICAS — UNIDADE 7 — AULA 1
------------------------------------------------

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Escolha o som correto da letra X na palavra.',
       'https://server/img/praticas/som_x_variavel.png'
FROM atividade atv
WHERE atv.nome = 'Letra X: múltiplos sons';

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Selecione palavras com Z em posições diferentes.',
       'https://server/img/praticas/letra_z.png'
FROM atividade atv
WHERE atv.nome = 'Letra Z e suas variações';


------------------------------------------------
-- PRÁTICAS — UNIDADE 7 — AULA 2
------------------------------------------------

INSERT INTO pratica (id_atividade, descricao, imagem_url)
SELECT atv.id_atividade,
       'Marque a opção correta nas palavras com sons inconsistentes.',
       'https://server/img/praticas/revisao_inconsistentes.png'
FROM atividade atv
WHERE atv.nome = 'Revisão geral de sons inconsistentes';


