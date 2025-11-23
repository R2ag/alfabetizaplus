------------------------------------------------
-- RESPOSTAS — PRÁTICA: "Ouça o som e selecione a imagem correspondente."
------------------------------------------------
INSERT INTO resposta_possivel (id_pratica, descricao, imagem_url, correta)
SELECT p.id_pratica, 'Cachorro', '/img/respostas/cachorro.png', true
FROM pratica p WHERE p.descricao = 'Ouça o som e selecione the imagem correspondente.';

INSERT INTO resposta_possivel (id_pratica, descricao, imagem_url, correta)
SELECT p.id_pratica, 'Carro', '/img/respostas/carro.png', false
FROM pratica p WHERE p.descricao = 'Ouça o som e selecione the imagem correspondente.';

INSERT INTO resposta_possivel (id_pratica, descricao, imagem_url, correta)
SELECT p.id_pratica, 'Chuva', '/img/respostas/chuva.png', false
FROM pratica p WHERE p.descricao = 'Ouça o som e selecione the imagem correspondente.';


------------------------------------------------
-- RESPOSTAS — PRÁTICA: "Conte quantas sílabas a palavra possui."
------------------------------------------------
INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, '2 sílabas', true
FROM pratica p WHERE p.descricao = 'Conte quantas sílabas a palavra possui.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, '1 sílaba', false
FROM pratica p WHERE p.descricao = 'Conte quantas sílabas a palavra possui.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, '3 sílabas', false
FROM pratica p WHERE p.descricao = 'Conte quantas sílabas a palavra possui.';


------------------------------------------------
-- RESPOSTAS — PRÁTICA: "Escolha a divisão silábica correta."
------------------------------------------------
INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'CA-CHOR-RO', true
FROM pratica p WHERE p.descricao = 'Escolha a divisão silábica correta.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'CACH-O-RRO', false
FROM pratica p WHERE p.descricao = 'Escolha a divisão silábica correta.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'CA-CHO-RRO', false
FROM pratica p WHERE p.descricao = 'Escolha a divisão silábica correta.';

------------------------------------------------
-- "Encontre as palavras que rimam."
------------------------------------------------
INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Sino - Menino', true
FROM pratica p WHERE p.descricao = 'Encontre as palavras que rimam.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Pato - Mesa', false
FROM pratica p WHERE p.descricao = 'Encontre as palavras que rimam.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Casa - Fogo', false
FROM pratica p WHERE p.descricao = 'Encontre as palavras que rimam.';


------------------------------------------------
-- "Escolha o som inicial correto."
------------------------------------------------
INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, '/C/', true
FROM pratica p WHERE p.descricao = 'Escolha o som inicial correto.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, '/P/', false
FROM pratica p WHERE p.descricao = 'Escolha o som inicial correto.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, '/M/', false
FROM pratica p WHERE p.descricao = 'Escolha o som inicial correto.';


------------------------------------------------
-- "Identifique o som final semelhante."
------------------------------------------------
INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Som final /S/', true
FROM pratica p WHERE p.descricao = 'Identifique o som final semelhante.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Som final /A/', false
FROM pratica p WHERE p.descricao = 'Identifique o som final semelhante.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Som final /O/', false
FROM pratica p WHERE p.descricao = 'Identifique o som final semelhante.';


------------------------------------------------
-- "Escolha a imagem que começa com a vogal A."
------------------------------------------------
INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Abelha', true
FROM pratica p WHERE p.descricao = 'Escolha a imagem que começa com a vogal A.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Mesa', false
FROM pratica p WHERE p.descricao = 'Escolha a imagem que começa com a vogal A.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Janela', false
FROM pratica p WHERE p.descricao = 'Escolha a imagem que começa com a vogal A.';


------------------------------------------------
-- "Selecione palavras com a vogal I."
------------------------------------------------
INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Igreja', true
FROM pratica p WHERE p.descricao = 'Selecione palavras com a vogal I.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Faca', false
FROM pratica p WHERE p.descricao = 'Selecione palavras com a vogal I.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Mesa', false
FROM pratica p WHERE p.descricao = 'Selecione palavras com a vogal I.';


