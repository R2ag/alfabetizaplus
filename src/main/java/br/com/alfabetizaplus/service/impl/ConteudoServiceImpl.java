package br.com.alfabetizaplus.service.impl;

import br.com.alfabetizaplus.dto.ProgressoResumoDTO;
import br.com.alfabetizaplus.dto.UnidadeDTO;
import br.com.alfabetizaplus.entity.*;
import br.com.alfabetizaplus.mapper.UnidadeMapper;
import br.com.alfabetizaplus.repository.*;
import br.com.alfabetizaplus.service.ConteudoService;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class ConteudoServiceImpl implements ConteudoService {

    private final UnidadeRepository unidadeRepository;
    private final ProgressoUsuarioRepository progressoRepository;
    private final UnidadeMapper unidadeMapper;
    private final AulaRepository aulaRepository;
    private final AtividadeRepository atividadeRepository;
    private final PraticaRepository praticaRepository;

    public ConteudoServiceImpl(UnidadeRepository unidadeRepository, ProgressoUsuarioRepository progressoRepository, UnidadeMapper unidadeMapper,
                               AulaRepository aulaRepository,
                               AtividadeRepository atividadeRepository,
                               PraticaRepository praticaRepository) {
        this.unidadeRepository = unidadeRepository;
        this.progressoRepository = progressoRepository;
        this.unidadeMapper = unidadeMapper;
        this.aulaRepository = aulaRepository;
        this.atividadeRepository = atividadeRepository;
        this.praticaRepository = praticaRepository;
    }

    @Override
    public List<UnidadeDTO> listarUnidades(Usuario usuario) {
        return unidadeRepository.findAll().stream()
                .map(unidade -> {
                    UnidadeDTO dto = unidadeMapper.toDTO(unidade);

                    progressoRepository.findByUsuarioAndUnidade(usuario, unidade)
                            .ifPresentOrElse(
                                    progressoUsuario -> dto.setProgressoUsuario(
                                            ProgressoResumoDTO.builder()
                                                    .percentualConclusao(progressoUsuario.getPercentualConclusao())
                                                    .completou(progressoUsuario.isConcluida())
                                                    .build()),
                                            () -> dto.setProgressoUsuario(
                                                    ProgressoResumoDTO.builder()
                                                        .percentualConclusao(0.0)
                                                        .completou(false)
                                                        .build())

                            );
                    return dto;
                })
                .collect(java.util.stream.Collectors.toList());

    }

    @Override
    public List<Aula> listarAulasPorUnidade(Long idUnidade) {
        Unidade unidade = unidadeRepository.findById(idUnidade)
                .orElseThrow(() -> new RuntimeException("Unidade não encontrada"));
        return aulaRepository.findByUnidade(unidade);
    }

    @Override
    public List<Atividade> listarAtividadesPorAula(Long idAula) {
        Aula aula = aulaRepository.findById(idAula)
                .orElseThrow(() -> new RuntimeException("Aula não encontrada"));
        return atividadeRepository.findByAula(aula);
    }

    @Override
    public List<Pratica> listarPraticasPorAtividade(Long idAtividade) {
        Atividade atividade = atividadeRepository.findById(idAtividade)
                .orElseThrow(() -> new RuntimeException("Atividade não encontrada"));
        return praticaRepository.findByAtividade(atividade);
    }

    @Override
    public Pratica buscarPraticaPorId(Long idPratica) {
        return praticaRepository.findById(idPratica)
                .orElseThrow(() -> new RuntimeException("Prática não encontrada"));
    }
}
