
package br.com.server.model;

import java.util.Date;
import java.util.List;
import javax.persistence.*;

@Entity
@Table(name="conta", schema = "sistemafinanceiro")
public class Conta {
    @Id
    @Basic(optional= false)
    @SequenceGenerator(name="seq_conta", sequenceName="sistemafinanceiro.seq_conta", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "seq_conta")
    @Column(name = "id")
    private Integer id;
        
    @Column(name = "descricao")
    private String descricao;
         
    @Column(name = "valor_inicial")
    private double valor_inicial;

    @Column(name = "valor_atual")
    private double valor_atual;
        
    
    @Column(name = "data_criacao")
    @Temporal(TemporalType.DATE)
    private Date data_criacao;
    
    @Column(name = "cancelado")
    private int cancelado;
    
    @OneToMany(mappedBy = "conta")
    private List<Receita> lstReceita;
    
    @OneToMany(mappedBy = "conta")
    private List<Despesa> lstDespesa;
    
    @ManyToOne
    @JoinColumn(name = "usuario")
    private Usuario usuario;

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
     * @return the descricao
     */
    public String getDescricao() {
        return descricao;
    }

    /**
     * @param descricao the descricao to set
     */
    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    /**
     * @return the valor_inicial
     */
    public double getValor_inicial() {
        return valor_inicial;
    }

    /**
     * @param valor_inicial the valor_inicial to set
     */
    public void setValor_inicial(double valor_inicial) {
        this.valor_inicial = valor_inicial;
    }

    /**
     * @return the valor_atual
     */
    public double getValor_atual() {
        return valor_atual;
    }

    /**
     * @param valor_atual the valor_atual to set
     */
    public void setValor_atual(double valor_atual) {
        this.valor_atual = valor_atual;
    }

    /**
     * @return the data_criacao
     */
    public Date getData_criacao() {
        return data_criacao;
    }

    /**
     * @param data_criacao the data_criacao to set
     */
    public void setData_criacao(Date data_criacao) {
        this.data_criacao = data_criacao;
    }

    /**
     * @return the cancelado
     */
    public int isCancelado() {
        return cancelado;
    }

    /**
     * @param cancelado the cancelado to set
     */
    public void setCancelado(int cancelado) {
        this.cancelado = cancelado;
    }

    /**
     * @return the lstReceita
     */
    public List<Receita> getLstReceita() {
        return lstReceita;
    }

    /**
     * @param lstReceita the lstReceita to set
     */
    public void setLstReceita(List<Receita> lstReceita) {
        this.lstReceita = lstReceita;
    }

    /**
     * @return the lstDespesa
     */
    public List<Despesa> getLstDespesa() {
        return lstDespesa;
    }

    /**
     * @param lstDespesa the lstDespesa to set
     */
    public void setLstDespesa(List<Despesa> lstDespesa) {
        this.lstDespesa = lstDespesa;
    }

    public Usuario getIdUsuario() {
        return usuario;
    }

    public void setIdUsuario(Usuario idUsuario) {
        this.usuario = idUsuario;
    }
    
}
