package br.com.alfabetizaplus.repository;

import br.com.alfabetizaplus.entity.*;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;
import java.util.Optional;

public interface ProgressoUsuarioRepository extends JpaRepository<ProgressoUsuario, Long> {
    Optional<ProgressoUsuario> findByUsuarioAndAtividade(Usuario usuario, Atividade atividade);
    Optional<ProgressoUsuario> findByUsuarioAndAula(Usuario usuario, Aula aula);
    Optional<ProgressoUsuario> findByUsuarioAndUnidade(Usuario usuario, Unidade unidade);
    List<ProgressoUsuario> findByUsuario(Usuario usuario);
}

