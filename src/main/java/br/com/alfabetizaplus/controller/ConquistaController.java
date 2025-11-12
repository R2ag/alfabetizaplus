package br.com.alfabetizaplus.controller;

import br.com.alfabetizaplus.dto.ConquistaDTO;
import br.com.alfabetizaplus.entity.Usuario;
import br.com.alfabetizaplus.mapper.ConquistaMapper;
import br.com.alfabetizaplus.service.ConquistaService;
import br.com.alfabetizaplus.service.UsuarioService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/conquistas")
@RequiredArgsConstructor
public class ConquistaController {

    private final ConquistaService conquistaService;
    private final ConquistaMapper conquistaMapper;
    private final UsuarioService usuarioService;

    @GetMapping
    public List<ConquistaDTO> listarConquistas(@RequestParam String googleUid) {
        Usuario usuario = usuarioService.findByGoogleUid(googleUid)
                .orElseThrow(() -> new RuntimeException("Usuário não encontrado"));

        List<Long> idsConquistadas = conquistaService.listarConquistasDoUsuario(usuario)
                .stream().map(c -> c.getConquista().getId())
                .toList();

        return conquistaService.listarConquistas().stream()
                .map(c -> {
                    ConquistaDTO dto = conquistaMapper.toDTO(c);
                    dto.setConquistada(idsConquistadas.contains(c.getId()));
                    return dto;
                })
                .collect(Collectors.toList());
    }
}