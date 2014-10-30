
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
@Table(name="tipocartao", schema = "sistemafinanceiro")
public class TipoCartao {
    @Id
    @Basic(optional= false)
    @SequenceGenerator(name="seq_tipocartao", sequenceName="sistemafinanceiro.seq_tipocartao", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "seq_tipocartao")
    @Column(name = "id")
    private Integer id;

    @Column(name = "descricao")
    private String descricao;

    @OneToMany(mappedBy = "tipocartao")
    private List<Cartao> lstCartao;

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
     * @return the lstCartao
     */
    public List<Cartao> getLstCartao() {
        return lstCartao;
    }

    /**
     * @param lstCartao the lstCartao to set
     */
    public void setLstCartao(List<Cartao> lstCartao) {
        this.lstCartao = lstCartao;
    }
}
