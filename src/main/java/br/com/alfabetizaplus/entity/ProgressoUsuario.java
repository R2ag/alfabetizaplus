package br.com.alfabetizaplus.entity;

import jakarta.persistence.*;
import lombok.*;
import java.time.OffsetDateTime;

@Entity
@Table(name = "progresso_usuario")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProgressoUsuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_progresso")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_usuario", nullable = false)
    private Usuario usuario;

    @ManyToOne
    @JoinColumn(name = "id_aula", nullable = false)
    private Aula aula;

    private Boolean concluida = false;

    @Column(name = "data_conclusao")
    private OffsetDateTime dataConclusao;
}