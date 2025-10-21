package br.com.alfabetizaplus.repository;

import br.com.alfabetizaplus.entity.RespostaUsuario;
import br.com.alfabetizaplus.entity.Usuario;
import br.com.alfabetizaplus.entity.Pratica;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface RespostaUsuarioRepository extends JpaRepository<RespostaUsuario, Long> {
    List<RespostaUsuario> findByUsuario(Usuario usuario);
    List<RespostaUsuario> findByUsuarioAndPratica(Usuario usuario, Pratica pratica);
}
