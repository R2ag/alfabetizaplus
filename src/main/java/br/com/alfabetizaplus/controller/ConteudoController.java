package br.com.alfabetizaplus.controller;

import br.com.alfabetizaplus.dto.*;
import br.com.alfabetizaplus.entity.Usuario;
import br.com.alfabetizaplus.service.ConteudoService;
import br.com.alfabetizaplus.service.UsuarioService;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api")
public class ConteudoController {

    private final ConteudoService conteudoService;
    private final UsuarioService usuarioService;

    public ConteudoController(ConteudoService conteudoService, UsuarioService usuarioService) {
        this.conteudoService = conteudoService;
        this.usuarioService = usuarioService;
    }

    @GetMapping("/unidades")
    public List<UnidadeDTO> listarUnidades(@RequestParam String googleUid) {
        Usuario usuario = usuarioService.findByGoogleUid(googleUid)
                .orElseThrow(() -> new RuntimeException("Usuário Não encontrado"));
        return conteudoService.listarUnidades(usuario);
    }

    @GetMapping("/unidades/{idUnidade}/aulas")
    public List<AulaDTO> listarAulas(@PathVariable Long idUnidade) {
        return conteudoService.listarAulasPorUnidade(idUnidade);
    }

    @GetMapping("/aulas/{idAula}/atividades")
    public List<AtividadeDTO> listarAtividades(@PathVariable Long idAula) {
        return conteudoService.listarAtividadesPorAula(idAula);
    }

    @GetMapping("/atividades/{idAtividade}/praticas")
    public List<PraticaDTO> listarPraticas(@PathVariable Long idAtividade) {
        return conteudoService.listarPraticasPorAtividade(idAtividade);
    }

    @GetMapping("/praticas/{idPratica}")
    public PraticaDTO buscarPratica(@PathVariable Long idPratica) {
        return conteudoService.buscarPraticaPorId(idPratica);
    }
}
