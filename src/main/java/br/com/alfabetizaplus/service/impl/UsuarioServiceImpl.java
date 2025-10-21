package br.com.alfabetizaplus.service.impl;

import br.com.alfabetizaplus.entity.Usuario;
import br.com.alfabetizaplus.entity.Gamificacao;
import br.com.alfabetizaplus.repository.UsuarioRepository;
import br.com.alfabetizaplus.repository.GamificacaoRepository;
import br.com.alfabetizaplus.service.UsuarioService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
public class UsuarioServiceImpl implements UsuarioService {

    private final UsuarioRepository usuarioRepository;
    private final GamificacaoRepository gamificacaoRepository;

    public UsuarioServiceImpl(UsuarioRepository usuarioRepository,
                              GamificacaoRepository gamificacaoRepository) {
        this.usuarioRepository = usuarioRepository;
        this.gamificacaoRepository = gamificacaoRepository;
    }

    @Override
    public Optional<Usuario> findByGoogleUid(String googleUid) {
        return usuarioRepository.findByGoogleUid(googleUid);
    }

    @Override
    @Transactional
    public Usuario loadOrCreateByGoogleUid(String googleUid, String email, String nome) {
        return usuarioRepository.findByGoogleUid(googleUid)
                .orElseGet(() -> {
                    Usuario novo = new Usuario();
                    novo.setGoogleUid(googleUid);
                    novo.setEmail(email);
                    novo.setNome(nome);
                    Usuario salvo = usuarioRepository.save(novo);

                    // cria registro de gamificação padrão
                    Gamificacao gam = new Gamificacao();
                    gam.setUsuario(salvo);
                    gamificacaoRepository.save(gam);

                    return salvo;
                });
    }
}