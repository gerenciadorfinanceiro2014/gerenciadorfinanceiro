
package br.com.server.model;

import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="receita", schema = "sistemafinanceiro")
public class Receita {
    @Id
    @Basic(optional= false)
    @SequenceGenerator(name="seq_receita", sequenceName="sistemafinanceiro.seq_receita", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "seq_receita")
    @Column(name = "id")
    private Integer id;
    
    @Column(name = "descricao")
    private String descricao;
    
    @Column(name = "data")
    private Date data;
    
    @Column(name = "valor")
    private double valor;
    
    @Column(name = "efetuada")
    private boolean efetuada;

    @ManyToOne
    @JoinColumn(name = "categoria")
    private Categoria categoria;
    
    @ManyToOne
    @JoinColumn(name = "conta")
    private Conta conta;

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
     * @return the data
     */
    public Date getData() {
        return data;
    }

    /**
     * @param data the data to set
     */
    public void setData(Date data) {
        this.data = data;
    }

    /**
     * @return the valor
     */
    public double getValor() {
        return valor;
    }

    /**
     * @param valor the valor to set
     */
    public void setValor(double valor) {
        this.valor = valor;
    }

    /**
     * @return the efetuada
     */
    public boolean isEfetuada() {
        return efetuada;
    }

    /**
     * @param efetuada the efetuada to set
     */
    public void setEfetuada(boolean efetuada) {
        this.efetuada = efetuada;
    }

    /**
     * @return the categoria
     */
    public Categoria getCategoria() {
        return categoria;
    }

    /**
     * @param categoria the categoria to set
     */
    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    /**
     * @return the conta
     */
    public Conta getConta() {
        return conta;
    }

    /**
     * @param conta the conta to set
     */
    public void setConta(Conta conta) {
        this.conta = conta;
    }

    
}
