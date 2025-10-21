package br.com.alfabetizaplus.controller;

import br.com.alfabetizaplus.entity.Gamificacao;
import br.com.alfabetizaplus.entity.Usuario;
import br.com.alfabetizaplus.service.GamificacaoService;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/gamificacao")
public class GamificacaoController {

    private final GamificacaoService gamificacaoService;

    public GamificacaoController(GamificacaoService gamificacaoService) {
        this.gamificacaoService = gamificacaoService;
    }

    /*TO DO
    Finalizar a implementação dos DTOs e Mappers
    */
    @GetMapping("/me")
    public Gamificacao getStatus(Authentication authentication) {
        Usuario usuario = (Usuario) authentication.getPrincipal();
        return gamificacaoService.obterGamificacaoPorUsuario(usuario);
    }


    @PostMapping("/add-moedas/{quantidade}")
    public Gamificacao adicionarMoedas(Authentication authentication, @PathVariable int quantidade) {
        Usuario usuario = (Usuario) authentication.getPrincipal();
        return gamificacaoService.adicionarMoedas(usuario, quantidade);
    }


    @PostMapping("/perder-vida")
    public Gamificacao perderVida(Authentication authentication) {
        Usuario usuario = (Usuario) authentication.getPrincipal();
        return gamificacaoService.removerVida(usuario);
    }
}