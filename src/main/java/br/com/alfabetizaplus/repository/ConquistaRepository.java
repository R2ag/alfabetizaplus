package br.com.alfabetizaplus.repository;

import br.com.alfabetizaplus.entity.Aula;
import br.com.alfabetizaplus.entity.Conquista;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ConquistaRepository extends JpaRepository<Conquista, Long> {
    @Query("SELECT c FROM Conquista c JOIN c.aulasNecessarias a WHERE a = :aula")
    List<Conquista> findByAulaNecessaria(@Param("aula") Aula aula);
}
