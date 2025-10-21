package br.com.alfabetizaplus.controller;

import br.com.alfabetizaplus.entity.*;
import br.com.alfabetizaplus.service.ConteudoService;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api")
public class ConteudoController {

    private final ConteudoService conteudoService;

    public ConteudoController(ConteudoService conteudoService) {
        this.conteudoService = conteudoService;
    }

    @GetMapping("/unidades")
    public List<Unidade> listarUnidades() {
        return conteudoService.listarUnidades();
    }

    @GetMapping("/unidades/{idUnidade}/aulas")
    public List<Aula> listarAulas(@PathVariable Long idUnidade) {
        return conteudoService.listarAulasPorUnidade(idUnidade);
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
