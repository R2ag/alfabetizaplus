ALTER TABLE progresso_usuario
    ADD id_atividade BIGINT;

ALTER TABLE progresso_usuario
    ADD id_unidade BIGINT;

ALTER TABLE progresso_usuario
    ADD percentual_conclusao DOUBLE PRECISION;

ALTER TABLE progresso_usuario
    ALTER COLUMN percentual_conclusao SET NOT NULL;

ALTER TABLE progresso_usuario
    ADD CONSTRAINT FK_PROGRESSO_USUARIO_ON_ID_ATIVIDADE FOREIGN KEY (id_atividade) REFERENCES atividade (id_atividade);

ALTER TABLE progresso_usuario
    ADD CONSTRAINT FK_PROGRESSO_USUARIO_ON_ID_UNIDADE FOREIGN KEY (id_unidade) REFERENCES unidade (id_unidade);

ALTER TABLE progresso_usuario
    ALTER COLUMN concluida SET NOT NULL;

ALTER TABLE usuario
    ALTER COLUMN google_uid SET NOT NULL;