ALTER TABLE progresso_usuario
    ADD id_unidade BIGINT;

ALTER TABLE progresso_usuario
    ADD percentual_conclusao DOUBLE PRECISION;

ALTER TABLE progresso_usuario
    ALTER COLUMN percentual_conclusao SET NOT NULL;

ALTER TABLE atividade
    ADD CONSTRAINT pk_atividade PRIMARY KEY (id_atividade);

ALTER TABLE aula
    ADD CONSTRAINT pk_aula PRIMARY KEY (id_aula);

ALTER TABLE atividade
    ADD CONSTRAINT FK_ATIVIDADE_ON_ID_AULA FOREIGN KEY (id_aula) REFERENCES aula (id_aula);

ALTER TABLE aula
    ADD CONSTRAINT FK_AULA_ON_ID_UNIDADE FOREIGN KEY (id_unidade) REFERENCES unidade (id_unidade);

ALTER TABLE progresso_usuario
    ADD CONSTRAINT FK_PROGRESSO_USUARIO_ON_ID_UNIDADE FOREIGN KEY (id_unidade) REFERENCES unidade (id_unidade);

ALTER TABLE usuario
    ALTER COLUMN google_uid SET NOT NULL;

CREATE SEQUENCE IF NOT EXISTS atividade_id_atividade_seq;
ALTER TABLE atividade
    ALTER COLUMN id_atividade SET NOT NULL;
ALTER TABLE atividade
    ALTER COLUMN id_atividade SET DEFAULT nextval('atividade_id_atividade_seq');

ALTER SEQUENCE atividade_id_atividade_seq OWNED BY atividade.id_atividade;

CREATE SEQUENCE IF NOT EXISTS aula_id_aula_seq;
ALTER TABLE aula
    ALTER COLUMN id_aula SET NOT NULL;
ALTER TABLE aula
    ALTER COLUMN id_aula SET DEFAULT nextval('aula_id_aula_seq');

ALTER SEQUENCE aula_id_aula_seq OWNED BY aula.id_aula;

CREATE SEQUENCE IF NOT EXISTS gamificacao_id_gamificacao_seq;
ALTER TABLE gamificacao
    ALTER COLUMN id_gamificacao SET NOT NULL;
ALTER TABLE gamificacao
    ALTER COLUMN id_gamificacao SET DEFAULT nextval('gamificacao_id_gamificacao_seq');

ALTER SEQUENCE gamificacao_id_gamificacao_seq OWNED BY gamificacao.id_gamificacao;

CREATE SEQUENCE IF NOT EXISTS pratica_id_pratica_seq;
ALTER TABLE pratica
    ALTER COLUMN id_pratica SET NOT NULL;
ALTER TABLE pratica
    ALTER COLUMN id_pratica SET DEFAULT nextval('pratica_id_pratica_seq');

ALTER SEQUENCE pratica_id_pratica_seq OWNED BY pratica.id_pratica;

CREATE SEQUENCE IF NOT EXISTS progresso_usuario_id_progresso_seq;
ALTER TABLE progresso_usuario
    ALTER COLUMN id_progresso SET NOT NULL;
ALTER TABLE progresso_usuario
    ALTER COLUMN id_progresso SET DEFAULT nextval('progresso_usuario_id_progresso_seq');

ALTER SEQUENCE progresso_usuario_id_progresso_seq OWNED BY progresso_usuario.id_progresso;

CREATE SEQUENCE IF NOT EXISTS resposta_possivel_id_resposta_seq;
ALTER TABLE resposta_possivel
    ALTER COLUMN id_resposta SET NOT NULL;
ALTER TABLE resposta_possivel
    ALTER COLUMN id_resposta SET DEFAULT nextval('resposta_possivel_id_resposta_seq');

ALTER SEQUENCE resposta_possivel_id_resposta_seq OWNED BY resposta_possivel.id_resposta;

CREATE SEQUENCE IF NOT EXISTS resposta_usuario_id_resposta_usuario_seq;
ALTER TABLE resposta_usuario
    ALTER COLUMN id_resposta_usuario SET NOT NULL;
ALTER TABLE resposta_usuario
    ALTER COLUMN id_resposta_usuario SET DEFAULT nextval('resposta_usuario_id_resposta_usuario_seq');

ALTER SEQUENCE resposta_usuario_id_resposta_usuario_seq OWNED BY resposta_usuario.id_resposta_usuario;

CREATE SEQUENCE IF NOT EXISTS unidade_id_unidade_seq;
ALTER TABLE unidade
    ALTER COLUMN id_unidade SET NOT NULL;
ALTER TABLE unidade
    ALTER COLUMN id_unidade SET DEFAULT nextval('unidade_id_unidade_seq');

ALTER SEQUENCE unidade_id_unidade_seq OWNED BY unidade.id_unidade;

CREATE SEQUENCE IF NOT EXISTS usuario_id_usuario_seq;
ALTER TABLE usuario
    ALTER COLUMN id_usuario SET NOT NULL;
ALTER TABLE usuario
    ALTER COLUMN id_usuario SET DEFAULT nextval('usuario_id_usuario_seq');

ALTER SEQUENCE usuario_id_usuario_seq OWNED BY usuario.id_usuario;