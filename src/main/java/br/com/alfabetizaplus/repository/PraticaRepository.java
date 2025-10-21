package br.com.alfabetizaplus.repository;

import br.com.alfabetizaplus.entity.Pratica;
import br.com.alfabetizaplus.entity.Atividade;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface PraticaRepository extends JpaRepository<Pratica, Long> {
    List<Pratica> findByAtividade(Atividade atividade);
}