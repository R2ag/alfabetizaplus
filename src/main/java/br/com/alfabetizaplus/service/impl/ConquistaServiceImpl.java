package br.com.alfabetizaplus.service.impl;

import br.com.alfabetizaplus.entity.*;
import br.com.alfabetizaplus.repository.*;
import br.com.alfabetizaplus.service.ConquistaService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.OffsetDateTime;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ConquistaServiceImpl implements ConquistaService {

    private final ConquistaRepository conquistaRepository;
    private final ConquistaUsuarioRepository conquistaUsuarioRepository;
    private final ProgressoUsuarioRepository  progressoUsuarioRepository;

    @Override
    public List<Conquista> listarConquistas() {
        return conquistaRepository.findAll();
    }

    @Override
    public List<ConquistaUsuario> listarConquistasDoUsuario(Usuario usuario) {
        return conquistaUsuarioRepository.findByUsuario(usuario);
    }

    @Transactional
    @Override
    public void verificarDesbloqueiosPorConclusaoDeAula(Usuario usuario, Aula aulaConcluida) {
        // Busca conquistas que dependem dessa aula
        List<Conquista> conquistasRelacionadas = conquistaRepository.findByAulaNecessaria(aulaConcluida);

        for (Conquista conquista : conquistasRelacionadas) {
            boolean jaTem = conquistaUsuarioRepository
                    .findByUsuarioAndConquista(usuario, conquista)
                    .isPresent();

            if (!jaTem) {
                // Verifica se o usuário concluiu TODAS as aulas necessárias
                boolean todasConcluidas = conquista.getAulasNecessarias().stream()
                        .allMatch(a -> progressoUsuarioRepository.findByUsuarioAndAula(usuario, a)
                                .map(ProgressoUsuario::isConcluida)
                                .orElse(false));

                if(todasConcluidas) {
                    ConquistaUsuario nova = ConquistaUsuario.builder()
                            .usuario(usuario)
                            .conquista(conquista)
                            .dataConquista(OffsetDateTime.now())
                            .build();
                    conquistaUsuarioRepository.save(nova);

                    // Recompensa o usuário
                    Gamificacao gam = usuario.getGamificacao();
                    gam.setMoedas(gam.getMoedas() + conquista.getRecompensaMoedas());
                }
            }
        }
    }
}
