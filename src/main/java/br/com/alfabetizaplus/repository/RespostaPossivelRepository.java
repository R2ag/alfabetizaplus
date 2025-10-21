package br.com.alfabetizaplus.repository;


import br.com.alfabetizaplus.entity.RespostaPossivel;
import br.com.alfabetizaplus.entity.Pratica;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface RespostaPossivelRepository extends JpaRepository<RespostaPossivel, Long> {
    List<RespostaPossivel> findByPratica(Pratica pratica);
}