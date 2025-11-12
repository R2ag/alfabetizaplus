package br.com.alfabetizaplus.dto;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProgressoResumoDTO {
    private Double percentualConclusao;
    private Boolean completou;
}
