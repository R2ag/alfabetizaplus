-- UNIDADES (baseadas no Manual do Aluno e Currículo Programático)
INSERT INTO unidade (nome, descricao, imagem_url) VALUES
                                          ('Unidade 1 - Aprender a ouvir', 'Atividades de consciência fonológica para reconhecer sons, sílabas e rimas.', 'http://191.253.23.111:8081/unidades/unidade_1.png' ),
                                          ('Unidade 2 - As primeiras letras', 'Introdução às vogais e primeiras consoantes: A, I, F, M, U, L, O, V, E, N.','http://191.253.23.111:8081/unidades/unidade_2.png'),
                                          ('Unidade 3 - Novas letras', 'Aprendizagem de novas consoantes e sons vocálicos alternativos.', 'http://191.253.23.111:8081/unidades/unidade_3.png'),
                                          ('Unidade 4 - As últimas letras', 'Conclusão da apresentação das letras do alfabeto português.', 'http://191.253.23.111:8081/unidades/unidade_4'),
                                          ('Unidade 5 - Juntando letras', 'Estudo das vogais nasais, ditongos e dígrafos.', 'http://191.253.23.111:8081/unidades/unidade_5.png'),
                                          ('Unidade 6 - Letras com regras', 'Leitura e escrita de letras com regras específicas de contexto.', 'http://191.253.23.111:8081/unidades/unidade_6.png'),
                                          ('Unidade 7 - Letras inconsistentes', 'Palavras e sons com regras inconsistentes na leitura e escrita.', 'http://191.253.23.111:8081/unidades/unidade_7.png');

-- AULAS (cada Unidade terá uma ou mais Aulas, que agrupam Atividades do Manual)
-- UNIDADE 1
INSERT INTO aula (id_unidade, nome, descricao) VALUES
                                                   (1, 'Aula 1 - Reconhecer sons e sílabas', 'Desenvolver a percepção auditiva e identificação de sílabas.'),
                                                   (1, 'Aula 2 - Rimas e fonemas iniciais', 'Trabalhar palavras que rimam e distinguir sons iniciais e finais.');

-- UNIDADE 2
INSERT INTO aula (id_unidade, nome, descricao) VALUES
                                                   (2, 'Aula 1 - Vogal A e I', 'Aprender e escrever as vogais A e I.'),
                                                   (2, 'Aula 2 - Consoantes F e M', 'Aprender as consoantes F e M e praticar leitura de palavras com A, I, F, M.'),
                                                   (2, 'Aula 3 - Vogal U e consoante L', 'Aprender a letra U e a consoante L.'),
                                                   (2, 'Aula 4 - Vogal O, consoante V e E, N', 'Consolidar o aprendizado das primeiras letras.');

-- UNIDADE 3
INSERT INTO aula (id_unidade, nome, descricao) VALUES
                                                   (3, 'Aula 1 - Consoantes P e S', 'Aprender as consoantes P e S e suas combinações.'),
                                                   (3, 'Aula 2 - Novos sons das vogais O e E', 'Compreender os sons “u”, “ê” e “ô” representados por O e E.'),
                                                   (3, 'Aula 3 - Consoantes T, Z, R, D, J, B', 'Ampliar o repertório de leitura e escrita com novas consoantes.');

-- UNIDADE 4
INSERT INTO aula (id_unidade, nome, descricao) VALUES
    (4, 'Aula 1 - Consoantes C, G, H, Q, X, K, W, Y', 'Finalizar o alfabeto e praticar sons de letras com usos variados.');

-- UNIDADE 5
INSERT INTO aula (id_unidade, nome, descricao) VALUES
                                                   (5, 'Aula 1 - Vogais nasais e ditongos', 'Aprender sons nasais e ditongos nasais.'),
                                                   (5, 'Aula 2 - Dígrafos', 'Aprender os dígrafos NH, LH, RR, SS, CH, QU, GU, Ç.'),
                                                   (5, 'Aula 3 - Consolidação', 'Aplicar as regras de escrita com nasais e dígrafos.');

-- UNIDADE 6
INSERT INTO aula (id_unidade, nome, descricao) VALUES
                                                   (6, 'Aula 1 - Regras de R e S', 'Aprender a ler e escrever R e S entre vogais.'),
                                                   (6, 'Aula 2 - Regras de C e G', 'Aprender as regras contextuais de C e G antes de E e I.'),
                                                   (6, 'Aula 3 - Encontros consonantais', 'Ler e escrever encontros consonantais com R e L.');

-- UNIDADE 7
INSERT INTO aula (id_unidade, nome, descricao) VALUES
                                                   (7, 'Aula 1 - Sons inconsistentes', 'Compreender casos em que letras têm sons variáveis.'),
                                                   (7, 'Aula 2 - Revisão geral', 'Leitura e escrita de palavras e frases com regras inconsistentes.');


