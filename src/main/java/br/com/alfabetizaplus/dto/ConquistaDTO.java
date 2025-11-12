package br.com.alfabetizaplus.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ConquistaDTO {
    private Long id;
    private String nome;
    private String descricao;
    private String iconeUrl;
    private Boolean conquistada;
}
