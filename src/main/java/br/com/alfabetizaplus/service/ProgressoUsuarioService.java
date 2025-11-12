package br.com.alfabetizaplus.service;

import br.com.alfabetizaplus.entity.Atividade;
import br.com.alfabetizaplus.entity.Aula;
import br.com.alfabetizaplus.entity.Unidade;
import br.com.alfabetizaplus.entity.Usuario;

public interface ProgressoUsuarioService {
    /**
     * Marca uma atividade como concluída pelo usuário.
     *
     * @param usuario   Usuário que concluiu a atividade
     * @param atividade Atividade concluída
     */
    void marcarAtividadeConcluida(Usuario usuario, Atividade atividade);

    /**
     * Verifica e atualiza automaticamente a conclusão de uma aula.
     *
     * @param usuario Usuário
     * @param aula    Aula a ser verificada
     */
    void verificarConclusaoAula(Usuario usuario, Aula aula);

    /**
     * Verifica e atualiza automaticamente a conclusão de uma unidade.
     *
     * @param usuario Usuário
     * @param unidade Unidade a ser verificada
     */
    void verificarConclusaoUnidade(Usuario usuario, Unidade unidade);
}
