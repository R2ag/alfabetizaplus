package br.com.alfabetizaplus.repository;

import br.com.alfabetizaplus.entity.Conquista;
import br.com.alfabetizaplus.entity.ConquistaUsuario;
import br.com.alfabetizaplus.entity.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface ConquistaUsuarioRepository extends JpaRepository<ConquistaUsuario, Long> {
    List<ConquistaUsuario> findByUsuario(Usuario usuario);
    Optional<ConquistaUsuario> findByUsuarioAndConquista(Usuario usuario, Conquista conquista);
}