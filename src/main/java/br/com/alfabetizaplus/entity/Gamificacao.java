package br.com.alfabetizaplus.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "gamificacao")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Gamificacao {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_gamificacao")
    private Long id;

    @OneToOne
    @JoinColumn(name = "id_usuario", nullable = false, unique = true)
    private Usuario usuario;

    private Integer moedas = 0;
    private Integer chaves = 0;
    private Integer vidas = 3;
}