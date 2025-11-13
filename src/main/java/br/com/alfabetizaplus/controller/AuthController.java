package br.com.alfabetizaplus.controller;

import br.com.alfabetizaplus.dto.UsuarioDTO;
import br.com.alfabetizaplus.entity.Usuario;
import br.com.alfabetizaplus.mapper.UsuarioMapper;
import br.com.alfabetizaplus.service.UsuarioService;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseToken;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/api/auth")
public class AuthController {

    private final UsuarioService usuarioService;

    public AuthController(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }

    @PostMapping("/register")
    public UsuarioDTO registrarUsuario(@RequestHeader("Authorization") String authHeader) throws Exception {
        String token = authHeader.replace("Bearer ", "");
        FirebaseToken decoded = FirebaseAuth.getInstance().verifyIdToken(token);

        return usuarioService.loadOrCreateByGoogleUid(
                decoded.getUid(),
                decoded.getEmail(),
                decoded.getName()
        );


    }

    @GetMapping("/me")
    public UsuarioDTO getUsuarioAtual(@RequestHeader("Authorization") String authHeader) throws Exception {
        String token = authHeader.replace("Bearer ", "");
        FirebaseToken decoded = FirebaseAuth.getInstance().verifyIdToken(token);

        Usuario usuario = usuarioService.findByGoogleUid(decoded.getUid())
                .orElseThrow(() -> new RuntimeException("Usuário não encontrado."));

        return usuarioMapper.toDTO(usuario);
    }
}
