package br.com.alfabetizaplus.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "gamificacao")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString(onlyExplicitlyIncluded = true)
public class Gamificacao {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_gamificacao")
    @ToString.Include
    private Long id;

    @OneToOne
    @JoinColumn(name = "id_usuario", nullable = false, unique = true)
    @JsonBackReference
    private Usuario usuario;

    @ToString.Include
    private Integer moedas = 0;

    @ToString.Include
    private Integer chaves = 0;

    @ToString.Include
    private Integer vidas = 3;
}