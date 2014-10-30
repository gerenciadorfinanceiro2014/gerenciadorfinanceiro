
package br.com.server.model;

import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="cartao", schema = "sistemafinanceiro")
public class Cartao {
    @Id
    @Basic(optional= false)
    @SequenceGenerator(name="seq_cartao", sequenceName="sistemafinanceiro.seq_cartao", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "seq_cartao")
    @Column(name = "id")
    private Integer id;

    @Column(name = "descricao")
    private String descricao;
    
    @Column(name = "dia_fechamento")
    private int dia_fechamento;
    
    @Column(name = "dia_pagamento")
    private int dia_pagamento;
        
    @Column(name = "limite")
    private double limite;
    
    @ManyToOne
    @JoinColumn(name = "tipocartao")
    private TipoCartao tipocartao;
    
    @OneToMany(mappedBy = "cartao")
    private List<DespesaCartao> lstDespesaCartao;

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
     * @return the dia_fechamento
     */
    public int getDia_fechamento() {
        return dia_fechamento;
    }

    /**
     * @param dia_fechamento the dia_fechamento to set
     */
    public void setDia_fechamento(int dia_fechamento) {
        this.dia_fechamento = dia_fechamento;
    }

    /**
     * @return the dia_pagamento
     */
    public int getDia_pagamento() {
        return dia_pagamento;
    }

    /**
     * @param dia_pagamento the dia_pagamento to set
     */
    public void setDia_pagamento(int dia_pagamento) {
        this.dia_pagamento = dia_pagamento;
    }

    /**
     * @return the limite
     */
    public double getLimite() {
        return limite;
    }

    /**
     * @param limite the limite to set
     */
    public void setLimite(double limite) {
        this.limite = limite;
    }

    /**
     * @return the tipocartao
     */
    public TipoCartao getTipocartao() {
        return tipocartao;
    }

    /**
     * @param tipocartao the tipocartao to set
     */
    public void setTipocartao(TipoCartao tipocartao) {
        this.tipocartao = tipocartao;
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
    
    
}
