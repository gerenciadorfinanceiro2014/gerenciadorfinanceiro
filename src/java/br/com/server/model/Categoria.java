
package br.com.server.model;

import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="categoria", schema = "sistemafinanceiro")
public class Categoria {
    @Id
    @Basic(optional= false)
    @SequenceGenerator(name="seq_categoria", sequenceName="sistemafinanceiro.seq_categoria", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "seq_categoria")
    @Column(name = "id")
    private Integer id;

    @Column(name = "descricao")
    private String descricao;
    
    @OneToMany(mappedBy = "categoria")
    private List<DespesaCartao> lstDespesaCartao;
    
    @OneToMany(mappedBy = "categoria")
    private List<Receita> lstReceita;
    
    @OneToMany(mappedBy = "categoria")
    private List<Despesa> lstDespesa;

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
     * @return the lstDespesaCartao
     */
    public List<DespesaCartao> getLstDespesaCartao() {
        return lstDespesaCartao;
    }

    /**
     * @param lstDespesaCartao the lstDespesaCartao to set
     */
    public void setLstDespesaCartao(List<DespesaCartao> lstDespesaCartao) {
        this.lstDespesaCartao = lstDespesaCartao;
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

}
