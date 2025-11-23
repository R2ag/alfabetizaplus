-- =============================================
-- V4 - Inserção das ATIVIDADES do projeto Alfabetiza+
-- Usando SELECT para evitar IDs fixos
-- =============================================

------------------------------------------------
-- ATIVIDADES — UNIDADE 1 — AULA 1
------------------------------------------------

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Ouvir sons do ambiente',
       'Atividade de identificação de sons comuns do cotidiano, como carro, cachorro, chuva e passos.',
       NULL
FROM aula a
WHERE a.nome = 'Aula 1 - Reconhecer sons e sílabas';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Bater palmas por sílabas',
       'O aluno bate palmas de acordo com o número de sílabas das palavras ditas pelo instrutor.',
       NULL
FROM aula a
WHERE a.nome = 'Aula 1 - Reconhecer sons e sílabas';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Separar palavras em sílabas',
       'O aluno ouve uma palavra e seleciona visualmente a divisão silábica correta.',
       NULL
FROM aula a
WHERE a.nome = 'Aula 1 - Reconhecer sons e sílabas';


------------------------------------------------
-- ATIVIDADES — UNIDADE 1 — AULA 2
------------------------------------------------

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Encontrar palavras que rimam',
       'O aluno ouve duas palavras e identifica se elas rimam.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 2 - Rimas e fonemas iniciais';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Som inicial das palavras',
       'Identificação do fonema inicial a partir de imagens e sons.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 2 - Rimas e fonemas iniciais';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Som final das palavras',
       'Atividade que reforça sons finais semelhantes em palavras comuns.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 2 - Rimas e fonemas iniciais';


------------------------------------------------
-- ATIVIDADES — UNIDADE 2 — AULA 1 (A, I)
------------------------------------------------

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Aprender a vogal A',
       'Reconhecimento auditivo e visual da vogal A, com exemplos práticos.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 1 - Vogal A e I';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Aprender a vogal I',
       'Apresentação e treino da vogal I com imagens e sons associados.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 1 - Vogal A e I';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Completar palavras com A e I',
       'O aluno completa palavras simples com as vogais corretas.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 1 - Vogal A e I';


------------------------------------------------
-- ATIVIDADES — UNIDADE 2 — AULA 2 (F, M)
------------------------------------------------

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Aprender a letra F',
       'Associação da letra F com imagens (fogo, faca, foca).',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 2 - Consoantes F e M';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Aprender a letra M',
       'Treino da letra M com exemplos do cotidiano (mesa, mala).',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 2 - Consoantes F e M';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Formar sílabas FA, FE, FI, FO, FU',
       'Construção de sílabas simples com F.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 2 - Consoantes F e M';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Formar sílabas MA, ME, MI, MO, MU',
       'Construção de sílabas com M.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 2 - Consoantes F e M';


------------------------------------------------
-- ATIVIDADES — UNIDADE 2 — AULA 3 (U, L)
------------------------------------------------

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Aprender a vogal U',
       'Identificação e prática auditiva da vogal U.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 3 - Vogal U e consoante L';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Aprender a consoante L',
       'Treino da letra L e suas combinações.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 3 - Vogal U e consoante L';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Palavras com L',
       'Montagem de palavras simples como LATA, LAMA, LUPA.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 3 - Vogal U e consoante L';


------------------------------------------------
-- ATIVIDADES — UNIDADE 2 — AULA 4 (O, V, E, N)
------------------------------------------------

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Aprender a vogal O',
       'Exemplos sonoros e visuais da vogal O.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 4 - Vogal O, consoante V e E, N';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Aprender as letras V e N',
       'Identificação das consoantes e seus sons.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 4 - Vogal O, consoante V e E, N';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Montar palavras simples',
       'Montagem de palavras com O, V, E, N.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 4 - Vogal O, consoante V e E, N';


------------------------------------------------
-- ATIVIDADES — UNIDADE 3 — AULA 1 (P, S)
------------------------------------------------

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Aprender letra P',
       'Associação da letra P com sons e imagens.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 1 - Consoantes P e S';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Aprender letra S',
       'Identificação da letra S no início e final de palavras.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 1 - Consoantes P e S';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Formar sílabas com P e S',
       'PA, PE, PI, PO, PU; SA, SE, SI, SO, SU.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 1 - Consoantes P e S';


------------------------------------------------
-- ATIVIDADES — UNIDADE 3 — AULA 2 (sons vocálicos)
------------------------------------------------

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Som Ô e som Ó',
       'Diferenciação auditiva entre sons abertos e fechados.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 2 - Novos sons das vogais O e E';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Som Ê e som É',
       'Comparação de sílabas com variação vocálica.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 2 - Novos sons das vogais O e E';


