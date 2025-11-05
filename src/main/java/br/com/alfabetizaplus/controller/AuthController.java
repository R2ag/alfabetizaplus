package br.com.alfabetizaplus.controller;

import br.com.alfabetizaplus.entity.Usuario;
import br.com.alfabetizaplus.service.UsuarioService;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseToken;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/auth")
public class AuthController {

    private final UsuarioService usuarioService;

    public AuthController(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }

    @PostMapping("/register")
    public Map<String, Object> registrarUsuario(@RequestHeader("Authorization") String authHeader) throws Exception {
        String token = authHeader.replace("Bearer ", "");
        FirebaseToken decoded = FirebaseAuth.getInstance().verifyIdToken(token);

        Usuario usuario = usuarioService.loadOrCreateByGoogleUid(
                decoded.getUid(),
                decoded.getEmail(),
                decoded.getName()
        );

        Map<String, Object> response = new HashMap<>();
        response.put("id", usuario.getId());
        response.put("nome", usuario.getNome());
        response.put("email", usuario.getEmail());
        return response;
    }

    @GetMapping("/me")
    public Map<String, Object> getUsuarioAtual(@RequestHeader("Authorization") String authHeader) throws Exception {
        String token = authHeader.replace("Bearer ", "");
        FirebaseToken decoded = FirebaseAuth.getInstance().verifyIdToken(token);

        Usuario usuario = usuarioService.findByGoogleUid(decoded.getUid())
                .orElseThrow(() -> new RuntimeException("Usuário não encontrado."));

        Map<String, Object> response = new HashMap<>();
        response.put("id", usuario.getId());
        response.put("nome", usuario.getNome());
        response.put("email", usuario.getEmail());
        return response;
    }
}
