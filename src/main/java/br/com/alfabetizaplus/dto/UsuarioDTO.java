package br.com.alfabetizaplus.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

@Data
public class UsuarioDTO {
    private Long id;
    private String nome;
    private String email;

    /**
     * Identificador do usuário no Firebase. Necessário para que o backend
     * recupere o registro diretamente do token, mas não deve ser exposto
     * nas respostas da API.
     */
    @JsonIgnore
    private String googleUid;
}
