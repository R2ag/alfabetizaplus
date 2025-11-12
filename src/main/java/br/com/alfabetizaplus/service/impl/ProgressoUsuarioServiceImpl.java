package br.com.alfabetizaplus.service.impl;

import br.com.alfabetizaplus.entity.*;
import br.com.alfabetizaplus.repository.*;
import br.com.alfabetizaplus.service.ProgressoUsuarioService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.OffsetDateTime;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ProgressoUsuarioServiceImpl implements ProgressoUsuarioService {

    private final ProgressoUsuarioRepository repository;
    private final AulaRepository aulaRepository;
    private final UnidadeRepository unidadeRepository;

    @Transactional
    public void marcarAtividadeConcluida(Usuario usuario, Atividade atividade) {
        ProgressoUsuario progresso = repository
                .findByUsuarioAndAtividade(usuario, atividade)
                .orElseGet(() -> criarProgresso(usuario, atividade));

        progresso.setConcluida(true);
        progresso.setDataConclusao(OffsetDateTime.now());
        progresso.setPercentualConclusao(100.0);
        repository.save(progresso);

        verificarConclusaoAula(usuario, atividade.getAula());
    }

    public ProgressoUsuario criarProgresso(Usuario usuario, Atividade atividade) {
        return ProgressoUsuario.builder()
                .usuario(usuario)
                .atividade(atividade)
                .aula(atividade.getAula())
                .unidade(atividade.getAula().getUnidade())
                .build();
    }

    public void verificarConclusaoAula(Usuario usuario, Aula aula) {
        boolean todasAtividadesCompletas = aula.getAtividades().stream()
                .allMatch(a -> repository.findByUsuarioAndAtividade(usuario, a)
                        .map(ProgressoUsuario::isConcluida)
                        .orElse(false));

        if (todasAtividadesCompletas) {
            ProgressoUsuario progressoAula = repository
                    .findByUsuarioAndAula(usuario, aula)
                    .orElseGet(() -> criarProgresso(usuario, aula));

            progressoAula.setConcluida(true);
            progressoAula.setDataConclusao(OffsetDateTime.now());
            progressoAula.setPercentualConclusao(100.0);
            repository.save(progressoAula);

            verificarConclusaoUnidade(usuario, aula.getUnidade());
        }
    }

    public ProgressoUsuario criarProgresso(Usuario usuario, Aula aula) {
        return ProgressoUsuario.builder()
                .usuario(usuario)
                .aula(aula)
                .unidade(aula.getUnidade())
                .build();
    }

    public void verificarConclusaoUnidade(Usuario usuario, Unidade unidade) {
        List<Aula> aulas = aulaRepository.findByUnidade(unidade);

        boolean todasAulasCompletas = aulas.stream()
                .allMatch(a -> repository.findByUsuarioAndAula(usuario, a)
                        .map(ProgressoUsuario::isConcluida)
                        .orElse(false));

        if (todasAulasCompletas) {
            ProgressoUsuario progressoUnidade = repository
                    .findByUsuarioAndUnidade(usuario, unidade)
                    .orElseGet(() -> ProgressoUsuario.builder()
                            .usuario(usuario)
                            .unidade(unidade)
                            .build());

            progressoUnidade.setConcluida(true);
            progressoUnidade.setDataConclusao(OffsetDateTime.now());
            progressoUnidade.setPercentualConclusao(100.0);
            repository.save(progressoUnidade);
        }
    }
}