-- ==============================================
-- CONQUISTAS DO PROJETO ALFABETIZA+
-- Baseadas no Currículo Programático PBA
-- ==============================================

-- INSERÇÃO DAS CONQUISTAS
INSERT INTO conquista (nome, descricao, icone_url, recompensa_moedas) VALUES
                                                                          ('Ouvinte Atento', 'Reconheceu e diferenciou sons, sílabas e rimas com sucesso, desenvolvendo consciência fonológica.', 'http://191.253.23.111:8081/conquistas/ouvinte_atento.png', 50),
                                                                          ('Primeiras Letras', 'Aprendeu as primeiras vogais e consoantes (A, I, F, M, U, L) e começou a formar suas primeiras palavras.', 'http://191.253.23.111:8081/conquistas/primeiras_letras.png', 50),
                                                                          ('Leitor em Formação', 'Conseguiu ler e escrever palavras simples combinando letras já conhecidas (A, I, F, M, U, L, O, V, E, N).', 'http://191.253.23.111:8081/conquistas/leitor_em_formacao.png', 75),
                                                                          ('Explorador de Sons', 'Aprendeu novas letras e sons, reconhecendo variações como “ô”, “ê” e “u” final.', 'http://191.253.23.111:8081/conquistas/explorador_de_sons.png', 50),
                                                                          ('Construtor de Palavras', 'Conseguiu ler e escrever palavras com novas consoantes (P, S, T, Z, R, D, J, B).', 'http://191.253.23.111:8081/conquistas/construtor_de_palavras.png', 75),
                                                                          ('Mestre do Alfabeto', 'Completou o aprendizado de todas as letras do alfabeto português.', 'http://191.253.23.111:8081/conquistas/mestre_do_alfabeto.png', 100),
                                                                          ('Voz Nasal', 'Aprendeu e aplicou corretamente as vogais nasais e os ditongos nasais.', 'http://191.253.23.111:8081/conquistas/voz_nasal.png', 50),
                                                                          ('Caçador de Dígrafos', 'Identificou e escreveu corretamente dígrafos como NH, LH, RR, SS, CH, QU, GU e Ç.', 'http://191.253.23.111:8081/conquistas/cacador_de_digrafos.png', 50),
                                                                          ('Regras do Jogo', 'Aplicou corretamente as regras contextuais de leitura e escrita de R e S entre vogais.', 'http://191.253.23.111:8081/conquistas/regras_do_jogo.png', 50),
                                                                          ('Gênio das Regras', 'Aprendeu as regras de C e G antes de E e I e os encontros consonantais (br, cr, dr, fr, pr, tr, etc.).', 'http://191.253.23.111:8081/conquistas/genio_das_regras.png', 75),
                                                                          ('Desbravador das Inconsistências', 'Reconheceu e leu palavras com letras de som variável (como o X e o Z em posições diferentes).', 'http://191.253.23.111:8081/conquistas/desbravador_inconsistencias.png', 75),
                                                                          ('Leitor Fluente', 'Leu frases e pequenos textos, localizando informações explícitas e implícitas.', 'http://191.253.23.111:8081/conquistas/leitor_fluente.png', 100),
                                                                          ('Escritor Funcional', 'Conseguiu escrever informações pessoais simples e frases completas corretamente.', 'http://191.253.23.111:8081/conquistas/escritor_funcional.png', 100),
                                                                          ('Herói da Alfabetização', 'Alcançou o nível de literacia funcional: lê e escreve frases e textos curtos sobre o cotidiano.', 'http://191.253.23.111:8081/conquistas/heroi_da_alfabetizacao.png', 200),
                                                                          ('Conquistador das Palavras Frequentes', 'Leu com rapidez e segurança as palavras mais usadas do português.', 'http://191.253.23.111:8081/conquistas/conquistador_palavras_frequentes.png', 75),
                                                                          ('Campeão da Escrita Certa', 'Escreveu corretamente todas as estruturas ortográficas estudadas.', 'http://191.253.23.111:8081/conquistas/campeao_escrita_certa.png', 75),
                                                                          ('Super Auditivo', 'Demonstrou domínio total da consciência fonológica: identifica e combina fonemas com precisão.', 'http://191.253.23.111:8081/conquistas/super_auditivo.png', 75),
                                                                          ('Guardião do Alfabeto', 'Nomeia e reconhece todas as letras maiúsculas e minúsculas do alfabeto português.', 'http://191.253.23.111:8081/conquistas/guardiao_alfabeto.png', 50),
                                                                          ('Especialista em Leitura e Escrita', 'Lê e escreve palavras com estrutura complexa (CVC, CCV, dígrafos e nasais).', 'http://191.253.23.111:8081/conquistas/especialista_leitura_escrita.png', 100),
                                                                          ('Nenhum Brasileiro para Trás!', 'Completou todas as unidades do curso e obteve todas as conquistas anteriores.', 'http://191.253.23.111:8081/conquistas/nenhum_brasileiro_para_tras.png', 250);

