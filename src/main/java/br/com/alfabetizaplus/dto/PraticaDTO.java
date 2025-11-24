package br.com.alfabetizaplus.dto;

import lombok.Data;
import java.util.List;

@Data
public class PraticaDTO {
    private Long id;
    private String descricao;
    private String imagemUrl;
    private List<RespostaPossivelDTO> respostasPossiveis;
}