package br.com.alfabetizaplus.service.impl;

import br.com.alfabetizaplus.entity.Gamificacao;
import br.com.alfabetizaplus.entity.Usuario;
import br.com.alfabetizaplus.repository.GamificacaoRepository;
import br.com.alfabetizaplus.service.GamificacaoService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class GamificacaoServiceImpl implements GamificacaoService {

    private final GamificacaoRepository gamificacaoRepository;

    public GamificacaoServiceImpl(GamificacaoRepository gamificacaoRepository) {
        this.gamificacaoRepository = gamificacaoRepository;
    }

    @Override
    public Gamificacao obterGamificacaoPorUsuario(Usuario usuario) {
        return gamificacaoRepository.findByUsuario(usuario)
                .orElseThrow(() -> new RuntimeException("Gamificação não encontrada para o usuário."));
    }

    @Override
    @Transactional
    public Gamificacao adicionarMoedas(Usuario usuario, int quantidade) {
        Gamificacao gam = obterGamificacaoPorUsuario(usuario);
        gam.setMoedas(gam.getMoedas() + quantidade);
        return gamificacaoRepository.save(gam);
    }

    @Override
    @Transactional
    public Gamificacao removerVida(Usuario usuario) {
        Gamificacao gam = obterGamificacaoPorUsuario(usuario);
        gam.setVidas(Math.max(gam.getVidas() - 1, 0));
        return gamificacaoRepository.save(gam);
    }
}