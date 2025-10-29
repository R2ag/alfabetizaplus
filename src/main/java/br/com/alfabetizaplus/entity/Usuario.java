package br.com.alfabetizaplus.entity;
import jakarta.persistence.*;
import lombok.*;
import java.time.OffsetDateTime;

@Entity
@Table(name = "usuario")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_usuario")
    private Long id;

    @Column(unique = true)
    private String firebaseUid;

    @Column(nullable = false, length = 100)
    private String nome;

    @Column(nullable = false, unique = true, length = 150)
    private String email;

    @Column(name = "google_uid", unique = true, length = 255)
    private String googleUid;

    @Column(name = "data_criacao")
    private OffsetDateTime dataCriacao = OffsetDateTime.now();

    @OneToOne(mappedBy = "usuario", cascade = CascadeType.ALL)
    private Gamificacao gamificacao;
}