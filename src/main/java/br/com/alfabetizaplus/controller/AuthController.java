package br.com.alfabetizaplus.controller;

import br.com.alfabetizaplus.entity.Usuario;
import br.com.alfabetizaplus.repository.UsuarioRepository;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseToken;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/auth")
public class AuthController {

    private final UsuarioRepository usuarioRepository;

    public AuthController(UsuarioRepository usuarioRepository) {
        this.usuarioRepository = usuarioRepository;
    }

    @PostMapping("/register")
    public Map<String, Object> registrarUsuario(@RequestHeader("Authorization") String authHeader) throws Exception {
        String token = authHeader.replace("Bearer ", "");
        FirebaseToken decoded = FirebaseAuth.getInstance().verifyIdToken(token);

        Usuario usuario = usuarioRepository.findByFirebaseUid(decoded.getUid())
                .orElseGet(() -> {
                    Usuario novo = new Usuario();
                    novo.setFirebaseUid(decoded.getUid());
                    novo.setNome(decoded.getName());
                    novo.setEmail(decoded.getEmail());
                    return usuarioRepository.save(novo);
                });

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

        Usuario usuario = usuarioRepository.findByFirebaseUid(decoded.getUid())
                .orElseThrow(() -> new RuntimeException("Usuário não encontrado."));

        Map<String, Object> response = new HashMap<>();
        response.put("id", usuario.getId());
        response.put("nome", usuario.getNome());
        response.put("email", usuario.getEmail());
        return response;
    }
}
