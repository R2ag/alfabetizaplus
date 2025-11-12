package br.com.alfabetizaplus.service;

import br.com.alfabetizaplus.dto.UnidadeDTO;
import br.com.alfabetizaplus.entity.*;
import java.util.List;

public interface ConteudoService {
    List<UnidadeDTO> listarUnidades(Usuario usuario);
    List<Aula> listarAulasPorUnidade(Long idUnidade);
    List<Atividade> listarAtividadesPorAula(Long idAula);
    List<Pratica> listarPraticasPorAtividade(Long idAtividade);
    Pratica buscarPraticaPorId(Long idPratica);
}
