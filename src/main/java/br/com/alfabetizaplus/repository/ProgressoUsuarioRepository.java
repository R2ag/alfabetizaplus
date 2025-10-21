package br.com.alfabetizaplus.repository;

import br.com.alfabetizaplus.entity.ProgressoUsuario;
import br.com.alfabetizaplus.entity.Usuario;
import br.com.alfabetizaplus.entity.Aula;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;
import java.util.Optional;

public interface ProgressoUsuarioRepository extends JpaRepository<ProgressoUsuario, Long> {
    List<ProgressoUsuario> findByUsuario(Usuario usuario);
    Optional<ProgressoUsuario> findByUsuarioAndAula(Usuario usuario, Aula aula);
}