------------------------------------------------
-- "Complete as palavras com A ou I."
------------------------------------------------
INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'C__SA = CASA', true
FROM pratica p WHERE p.descricao = 'Complete as palavras com A ou I.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'M__O = MIO', false
FROM pratica p WHERE p.descricao = 'Complete as palavras com A ou I.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'P__DE = PIDE', false
FROM pratica p WHERE p.descricao = 'Complete as palavras com A ou I.';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'PA - PATO', true
FROM pratica p WHERE p.descricao = 'Associe imagens às sílabas com P.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'MA - MALA', false
FROM pratica p WHERE p.descricao = 'Associe imagens às sílabas com P.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'SA - SAPO', false
FROM pratica p WHERE p.descricao = 'Associe imagens às sílabas com P.';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'SA - SAPATO', true
FROM pratica p WHERE p.descricao = 'Associe imagens às sílabas com S.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'PA - PATO', false
FROM pratica p WHERE p.descricao = 'Associe imagens às sílabas com S.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'LA - LATA', false
FROM pratica p WHERE p.descricao = 'Associe imagens às sílabas com S.';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'PA — SA', true
FROM pratica p WHERE p.descricao = 'Monte sílabas com P e S.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'ME — FI', false
FROM pratica p WHERE p.descricao = 'Monte sílabas com P e S.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'RA — LO', false
FROM pratica p WHERE p.descricao = 'Monte sílabas com P e S.';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'AVÔ', true
FROM pratica p WHERE p.descricao = 'Identifique palavras com som Ô e Ó.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'VOZ', false
FROM pratica p WHERE p.descricao = 'Identifique palavras com som Ô e Ó.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'FOTO', false
FROM pratica p WHERE p.descricao = 'Identifique palavras com som Ô e Ó.';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'VÊ', true
FROM pratica p WHERE p.descricao = 'Comparar Ê e É.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'PÉ', false
FROM pratica p WHERE p.descricao = 'Comparar Ê e É.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'TEIA', false
FROM pratica p WHERE p.descricao = 'Comparar Ê e É.';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Bola (B)', true
FROM pratica p WHERE p.descricao = 'Associe as novas consoantes às imagens.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Casa (C)', false
FROM pratica p WHERE p.descricao = 'Associe as novas consoantes às imagens.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Faca (F)', false
FROM pratica p WHERE p.descricao = 'Associe as novas consoantes às imagens.';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'BOLA', true
FROM pratica p WHERE p.descricao = 'Forme palavras usando as consoantes estudadas.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'MESA', false
FROM pratica p WHERE p.descricao = 'Forme palavras usando as consoantes estudadas.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'GATO', false
FROM pratica p WHERE p.descricao = 'Forme palavras usando as consoantes estudadas.';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'CE — CEBOLA', true
FROM pratica p WHERE p.descricao = 'Associe as palavras aos sons de C (CA, CE, CI, CO, CU).';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'GA — GATO', false
FROM pratica p WHERE p.descricao = 'Associe as palavras aos sons de C (CA, CE, CI, CO, CU).';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'FA — FADA', false
FROM pratica p WHERE p.descricao = 'Associe as palavras aos sons de C (CA, CE, CI, CO, CU).';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'GELADO', true
FROM pratica p WHERE p.descricao = 'Escolha as palavras com GE e GI.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'CASA', false
FROM pratica p WHERE p.descricao = 'Escolha as palavras com GE e GI.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'PATO', false
FROM pratica p WHERE p.descricao = 'Escolha as palavras com GE e GI.';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'HORA', true
FROM pratica p WHERE p.descricao = 'Identifique o uso do H em palavras (hoje, hora, humano).';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'OLA', false
FROM pratica p WHERE p.descricao = 'Identifique o uso do H em palavras (hoje, hora, humano).';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'UVA', false
FROM pratica p WHERE p.descricao = 'Identifique o uso do H em palavras (hoje, hora, humano).';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'EXAME (som de Z)', true
FROM pratica p WHERE p.descricao = 'Selecione o som correto da letra X.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'XÍCARA (som de CH)', false
FROM pratica p WHERE p.descricao = 'Selecione o som correto da letra X.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'TAXI (som de KS)', false
FROM pratica p WHERE p.descricao = 'Selecione o som correto da letra X.';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'MÃE', true
FROM pratica p WHERE p.descricao = 'Escolha palavras com vogais nasais (ã, õ).';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'MALA', false
FROM pratica p WHERE p.descricao = 'Escolha palavras com vogais nasais (ã, õ).';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'OVO', false
FROM pratica p WHERE p.descricao = 'Escolha palavras com vogais nasais (ã, õ).';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'PÃO', true
FROM pratica p WHERE p.descricao = 'Complete palavras com ditongos nasais (ão, am, an).';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'PALO', false
FROM pratica p WHERE p.descricao = 'Complete palavras com ditongos nasais (ão, am, an).';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'PAN', false
FROM pratica p WHERE p.descricao = 'Complete palavras com ditongos nasais (ão, am, an).';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'CHUVA', true
FROM pratica p WHERE p.descricao = 'Associe palavras contendo CH, NH e LH.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'FACA', false
FROM pratica p WHERE p.descricao = 'Associe palavras contendo CH, NH e LH.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'MESA', false
FROM pratica p WHERE p.descricao = 'Associe palavras contendo CH, NH e LH.';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'CARRO (RR)', true
FROM pratica p WHERE p.descricao = 'Identifique palavras com RR e SS.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'CASA', false
FROM pratica p WHERE p.descricao = 'Identifique palavras com RR e SS.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'FOSSO (SS)', false
FROM pratica p WHERE p.descricao = 'Identifique palavras com RR e SS.';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'QUEIJO', true
FROM pratica p WHERE p.descricao = 'Escolha palavras com QU e GU corretamente.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'GATO', false
FROM pratica p WHERE p.descricao = 'Escolha palavras com QU e GU corretamente.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'MALA', false
FROM pratica p WHERE p.descricao = 'Escolha palavras com QU e GU corretamente.';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'PÃO — CHUVA — MÃE', true
FROM pratica p WHERE p.descricao = 'Complete palavras misturando nasais e dígrafos estudados.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'PALA — MISA — LUA', false
FROM pratica p WHERE p.descricao = 'Complete palavras misturando nasais e dígrafos estudados.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'MAU — COCO — RUA', false
FROM pratica p WHERE p.descricao = 'Complete palavras misturando nasais e dígrafos estudados.';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Caro', true
FROM pratica p WHERE p.descricao = 'Escolha palavras com R fraco (caro, pera).';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Carro', false
FROM pratica p WHERE p.descricao = 'Escolha palavras com R fraco (caro, pera).';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Terra', false
FROM pratica p WHERE p.descricao = 'Escolha palavras com R fraco (caro, pera).';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Carro', true
FROM pratica p WHERE p.descricao = 'Escolha palavras com RR forte (carro, torre).';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Caro', false
FROM pratica p WHERE p.descricao = 'Escolha palavras com RR forte (carro, torre).';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Mala', false
FROM pratica p WHERE p.descricao = 'Escolha palavras com RR forte (carro, torre).';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'CASA (som de Z)', true
FROM pratica p WHERE p.descricao = 'Identifique o som correto de S, SS e Z.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'MASSA (som de SS)', false
FROM pratica p WHERE p.descricao = 'Identifique o som correto de S, SS e Z.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'SAPO (som de S forte)', false
FROM pratica p WHERE p.descricao = 'Identifique o som correto de S, SS e Z.';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'CINEMA', true
FROM pratica p WHERE p.descricao = 'Associe palavras com CE / CI e GE / GI.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'GATO', false
FROM pratica p WHERE p.descricao = 'Associe palavras com CE / CI e GE / GI.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'MAMA', false
FROM pratica p WHERE p.descricao = 'Associe palavras com CE / CI e GE / GI.';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Gelo / Gente / Cinema', true
FROM pratica p WHERE p.descricao = 'Classifique palavras conforme os sons de C e G.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Gato / Pato / Mala', false
FROM pratica p WHERE p.descricao = 'Classifique palavras conforme os sons de C e G.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'Copo / Gota / Lata', false
FROM pratica p WHERE p.descricao = 'Classifique palavras conforme os sons de C e G.';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'BR — BRINCO', true
FROM pratica p WHERE p.descricao = 'Associe palavras com encontros consonantais com R (br, cr, dr...).';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'LA — LATA', false
FROM pratica p WHERE p.descricao = 'Associe palavras com encontros consonantais com R (br, cr, dr...).';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'TE — TETO', false
FROM pratica p WHERE p.descricao = 'Associe palavras com encontros consonantais com R (br, cr, dr...).';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'FL — FLOR', true
FROM pratica p WHERE p.descricao = 'Associe palavras com encontros consonantais com L (bl, cl, fl...).';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'BR — BRINCO', false
FROM pratica p WHERE p.descricao = 'Associe palavras com encontros consonantais com L (bl, cl, fl...).';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'MA — MALA', false
FROM pratica p WHERE p.descricao = 'Associe palavras com encontros consonantais com L (bl, cl, fl...).';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'EXAME (som de Z)', true
FROM pratica p WHERE p.descricao = 'Escolha o som correto da letra X na palavra.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'XÍCARA (som de CH)', false
FROM pratica p WHERE p.descricao = 'Escolha o som correto da letra X na palavra.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'TAXI (som de KS)', false
FROM pratica p WHERE p.descricao = 'Escolha o som correto da letra X na palavra.';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'ZEBRA', true
FROM pratica p WHERE p.descricao = 'Selecione palavras com Z em posições diferentes.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'CASA', false
FROM pratica p WHERE p.descricao = 'Selecione palavras com Z em posições diferentes.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'MALA', false
FROM pratica p WHERE p.descricao = 'Selecione palavras com Z em posições diferentes.';


INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'EXAME — acordo com som /Z/', true
FROM pratica p WHERE p.descricao = 'Marque a opção correta nas palavras com sons inconsistentes.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'XÍCARA — som de KS', false
FROM pratica p WHERE p.descricao = 'Marque a opção correta nas palavras com sons inconsistentes.';

INSERT INTO resposta_possivel (id_pratica, descricao, correta)
SELECT p.id_pratica, 'TEXTO — som de Z', false
FROM pratica p WHERE p.descricao = 'Marque a opção correta nas palavras com sons inconsistentes.';


