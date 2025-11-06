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

        Optional<Usuario> existentePorUid = usuarioRepository.findByGoogleUid(googleUid);
        if (existentePorUid.isPresent()) {
            return existentePorUid.get();
        }

        // 2️⃣ Procura pelo e-mail
        Optional<Usuario> existentePorEmail = usuarioRepository.findByEmail(email);
        if (existentePorEmail.isPresent()) {
            Usuario usuario = existentePorEmail.get();

            // Atualiza o UID, se necessário
            if (usuario.getGoogleUid() == null || !usuario.getGoogleUid().equals(googleUid)) {
                usuario.setGoogleUid(googleUid);
            }

            // Atualiza nome, se estiver em branco
            if (nome != null && !nome.isBlank() && !nome.equals(usuario.getNome())) {
                usuario.setNome(nome);
            }

            return usuarioRepository.save(usuario);
        }

        // 3️⃣ Cria novo usuário se não encontrou por UID nem por e-mail
        Usuario novo = new Usuario();
        novo.setGoogleUid(googleUid);
        novo.setEmail(email);
        novo.setNome(nome);
        Usuario salvo = usuarioRepository.save(novo);

        // Cria registro de gamificação padrão
        Gamificacao gam = new Gamificacao();
        gam.setUsuario(salvo);
        gamificacaoRepository.save(gam);

        return salvo;
    }

}