-- ==============================================
-- RELAÇÃO ENTRE CONQUISTAS E AULAS (conquista_aula)
-- Os IDs de aula devem corresponder aos registros já criados anteriormente
-- ==============================================

-- 1. Ouvinte Atento → Unidade 1
INSERT INTO conquista_aula VALUES
                               (1, 1), (1, 2);

-- 2. Primeiras Letras → Unidade 2 - Aulas 1 a 3
INSERT INTO conquista_aula VALUES
                               (2, 3), (2, 4), (2, 5);

-- 3. Leitor em Formação → Unidade 2 - Aulas 1 a 4
INSERT INTO conquista_aula VALUES
                               (3, 3), (3, 4), (3, 5), (3, 6);

-- 4. Explorador de Sons → Unidade 3 - Aulas 1 e 2
INSERT INTO conquista_aula VALUES
                               (4, 7), (4, 8);

-- 5. Construtor de Palavras → Unidade 3 - Aulas 1 a 3
INSERT INTO conquista_aula VALUES
                               (5, 7), (5, 8), (5, 9);

-- 6. Mestre do Alfabeto → Unidade 4 - Aula 1
INSERT INTO conquista_aula VALUES
    (6, 10);

-- 7. Voz Nasal → Unidade 5 - Aula 1
INSERT INTO conquista_aula VALUES
    (7, 11);

-- 8. Caçador de Dígrafos → Unidade 5 - Aula 2
INSERT INTO conquista_aula VALUES
    (8, 12);

-- 9. Regras do Jogo → Unidade 6 - Aula 1
INSERT INTO conquista_aula VALUES
    (9, 14);

-- 10. Gênio das Regras → Unidade 6 - Aulas 2 e 3
INSERT INTO conquista_aula VALUES
                               (10, 15), (10, 16);

-- 11. Desbravador das Inconsistências → Unidade 7 - Aula 1
INSERT INTO conquista_aula VALUES
    (11, 17);

-- 12. Leitor Fluente → Unidade 7 - Todas as aulas
INSERT INTO conquista_aula VALUES
                               (12, 17), (12, 18);

-- 13. Escritor Funcional → Unidades 6 e 7
INSERT INTO conquista_aula VALUES
                               (13, 14), (13, 15), (13, 16), (13, 17), (13, 18);

-- 14. Herói da Alfabetização → Todas as unidades (1–7)
INSERT INTO conquista_aula VALUES
                               (14, 1), (14, 2), (14, 3), (14, 4), (14, 5), (14, 6),
                               (14, 7), (14, 8), (14, 9), (14, 10), (14, 11), (14, 12),
                               (14, 13), (14, 14), (14, 15), (14, 16), (14, 17), (14, 18);

-- 15. Conquistador das Palavras Frequentes → Unidades 5 a 7
INSERT INTO conquista_aula VALUES
                               (15, 11), (15, 12), (15, 13), (15, 14), (15, 15), (15, 16), (15, 17), (15, 18);

-- 16. Campeão da Escrita Certa → Unidades 2 a 6
INSERT INTO conquista_aula VALUES
                               (16, 3), (16, 4), (16, 5), (16, 6), (16, 7), (16, 8), (16, 9), (16, 10), (16, 11), (16, 12), (16, 13), (16, 14), (16, 15), (16, 16);

-- 17. Super Auditivo → Unidades 1 e 2
INSERT INTO conquista_aula VALUES
                               (17, 1), (17, 2), (17, 3), (17, 4);

-- 18. Guardião do Alfabeto → Unidades 2 a 4
INSERT INTO conquista_aula VALUES
                               (18, 3), (18, 4), (18, 5), (18, 6), (18, 7), (18, 8), (18, 9), (18, 10);

-- 19. Especialista em Leitura e Escrita → Unidades 5, 6 e 7
INSERT INTO conquista_aula VALUES
                               (19, 11), (19, 12), (19, 13), (19, 14), (19, 15), (19, 16), (19, 17), (19, 18);

-- 20. Nenhum Brasileiro para Trás! → Todas as aulas
INSERT INTO conquista_aula VALUES
                               (20, 1), (20, 2), (20, 3), (20, 4), (20, 5), (20, 6),
                               (20, 7), (20, 8), (20, 9), (20, 10), (20, 11), (20, 12),
                               (20, 13), (20, 14), (20, 15), (20, 16), (20, 17), (20, 18);
