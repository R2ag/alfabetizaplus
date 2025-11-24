package br.com.alfabetizaplus.controller;


import br.com.alfabetizaplus.dto.UsuarioDTO;
import br.com.alfabetizaplus.entity.*;
import br.com.alfabetizaplus.mapper.UsuarioMapper;
import br.com.alfabetizaplus.repository.*;
import br.com.alfabetizaplus.service.GamificacaoService;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;
import java.time.OffsetDateTime;

@RestController
@RequestMapping("/api/respostas")
public class RespostaController {

    private final RespostaPossivelRepository respostaPossivelRepository;
    private final RespostaUsuarioRepository respostaUsuarioRepository;
    private final PraticaRepository praticaRepository;
    private final GamificacaoService gamificacaoService;
    private final UsuarioMapper usuarioMapper;

    public RespostaController(RespostaPossivelRepository respostaPossivelRepository,
                              RespostaUsuarioRepository respostaUsuarioRepository,
                              PraticaRepository praticaRepository,
                              GamificacaoService gamificacaoService, UsuarioMapper usuarioMapper) {
        this.respostaPossivelRepository = respostaPossivelRepository;
        this.respostaUsuarioRepository = respostaUsuarioRepository;
        this.praticaRepository = praticaRepository;
        this.gamificacaoService = gamificacaoService;
        this.usuarioMapper = usuarioMapper;
    }

    @PostMapping("/{idPratica}/responder")
    public String responderPratica(@PathVariable Long idPratica,
                                   @RequestParam Long idResposta,
                                   Authentication authentication) {

        UsuarioDTO usuarioDTO = (UsuarioDTO) authentication.getPrincipal();
        Usuario usuario = usuarioMapper.toEntity(usuarioDTO);

        Pratica pratica = praticaRepository.findById(idPratica)
                .orElseThrow(() -> new RuntimeException("Prática não encontrada"));

        RespostaPossivel resposta = respostaPossivelRepository.findById(idResposta)
                .orElseThrow(() -> new RuntimeException("Resposta não encontrada"));

        RespostaUsuario respostaUsuario = new RespostaUsuario();
        respostaUsuario.setUsuario(usuario);
        respostaUsuario.setPratica(pratica);
        respostaUsuario.setResposta(resposta);
        respostaUsuario.setDataResposta(OffsetDateTime.now());
        respostaUsuarioRepository.save(respostaUsuario);

        if (Boolean.TRUE.equals(resposta.getCorreta())) {
            gamificacaoService.adicionarMoedas(usuario, 10);
            return "Resposta correta!";
        } else {
            gamificacaoService.removerVida(usuario);
            return "Resposta incorreta!";
        }
    }
}