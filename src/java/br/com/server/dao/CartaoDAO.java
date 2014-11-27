
package br.com.server.dao;

import br.com.server.Conexao;
import br.com.server.model.Cartao;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

public class CartaoDAO {
    
     public void Salvar(Cartao cartao) {

        try {
            
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            s.save(cartao);//salva os dados

            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão
            
        } catch (Exception erro) {
            erro.printStackTrace();
        }
    }

    public Cartao Consultar(int idCartao) {

        Cartao cartao = new Cartao();
        try {
            //inicia a conexão com o banco
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria na classe
            Criteria c = s.createCriteria(Cartao.class);
            
            //verifica no banco se existe registro com o id igual ao que veio no parametro
            c.add(Restrictions.eq("id", idCartao));
            List<Cartao> lista = (List<Cartao>)c.list();// cria a lista com os resultados

            if (c.uniqueResult() != null) {//se a lista não estiver em branco é pq encontrou o id no banco
                //e retorna o objeto                                                 
                cartao = lista.get(0);                
            } 
            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
           erro.printStackTrace();
        }
        return cartao;
    }
    
    public ArrayList<Cartao> ConsultarTodos() {

        ArrayList<Cartao> lista = new ArrayList<Cartao>();
        try {
            //inicia a conexão com o banco
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria na classe
            Criteria c = s.createCriteria(Cartao.class);
         
            lista = (ArrayList<Cartao>)c.list();// cria a lista com os resultados

            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
           erro.printStackTrace();
        }
        return lista;
    }

    public void Editar(Cartao cartao) {

        try {
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            s.update(cartao);
            
            /*//cria o Criteria
            Criteria c = s.createCriteria(Cartao.class);
            
            //verifica se realmente existe o registro com o codigo que veio no objeto
            c.add(Restrictions.eq("id", cartao.getId()));
            
            if (c.uniqueResult() != null) {//se o Criteria encontrar um regitro apenas ele entra no if             
                
                //apenas para facilitar o entendimento criamos as variáveis
                //para receber os dados que vieram através do objeto
                int id = cartao.getId();
                String descricao = cartao.getDescricao();
                int dia_fechamento = cartao.getDia_fechamento();
                int dia_pagamento = cartao.getDia_pagamento();
                Double limite = cartao.getLimite();
                TipoCartao tipocartao = cartao.getTipocartao();
                
                //comando do Hibernate para inclusão de linhas SQLs comuns, neste caso o update
                //temos que inserir a Classe que se refere e executar o comando ao final
                s.createSQLQuery("update sistemafinanceiro.cartao set descricao='"+descricao+"', dia_fechamento="+dia_fechamento+","
                        + " dia_pagamento="+dia_pagamento+", limite="+limite+", tipocartao="+tipocartao+" "
                        + "where id="+id+";").addEntity(Cartao.class).executeUpdate();
            } */
            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
            erro.printStackTrace();
        }
    }

    public void Excluir(int idCartao) {

        try {

            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria
            Criteria c = s.createCriteria(Cartao.class);
            
            //Criteria para ver se realmente existe o registro com o codigo no banco
            c.add(Restrictions.eq("id", idCartao));
            List lista = c.list();//gera a lista com os registros encontrados

            if (!lista.isEmpty()) {//se a lista não estiver em branco ele entra no if
                
                //comando do Hibernate para usar SQLs comuns
                //neste caso o delete
                //no final temos que colocar a classe que se refere e o comando para executar a SQL
                s.createSQLQuery("delete from cartao "
                        + "where id="+idCartao).addEntity(Cartao.class).executeUpdate();
              
            } 
            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
            erro.printStackTrace();
        }
    }
}
