package br.com.alfabetizaplus.entity;

import jakarta.persistence.*;
import lombok.*;
import java.time.OffsetDateTime;

@Entity
@Table(name = "resposta_usuario")
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class RespostaUsuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_resposta_usuario")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_usuario", nullable = false)
    private Usuario usuario;

    @ManyToOne
    @JoinColumn(name = "id_pratica", nullable = false)
    private Pratica pratica;

    @ManyToOne
    @JoinColumn(name = "id_resposta", nullable = false)
    private RespostaPossivel resposta;

    @Column(name = "data_resposta")
    private OffsetDateTime dataResposta = OffsetDateTime.now();


}
