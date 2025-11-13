package br.com.alfabetizaplus.service;

import br.com.alfabetizaplus.dto.*;
import br.com.alfabetizaplus.entity.Usuario;
import java.util.List;

public interface ConteudoService {
    List<UnidadeDTO> listarUnidades(Usuario usuario);
    List<AulaDTO> listarAulasPorUnidade(Long idUnidade);
    List<AtividadeDTO> listarAtividadesPorAula(Long idAula);
    List<PraticaDTO> listarPraticasPorAtividade(Long idAtividade);
    PraticaDTO buscarPraticaPorId(Long idPratica);
}
