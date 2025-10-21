package br.com.alfabetizaplus.repository;

import br.com.alfabetizaplus.entity.Atividade;
import br.com.alfabetizaplus.entity.Aula;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface AtividadeRepository extends JpaRepository<Atividade, Long> {
    List<Atividade> findByAula(Aula aula);
}