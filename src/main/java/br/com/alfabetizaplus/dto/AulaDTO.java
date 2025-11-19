package br.com.alfabetizaplus.dto;


import lombok.Data;
import java.util.List;

@Data
public class AulaDTO {
    private Long id;
    private String nome;
    private String descricao;
    private String videoAulaUrl;
}
