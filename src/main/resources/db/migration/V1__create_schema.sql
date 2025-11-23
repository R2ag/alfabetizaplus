-- =============================
--   TABELAS PRINCIPAIS
-- =============================

CREATE TABLE usuario(
    id_usuario   BIGSERIAL PRIMARY KEY,
    nome         VARCHAR(100) NOT NULL,
    email        VARCHAR(150) NOT NULL,
    google_uid   VARCHAR(255) NOT NULL,
    data_criacao TIMESTAMP WITHOUT TIME ZONE DEFAULT now(),
    CONSTRAINT uc_usuario_email UNIQUE (email),
    CONSTRAINT uc_usuario_google_uid UNIQUE (google_uid)
);

CREATE TABLE gamificacao(
    id_gamificacao BIGSERIAL PRIMARY KEY,
    id_usuario     BIGINT  NOT NULL UNIQUE,
    moedas         INTEGER NOT NULL DEFAULT 0,
    chaves         INTEGER NOT NULL DEFAULT 0,
    vidas          INTEGER NOT NULL DEFAULT 3,
    CONSTRAINT fk_gamificacao_usuario FOREIGN KEY (id_usuario)
        REFERENCES usuario (id_usuario) ON DELETE CASCADE
);

CREATE TABLE unidade(
    id_unidade BIGSERIAL PRIMARY KEY,
    nome       VARCHAR(150) NOT NULL,
    descricao  TEXT,
    imagem_url VARCHAR(500)
);

CREATE TABLE aula(
    id_aula        BIGSERIAL PRIMARY KEY,
    id_unidade     BIGINT       NOT NULL,
    nome           VARCHAR(150) NOT NULL,
    descricao      TEXT,
    video_aula_url VARCHAR(500),
    CONSTRAINT fk_aula_unidade FOREIGN KEY (id_unidade)
        REFERENCES unidade (id_unidade) ON DELETE CASCADE
);

CREATE TABLE atividade(
    id_atividade        BIGSERIAL PRIMARY KEY,
    id_aula             BIGINT       NOT NULL,
    nome                VARCHAR(150) NOT NULL,
    descricao           TEXT,
    video_instrucao_url VARCHAR(500),
    CONSTRAINT fk_atividade_aula FOREIGN KEY (id_aula)
        REFERENCES aula (id_aula) ON DELETE CASCADE
);

CREATE TABLE pratica(
    id_pratica   BIGSERIAL PRIMARY KEY,
    id_atividade BIGINT NOT NULL,
    descricao    TEXT   NOT NULL,
    imagem_url   VARCHAR(255),
    CONSTRAINT fk_pratica_atividade FOREIGN KEY (id_atividade)
        REFERENCES atividade (id_atividade) ON DELETE CASCADE
);

CREATE TABLE resposta_possivel(
    id_resposta BIGSERIAL PRIMARY KEY,
    id_pratica  BIGINT       NOT NULL,
    descricao   VARCHAR(255) NOT NULL,
    imagem_url  VARCHAR(255),
    correta     BOOLEAN      NOT NULL DEFAULT false,
    CONSTRAINT fk_resposta_possivel_pratica FOREIGN KEY (id_pratica)
        REFERENCES pratica (id_pratica) ON DELETE CASCADE
);

CREATE TABLE resposta_usuario(
    id_resposta_usuario BIGSERIAL PRIMARY KEY,
    id_usuario          BIGINT NOT NULL,
    id_pratica          BIGINT NOT NULL,
    id_resposta         BIGINT NOT NULL,
    data_resposta       TIMESTAMP WITHOUT TIME ZONE DEFAULT now(),
    CONSTRAINT fk_ru_usuario FOREIGN KEY (id_usuario)
        REFERENCES usuario (id_usuario) ON DELETE CASCADE,
    CONSTRAINT fk_ru_pratica FOREIGN KEY (id_pratica)
        REFERENCES pratica (id_pratica) ON DELETE CASCADE,
    CONSTRAINT fk_ru_resposta FOREIGN KEY (id_resposta)
        REFERENCES resposta_possivel (id_resposta) ON DELETE CASCADE
);

-- =============================
--   PROGRESSO DO USUÁRIO
-- =============================

CREATE TABLE progresso_usuario(
    id_progresso         BIGSERIAL PRIMARY KEY,
    id_usuario           BIGINT           NOT NULL,
    id_unidade           BIGINT,
    id_aula              BIGINT,
    id_atividade         BIGINT,
    concluida            BOOLEAN          NOT NULL DEFAULT false,
    data_conclusao       TIMESTAMP WITHOUT TIME ZONE,
    percentual_conclusao DOUBLE PRECISION NOT NULL DEFAULT 0,
    CONSTRAINT fk_pu_usuario FOREIGN KEY (id_usuario)
        REFERENCES usuario (id_usuario) ON DELETE CASCADE,
    CONSTRAINT fk_pu_unidade FOREIGN KEY (id_unidade)
        REFERENCES unidade (id_unidade) ON DELETE CASCADE,
    CONSTRAINT fk_pu_aula FOREIGN KEY (id_aula)
        REFERENCES aula (id_aula) ON DELETE CASCADE,
    CONSTRAINT fk_pu_atividade FOREIGN KEY (id_atividade)
        REFERENCES atividade (id_atividade) ON DELETE CASCADE
);

-- =============================
--   CONQUISTAS
-- =============================

CREATE TABLE conquista(
    id_conquista      BIGSERIAL PRIMARY KEY,
    nome              VARCHAR(150) NOT NULL,
    descricao         TEXT,
    icone_url         VARCHAR(500),
    recompensa_moedas INTEGER      NOT NULL DEFAULT 0
);

CREATE TABLE conquista_aula(
    id_conquista BIGINT NOT NULL,
    id_aula      BIGINT NOT NULL,
    PRIMARY KEY (id_conquista, id_aula),
    CONSTRAINT fk_cona_conquista FOREIGN KEY (id_conquista)
        REFERENCES conquista (id_conquista) ON DELETE CASCADE,
    CONSTRAINT fk_cona_aula FOREIGN KEY (id_aula)
        REFERENCES aula (id_aula) ON DELETE CASCADE
);

CREATE TABLE conquista_usuario(
    id_conquista_usuario BIGSERIAL PRIMARY KEY,
    id_usuario           BIGINT NOT NULL,
    id_conquista         BIGINT NOT NULL,
    data_conquista       TIMESTAMP WITHOUT TIME ZONE DEFAULT now(),
    UNIQUE (id_usuario, id_conquista),
    CONSTRAINT fk_cu_usuario FOREIGN KEY (id_usuario)
        REFERENCES usuario (id_usuario) ON DELETE CASCADE,
    CONSTRAINT fk_cu_conquista FOREIGN KEY (id_conquista)
        REFERENCES conquista (id_conquista) ON DELETE CASCADE
);
