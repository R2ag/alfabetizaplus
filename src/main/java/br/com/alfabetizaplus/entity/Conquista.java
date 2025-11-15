package br.com.alfabetizaplus.entity;

import jakarta.persistence.*;
import lombok.*;
import java.util.List;

@Entity
@Table(name = "conquista")
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Conquista {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_conquista")
    private Long id;

    @Column(nullable = false, length = 150)
    private String nome;

    @Column(columnDefinition = "TEXT")
    private String descricao;

    @Column(name = "icone_url", length = 500)
    private String iconeUrl;

    @Column(name = "recompensa_moedas", nullable = false)
    private Integer recompensaMoedas = 0;

    /**
     * Lista de aulas que o utilizador precisa concluir para desbloquear esta conquista.
     */
    @ManyToMany
    @JoinTable(
            name = "conquista_aula",
            joinColumns = @JoinColumn(name = "id_conquista"),
            inverseJoinColumns = @JoinColumn(name = "id_aula")
    )
    @ToString.Exclude
    private List<Aula> aulasNecessarias;



}
