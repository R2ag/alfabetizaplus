package br.com.alfabetizaplus.repository;

import br.com.alfabetizaplus.entity.Gamificacao;
import br.com.alfabetizaplus.entity.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface GamificacaoRepository extends JpaRepository<Gamificacao, Long> {
    Optional<Gamificacao> findByUsuario(Long usuarioId);
}
