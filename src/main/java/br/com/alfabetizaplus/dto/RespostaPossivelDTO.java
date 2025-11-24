package br.com.alfabetizaplus.dto;


import lombok.Data;

@Data
public class RespostaPossivelDTO {
    private Long id;
    private String descricao;
    private String imagem;
    private boolean correta;
}