------------------------------------------------
-- ATIVIDADES — UNIDADE 3 — AULA 3 (T, Z, R, D, J, B)
------------------------------------------------

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Aprender novas letras',
       'Apresentação das letras T, Z, R, D, J e B.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 3 - Consoantes T, Z, R, D, J, B';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Formação de palavras',
       'Montar palavras usando as novas consoantes.',
       'Fm3gvxkIfrg'
FROM aula a
WHERE a.nome = 'Aula 3 - Consoantes T, Z, R, D, J, B';

------------------------------------------------
-- ATIVIDADES — UNIDADE 4 — AULA 1
------------------------------------------------

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Aprender a letra C e seus sons',
       'Apresentação dos sons de C em CA, CE, CI, CO, CU.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 1 - Consoantes C, G, H, Q, X, K, W, Y';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Aprender a letra G e seus sons',
       'Prática dos sons de G em GA, GE, GI, GO, GU.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 1 - Consoantes C, G, H, Q, X, K, W, Y';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Uso da letra H',
       'Reconhecimento do H em palavras (hora, hoje) e seu papel silencioso.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 1 - Consoantes C, G, H, Q, X, K, W, Y';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Sons do X',
       'Exploração dos diferentes sons da letra X em palavras do cotidiano.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 1 - Consoantes C, G, H, Q, X, K, W, Y';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'As letras estrangeiras K, W, Y',
       'Reconhecimento das letras presentes em palavras de origem estrangeira.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 1 - Consoantes C, G, H, Q, X, K, W, Y';


------------------------------------------------
-- ATIVIDADES — UNIDADE 5 — AULA 1
------------------------------------------------

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Reconhecer vogais nasais',
       'Identificação auditiva e visual das vogais nasais: ã, õ, ĩ, ũ.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 1 - Vogais nasais e ditongos';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Ditongos nasais',
       'Treino dos ditongos nasais: ão, am, an, em, en.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 1 - Vogais nasais e ditongos';


------------------------------------------------
-- ATIVIDADES — UNIDADE 5 — AULA 2
------------------------------------------------

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Dígrafos CH, NH, LH',
       'Identificação visual e auditiva de dígrafos comuns.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 2 - Dígrafos';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Dígrafos RR, SS',
       'Comparação dos sons fortes das consoantes dobradas.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 2 - Dígrafos';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Dígrafos QU e GU',
       'Estudo dos sons do QU e GU antes de vogais.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 2 - Dígrafos';


------------------------------------------------
-- ATIVIDADES — UNIDADE 5 — AULA 3
------------------------------------------------

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Revisão geral de nasais e dígrafos',
       'Atividade de fixação misturando vogais nasais e dígrafos estudados.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 3 - Consolidação';


------------------------------------------------
-- ATIVIDADES — UNIDADE 6 — AULA 1
------------------------------------------------

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Uso do R entre vogais',
       'Diferenciação entre R fraco e RR forte.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 1 - Regras de R e S';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Uso do S entre vogais',
       'Estudo dos sons de S, SS, Z dentro das palavras.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 1 - Regras de R e S';


------------------------------------------------
-- ATIVIDADES — UNIDADE 6 — AULA 2
------------------------------------------------

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Uso de C e G antes de E e I',
       'Estudo dos sons de CE, CI, GE, GI.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 2 - Regras de C e G';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Palavras com C e G',
       'Prática com palavras do cotidiano contendo as regras estudadas.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 2 - Regras de C e G';


------------------------------------------------
-- ATIVIDADES — UNIDADE 6 — AULA 3
------------------------------------------------

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Encontros consonantais com R',
       'Br, cr, dr, fr, gr, pr, tr e seus sons.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 3 - Encontros consonantais';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Encontros consonantais com L',
       'Bl, cl, fl, gl, pl, sl e suas combinações.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 3 - Encontros consonantais';


------------------------------------------------
-- ATIVIDADES — UNIDADE 7 — AULA 1
------------------------------------------------

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Letra X: múltiplos sons',
       'Exploração dos sons de X em diferentes contextos.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 1 - Sons inconsistentes';

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Letra Z e suas variações',
       'Palavras terminadas em Z, uso do Z no meio e início.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 1 - Sons inconsistentes';


------------------------------------------------
-- ATIVIDADES — UNIDADE 7 — AULA 2
------------------------------------------------

INSERT INTO atividade (id_aula, nome, descricao, video_instrucao_url)
SELECT a.id_aula,
       'Revisão geral de sons inconsistentes',
       'Leitura e escrita de palavras variáveis quanto ao som.',
       'Fm3gvxkIfrg'
FROM aula a WHERE a.nome = 'Aula 2 - Revisão geral';


