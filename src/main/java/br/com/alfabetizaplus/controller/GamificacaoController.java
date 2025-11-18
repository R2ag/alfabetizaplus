package br.com.alfabetizaplus.controller;

import br.com.alfabetizaplus.dto.GamificacaoDTO;
import br.com.alfabetizaplus.dto.UsuarioDTO;
import br.com.alfabetizaplus.entity.Gamificacao;
import br.com.alfabetizaplus.entity.Usuario;
import br.com.alfabetizaplus.mapper.GamificacaoMapper;
import br.com.alfabetizaplus.mapper.UsuarioMapper;
import br.com.alfabetizaplus.service.GamificacaoService;
import br.com.alfabetizaplus.service.UsuarioService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/gamificacao")
public class GamificacaoController {

    private final GamificacaoService gamificacaoService;
    private final GamificacaoMapper gamificacaoMapper;
    private final UsuarioMapper usuarioMapper;

    public GamificacaoController(GamificacaoService gamificacaoService, GamificacaoMapper gamificacaoMapper, UsuarioMapper usuarioMapper) {
        this.gamificacaoService = gamificacaoService;
        this.gamificacaoMapper = gamificacaoMapper;
        this.usuarioMapper = usuarioMapper;
    }


    @GetMapping("/me")
    public ResponseEntity<GamificacaoDTO>  getStatus(Authentication authentication) {
        UsuarioDTO usuarioDTO = (UsuarioDTO) authentication.getPrincipal();
        Usuario usuario = usuarioMapper.toEntity(usuarioDTO);
        Gamificacao gam = gamificacaoService.obterGamificacaoPorUsuario(usuario);
        return ResponseEntity.ok(gamificacaoMapper.toDTO(gam));
    }


    @PostMapping("/add-moedas/{quantidade}")
    public ResponseEntity<GamificacaoDTO> adicionarMoedas(Authentication authentication, @PathVariable int quantidade) {
        Usuario usuario = (Usuario) authentication.getPrincipal();
        Gamificacao gam = gamificacaoService.adicionarMoedas(usuario, quantidade);
        return ResponseEntity.ok(gamificacaoMapper.toDTO(gam));
    }


    @PostMapping("/perder-vida")
    public ResponseEntity<GamificacaoDTO> perderVida(Authentication authentication) {
        Usuario usuario = (Usuario) authentication.getPrincipal();
        Gamificacao gam = gamificacaoService.removerVida(usuario);
        return ResponseEntity.ok(gamificacaoMapper.toDTO(gam));
    }
}