package br.com.alfabetizaplus.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "resposta_possivel")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RespostaPossivel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_resposta")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_pratica", nullable = false)
    private Pratica pratica;

    @Column(nullable = false, length = 255)
    private String descricao;

    private String imagem;

    private Boolean correta = false;
}