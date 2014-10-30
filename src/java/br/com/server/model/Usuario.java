
package br.com.server.model;

import java.util.List;
import javax.persistence.*;

@Entity
@Table(name="usuario", schema = "sistemafinanceiro")
public class Usuario {
    @Id
    @Basic(optional= false)
    @SequenceGenerator(name="seq_usuario", sequenceName="sistemafinanceiro.seq_usuario", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "seq_usuario")
    @Column(name = "id")
    private Integer id;
    
    @Column(name = "nome")
    private String nome;
    
    @Column(name = "login")
    private String login;
        
    @Column(name = "senha")
    private String senha;
    
    @Column(name = "email")
    private String email;
    
    @OneToMany(mappedBy = "usuario")
    private List<Conta> lstConta;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return the usuario
     */
    public String getLogin() {
        return login;
    }

    /**
     * @param usuario the usuario to set
     */
    public void setLogin(String login) {
        this.login = login;
    }

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the senha
     */
    public String getSenha() {
        return senha;
    }

    /**
     * @param senha the senha to set
     */
    public void setSenha(String senha) {
        this.senha = senha;
    }

}
