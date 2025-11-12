-- UNIDADES (baseadas no Manual do Aluno e Currículo Programático)
INSERT INTO unidade (nome, descricao, imagem_url) VALUES
                                          ('Unidade 1 - Aprender a ouvir', 'Atividades de consciência fonológica para reconhecer sons, sílabas e rimas.', 'https://postimg.cc/r0gB9DH2' ),
                                          ('Unidade 2 - As primeiras letras', 'Introdução às vogais e primeiras consoantes: A, I, F, M, U, L, O, V, E, N.','https://postimg.cc/jwvphDF9'),
                                          ('Unidade 3 - Novas letras', 'Aprendizagem de novas consoantes e sons vocálicos alternativos.', 'https://postimg.cc/cgsqYRFd'),
                                          ('Unidade 4 - As últimas letras', 'Conclusão da apresentação das letras do alfabeto português.', 'https://postimg.cc/cgsqYRFd'),
                                          ('Unidade 5 - Juntando letras', 'Estudo das vogais nasais, ditongos e dígrafos.', 'https://postimg.cc/jLY1JQ2v'),
                                          ('Unidade 6 - Letras com regras', 'Leitura e escrita de letras com regras específicas de contexto.', 'https://postimg.cc/Fk5T3NrF'),
                                          ('Unidade 7 - Letras inconsistentes', 'Palavras e sons com regras inconsistentes na leitura e escrita.', 'https://postimg.cc/qtNwFzgk');

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
