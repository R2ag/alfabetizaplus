package br.com.alfabetizaplus.service;

import br.com.alfabetizaplus.dto.UsuarioDTO;
import br.com.alfabetizaplus.entity.Usuario;
import java.util.Optional;

public interface UsuarioService {
    Optional<UsuarioDTO> findByGoogleUid(String googleUid);
    UsuarioDTO loadOrCreateByGoogleUid(String googleUid, String email, String nome);
}
