package br.com.alfabetizaplus.entity;

import jakarta.persistence.*;
import lombok.*;
import java.time.OffsetDateTime;

@Entity
@Table(name = "progresso_usuario")
@Getter
@Setter
@ToString
@RequiredArgsConstructor
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProgressoUsuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_progresso")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_usuario", nullable = false)
    private Usuario usuario;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_unidade")
    @ToString.Exclude
    private Unidade unidade;

    @ManyToOne
    @JoinColumn(name = "id_aula", nullable = false)
    private Aula aula;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_atividade")
    @ToString.Exclude
    private Atividade atividade;

    private boolean concluida = false;

    @Column(name = "data_conclusao")
    private OffsetDateTime dataConclusao;

    @Column(name = "percentual_conclusao", nullable = false)
    private Double percentualConclusao = 0.0;
}