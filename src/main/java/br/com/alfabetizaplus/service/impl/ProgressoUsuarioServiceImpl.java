package br.com.alfabetizaplus.service.impl;

import br.com.alfabetizaplus.entity.*;
import br.com.alfabetizaplus.repository.*;
import br.com.alfabetizaplus.service.ConquistaService;
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
    private final ConquistaService conquistaService;

    // ============================================================
    // 1. MARCAR ATIVIDADE CONCLUÍDA
    // ============================================================

    @Transactional
    public void marcarAtividadeConcluida(Usuario usuario, Atividade atividade) {

        ProgressoUsuario progresso = repository
                .findByUsuarioAndAtividade(usuario, atividade)
                .orElseGet(() -> criarProgresso(usuario, atividade));

        progresso.setConcluida(true);
        progresso.setDataConclusao(OffsetDateTime.now());
        progresso.setPercentualConclusao(100.0);

        repository.save(progresso);

        // Atualiza Aula e Unidade com progresso real
        atualizarProgressoAula(usuario, atividade.getAula());
        atualizarProgressoUnidade(usuario, atividade.getAula().getUnidade());

        // Verificação de conclusão final + conquistas
        verificarConclusaoAula(usuario, atividade.getAula());
    }

    private ProgressoUsuario criarProgresso(Usuario usuario, Atividade atividade) {
        return ProgressoUsuario.builder()
                .usuario(usuario)
                .atividade(atividade)
                .aula(atividade.getAula())
                .unidade(atividade.getAula().getUnidade())
                .build();
    }

    // ============================================================
    // 2. ATUALIZAR PROGRESSO DA AULA (percentual)
    // ============================================================

    private void atualizarProgressoAula(Usuario usuario, Aula aula) {

        List<Atividade> atividades = aula.getAtividades();
        long total = atividades.size();

        long completas = atividades.stream()
                .filter(a -> repository.findByUsuarioAndAtividade(usuario, a)
                        .map(ProgressoUsuario::isConcluida)
                        .orElse(false))
                .count();

        double percentual = total == 0 ? 0 : (completas * 100.0 / total);

        ProgressoUsuario progresso = repository
                .findByUsuarioAndAula(usuario, aula)
                .orElseGet(() -> criarProgresso(usuario, aula));

        progresso.setPercentualConclusao(percentual);
        progresso.setConcluida(percentual == 100.0);

        if (percentual == 100.0)
            progresso.setDataConclusao(OffsetDateTime.now());

        repository.save(progresso);
    }


    // ============================================================
    // 3. ATUALIZAR PROGRESSO DA UNIDADE (percentual real)
    // ============================================================

    private void atualizarProgressoUnidade(Usuario usuario, Unidade unidade) {

        List<Aula> aulas = aulaRepository.findByUnidade(unidade);

        // total de atividades da unidade
        long totalAtividades = aulas.stream()
                .flatMap(a -> a.getAtividades().stream())
                .count();

        // atividades concluídas pelo usuário
        long concluidas = aulas.stream()
                .flatMap(a -> a.getAtividades().stream())
                .filter(a -> repository.findByUsuarioAndAtividade(usuario, a)
                        .map(ProgressoUsuario::isConcluida)
                        .orElse(false))
                .count();

        double percentual = totalAtividades == 0 ? 0 : (concluidas * 100.0 / totalAtividades);

        ProgressoUsuario progressoUnidade = repository
                .findByUsuarioAndUnidade(usuario, unidade)
                .orElseGet(() -> ProgressoUsuario.builder()
                        .usuario(usuario)
                        .unidade(unidade)
                        .build());

        progressoUnidade.setPercentualConclusao(percentual);
        progressoUnidade.setConcluida(percentual == 100.0);

        if (percentual == 100.0)
            progressoUnidade.setDataConclusao(OffsetDateTime.now());

        repository.save(progressoUnidade);
    }

    // ============================================================
    // 4. VERIFICAÇÃO FINAL DE CONCLUSÃO DA AULA
    // ============================================================

    public void verificarConclusaoAula(Usuario usuario, Aula aula) {

        boolean todasAtividadesConcluidas = aula.getAtividades().stream()
                .allMatch(a -> repository.findByUsuarioAndAtividade(usuario, a)
                        .map(ProgressoUsuario::isConcluida)
                        .orElse(false));

        if (todasAtividadesConcluidas) {
            atualizarProgressoAula(usuario, aula);
            atualizarProgressoUnidade(usuario, aula.getUnidade());
            conquistaService.verificarDesbloqueiosPorConclusaoDeAula(usuario, aula);
        }
    }

    private ProgressoUsuario criarProgresso(Usuario usuario, Aula aula) {
        return ProgressoUsuario.builder()
                .usuario(usuario)
                .aula(aula)
                .unidade(aula.getUnidade())
                .build();
    }

    // ============================================================
    // 5. VERIFICAÇÃO DE CONCLUSÃO DA UNIDADE
    // ============================================================

    public void verificarConclusaoUnidade(Usuario usuario, Unidade unidade) {

        List<Aula> aulas = aulaRepository.findByUnidade(unidade);

        boolean todasConcluidas = aulas.stream()
                .allMatch(a -> repository.findByUsuarioAndAula(usuario, a)
                        .map(ProgressoUsuario::isConcluida)
                        .orElse(false));

        if (todasConcluidas) {
            atualizarProgressoUnidade(usuario, unidade);
        }
    }
}
