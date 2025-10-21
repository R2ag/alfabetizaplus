package br.com.alfabetizaplus.service;

import br.com.alfabetizaplus.entity.Usuario;
import br.com.alfabetizaplus.entity.Gamificacao;

public interface GamificacaoService {
    Gamificacao obterGamificacaoPorUsuario(Usuario usuario);
    Gamificacao adicionarMoedas(Usuario usuario, int quantidade);
    Gamificacao removerVida(Usuario usuario);
}
