-- ===============================================
-- Flyway Migration: V1__create_tables.sql
-- Projeto: Alfabetiza+
-- Objetivo: Criação das tabelas principais do sistema
-- ===============================================

CREATE TABLE usuario (
                         id_usuario BIGSERIAL PRIMARY KEY,
                         nome VARCHAR(100) NOT NULL,
                         email VARCHAR(150) NOT NULL UNIQUE,
                         google_uid VARCHAR(255) UNIQUE,
                         data_criacao TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE gamificacao (
                             id_gamificacao BIGSERIAL PRIMARY KEY,
                             id_usuario BIGINT NOT NULL UNIQUE REFERENCES usuario(id_usuario) ON DELETE CASCADE,
                             moedas INT DEFAULT 0,
                             chaves INT DEFAULT 0,
                             vidas INT DEFAULT 3
);

CREATE TABLE unidade (
                         id_unidade BIGSERIAL PRIMARY KEY,
                         nome VARCHAR(150) NOT NULL,
                         descricao TEXT
);

CREATE TABLE aula (
                      id_aula BIGSERIAL PRIMARY KEY,
                      id_unidade BIGINT NOT NULL REFERENCES unidade(id_unidade) ON DELETE CASCADE,
                      nome VARCHAR(150) NOT NULL,
                      descricao TEXT
);

CREATE TABLE atividade (
                           id_atividade BIGSERIAL PRIMARY KEY,
                           id_aula BIGINT NOT NULL REFERENCES aula(id_aula) ON DELETE CASCADE,
                           nome VARCHAR(150) NOT NULL,
                           descricao TEXT
);

CREATE TABLE pratica (
                         id_pratica BIGSERIAL PRIMARY KEY,
                         id_atividade BIGINT NOT NULL REFERENCES atividade(id_atividade) ON DELETE CASCADE,
                         descricao TEXT NOT NULL,
                         imagem VARCHAR(255)
);

CREATE TABLE resposta_possivel (
                                   id_resposta BIGSERIAL PRIMARY KEY,
                                   id_pratica BIGINT NOT NULL REFERENCES pratica(id_pratica) ON DELETE CASCADE,
                                   descricao VARCHAR(255) NOT NULL,
                                   imagem VARCHAR(255),
                                   correta BOOLEAN DEFAULT FALSE
);

CREATE TABLE resposta_usuario (
                                  id_resposta_usuario BIGSERIAL PRIMARY KEY,
                                  id_usuario BIGINT NOT NULL REFERENCES usuario(id_usuario) ON DELETE CASCADE,
                                  id_pratica BIGINT NOT NULL REFERENCES pratica(id_pratica) ON DELETE CASCADE,
                                  id_resposta BIGINT NOT NULL REFERENCES resposta_possivel(id_resposta),
                                  data_resposta TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE progresso_usuario (
                                   id_progresso BIGSERIAL PRIMARY KEY,
                                   id_usuario BIGINT NOT NULL REFERENCES usuario(id_usuario) ON DELETE CASCADE,
                                   id_aula BIGINT NOT NULL REFERENCES aula(id_aula),
                                   concluida BOOLEAN DEFAULT FALSE,
                                   data_conclusao TIMESTAMPTZ
);
