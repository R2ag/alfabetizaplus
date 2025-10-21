package br.com.alfabetizaplus.service;

import br.com.alfabetizaplus.entity.*;
import java.util.List;

public interface ConteudoService {
    List<Unidade> listarUnidades();
    List<Aula> listarAulasPorUnidade(Long idUnidade);
    List<Atividade> listarAtividadesPorAula(Long idAula);
    List<Pratica> listarPraticasPorAtividade(Long idAtividade);
    Pratica buscarPraticaPorId(Long idPratica);
}
