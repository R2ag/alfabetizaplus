package br.com.alfabetizaplus.controller;

import br.com.alfabetizaplus.dto.AulaDTO;
import br.com.alfabetizaplus.dto.UnidadeDTO;
import br.com.alfabetizaplus.entity.*;
import br.com.alfabetizaplus.mapper.AulaMapper;
import br.com.alfabetizaplus.mapper.UnidadeMapper;
import br.com.alfabetizaplus.service.ConteudoService;
import br.com.alfabetizaplus.service.UsuarioService;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api")
public class ConteudoController {

    private final ConteudoService conteudoService;
    private final UnidadeMapper unidadeMapper;
    private final AulaMapper aulaMapper;
    private final UsuarioService usuarioService;

    public ConteudoController(ConteudoService conteudoService, UnidadeMapper unidadeMapper, AulaMapper aulaMapper, UsuarioService usuarioService) {
        this.conteudoService = conteudoService;
        this.unidadeMapper = unidadeMapper;
        this.aulaMapper = aulaMapper;
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
        return conteudoService.listarAulasPorUnidade(idUnidade)
                .stream()
                .map(aulaMapper::toDTO)
                .toList();
    }

    @GetMapping("/aulas/{idAula}/atividades")
    public List<Atividade> listarAtividades(@PathVariable Long idAula) {
        return conteudoService.listarAtividadesPorAula(idAula);
    }

    @GetMapping("/atividades/{idAtividade}/praticas")
    public List<Pratica> listarPraticas(@PathVariable Long idAtividade) {
        return conteudoService.listarPraticasPorAtividade(idAtividade);
    }

    @GetMapping("/praticas/{idPratica}")
    public Pratica buscarPratica(@PathVariable Long idPratica) {
        return conteudoService.buscarPraticaPorId(idPratica);
    }
}
