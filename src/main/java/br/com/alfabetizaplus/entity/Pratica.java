package br.com.alfabetizaplus.entity;

import jakarta.persistence.*;
import lombok.*;
import java.util.List;

@Entity
@Table(name = "pratica")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Pratica {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_pratica")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_atividade", nullable = false)
    private Atividade atividade;

    @Column(nullable = false, columnDefinition = "TEXT")
    private String descricao;

    private String imagem;

    @OneToMany(mappedBy = "pratica", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<RespostaPossivel> respostasPossiveis;


}