package br.com.alfabetizaplus.controller;

import br.com.alfabetizaplus.dto.UsuarioDTO;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

@RestController
@RequestMapping("/api/auth")
public class AuthController {

    @PostMapping("/register")
    public UsuarioDTO registrarUsuario(@AuthenticationPrincipal UsuarioDTO usuarioAutenticado) {
        if (usuarioAutenticado == null) {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Token ausente ou inválido.");
        }

        return usuarioAutenticado;
    }

    @GetMapping("/me")
    public UsuarioDTO getUsuarioAtual(@AuthenticationPrincipal UsuarioDTO usuarioAutenticado) {
        if (usuarioAutenticado == null) {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Usuário não autenticado.");
        }

        return usuarioAutenticado;
    }
}
