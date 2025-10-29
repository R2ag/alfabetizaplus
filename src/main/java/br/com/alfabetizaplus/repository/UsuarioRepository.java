package br.com.alfabetizaplus.repository;

import br.com.alfabetizaplus.entity.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
    Optional<Usuario> findByEmail(String email);
    Optional<Usuario> findByGoogleUid(String googleUid);
    Optional<Usuario> findByFirebaseUid(String firebaseUid);
}