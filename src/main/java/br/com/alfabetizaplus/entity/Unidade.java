package br.com.alfabetizaplus.entity;

import jakarta.persistence.*;
import lombok.*;
import java.util.List;

@Entity
@Table(name = "unidade")
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Unidade {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_unidade")
    private Long id;

    @Column(nullable = false, length = 150)
    private String nome;

    @Column(columnDefinition = "TEXT")
    private String descricao;

    @Column(name = "imagem_url", length = 500)
    private String imagemUrl;

    @OneToMany(mappedBy = "unidade", cascade = CascadeType.ALL, orphanRemoval = true)
    @ToString.Exclude
    private List<Aula> aulas;
}
