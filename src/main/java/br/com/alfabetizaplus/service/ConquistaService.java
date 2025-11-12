package br.com.alfabetizaplus.service;

import br.com.alfabetizaplus.entity.Aula;
import br.com.alfabetizaplus.entity.Conquista;
import br.com.alfabetizaplus.entity.ConquistaUsuario;
import br.com.alfabetizaplus.entity.Usuario;

import java.util.List;

public interface ConquistaService {
    List<Conquista> listarConquistas();
    List<ConquistaUsuario> listarConquistasDoUsuario(Usuario usuario);
    void verificarDesbloqueiosPorConclusaoDeAula(Usuario usuario, Aula aulaConcluida);
}
