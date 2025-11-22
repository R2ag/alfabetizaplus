package br.com.alfabetizaplus.entity;

import jakarta.persistence.*;
import lombok.*;
import java.util.List;

@Entity
@Table(name = "atividade")
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Atividade {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_atividade")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_aula", nullable = false)
    private Aula aula;

    @Column(nullable = false, length = 150)
    private String nome;

    @Column(columnDefinition = "TEXT")
    private String descricao;

    @Column(name = "video_instrucao_url", length = 500)
    private  String videoInstrucaoUrl;

    @OneToMany(mappedBy = "atividade", cascade = CascadeType.ALL, orphanRemoval = true)
    @ToString.Exclude
    private List<Pratica> praticas;


}