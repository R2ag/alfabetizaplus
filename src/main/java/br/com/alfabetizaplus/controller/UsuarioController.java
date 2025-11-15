package br.com.alfabetizaplus.controller;


import br.com.alfabetizaplus.dto.UsuarioDTO;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

@RestController
@RequestMapping("/api/usuarios")
public class UsuarioController {

    // Retorna os dados do usuário autenticado (Firebase)
    @GetMapping("/me")
    public UsuarioDTO obterUsuarioLogado(@AuthenticationPrincipal UsuarioDTO usuarioAutenticado) {
        if (usuarioAutenticado == null) {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Usuário não autenticado");
        }
        return usuarioAutenticado;
    }
}
