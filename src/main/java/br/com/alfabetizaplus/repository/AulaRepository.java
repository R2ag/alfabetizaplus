package br.com.alfabetizaplus.repository;

import br.com.alfabetizaplus.entity.Aula;
import br.com.alfabetizaplus.entity.Unidade;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface AulaRepository extends JpaRepository<Aula, Long> {
    List<Aula> findByUnidade(Unidade unidade);
}