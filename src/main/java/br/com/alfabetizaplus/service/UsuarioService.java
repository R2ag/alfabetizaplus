package br.com.alfabetizaplus.service;

import br.com.alfabetizaplus.entity.Usuario;
import java.util.Optional;

public interface UsuarioService {
    Optional<Usuario> findByGoogleUid(String googleUid);
    Usuario loadOrCreateByGoogleUid(String googleUid, String email, String nome);
}
