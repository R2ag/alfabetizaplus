package br.com.alfabetizaplus.controller;


import br.com.alfabetizaplus.entity.Usuario;
import br.com.alfabetizaplus.service.UsuarioService;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/usuarios")
public class UsuarioController {

    private final UsuarioService usuarioService;

    public UsuarioController(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }

    // Retorna os dados do usuário autenticado (Firebase)
    @GetMapping("/me")
    public Usuario obterUsuarioLogado(Authentication authentication) {
        if (authentication == null || !(authentication.getPrincipal() instanceof Usuario usuario)) {
            throw new RuntimeException("Usuário não autenticado");
        }
        return usuario;
    }
}