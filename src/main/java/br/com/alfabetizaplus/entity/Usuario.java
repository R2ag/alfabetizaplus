package br.com.alfabetizaplus.entity;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.*;
import java.time.OffsetDateTime;

@Entity
@Table(name = "usuario")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString(onlyExplicitlyIncluded = true)
public class Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_usuario")
    @ToString.Include
    private Long id;

    @Column(nullable = false, length = 100)
    @ToString.Include
    private String nome;

    @Column(nullable = false, unique = true, length = 150)
    @ToString.Include
    private String email;

    @Column(name = "google_uid", unique = true, nullable = false, length = 255)
    @ToString.Include
    private String googleUid;

    @Column(name = "data_criacao")
    private OffsetDateTime dataCriacao = OffsetDateTime.now();

    @OneToOne(mappedBy = "usuario", cascade = CascadeType.ALL)
    @JsonManagedReference
    @ToString.Exclude
    private Gamificacao gamificacao;
}