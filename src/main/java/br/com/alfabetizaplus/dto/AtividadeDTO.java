package br.com.alfabetizaplus.dto;


import lombok.Data;
import java.util.List;

@Data
public class AtividadeDTO {
    private Long id;
    private String nome;
    private String descricao;
    private  String videoInstrucaoUrl;
}