
package br.com.server.dao;

import br.com.server.Conexao;
import br.com.server.model.Categoria;
import br.com.server.model.Conta;
import br.com.server.model.Despesa;
import br.com.server.model.Usuario;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;


public class DespesaDAO {

    public void Salvar(Despesa despesa) {

        try {
            
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            s.save(despesa);//salva os dados

            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão
            
        } catch (Exception erro) {
            erro.printStackTrace();
        }
    }

    public Despesa Consultar(int idDespesa) {

        Despesa despesa = new Despesa();
        try {
            //inicia a conexão com o banco
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria na classe
            Criteria c = s.createCriteria(Despesa.class);
            
            //verifica no banco se existe registro com o id igual ao que veio no parametro
            c.add(Restrictions.eq("id", idDespesa));
            List<Despesa> lista = (List<Despesa>)c.list();// cria a lista com os resultados

            if (c.uniqueResult() != null) {//se a lista não estiver em branco é pq encontrou o id no banco
                //e retorna o objeto                                                 
                despesa = lista.get(0);                
            } 
            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
           erro.printStackTrace();
        }
        return despesa;
    }

    public void Editar(Despesa despesa) {

        try {
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria
            Criteria c = s.createCriteria(Despesa.class);
            
            //verifica se realmente existe o registro com o codigo que veio no objeto
            c.add(Restrictions.eq("id", despesa.getId()));
            
            if (c.uniqueResult() != null) {//se o Criteria encontrar um regitro apenas ele entra no if
                
                //apenas para facilitar o entendimento criamos as variáveis
                //para receber os dados que vieram através do objeto
                int id = despesa.getId();
                String descricao = despesa.getDescricao();
                String data = String.valueOf(despesa.getData());
                Double valor = despesa.getValor();
                boolean efetuada = despesa.isEfetuada();
                Categoria categoria = despesa.getCategoria();
                Conta conta = despesa.getConta();
                
                //comando do Hibernate para inclusão de linhas SQLs comuns, neste caso o update
                //temos que inserir a Classe que se refere e executar o comando ao final
                s.createSQLQuery("update despesa set descricao='"+descricao+"', "
                        + "data='"+data+"',valor='"+valor+
                        "',efetuada='"+efetuada+"',categoria='"+categoria+"',conta='"+conta+
                        " where id="+id).addEntity(Despesa.class).executeUpdate();
            } 
            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
            erro.printStackTrace();
        }
    }

    public void Excluir(int idDespesa) {

        try {

            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria
            Criteria c = s.createCriteria(Despesa.class);
            
            //Criteria para ver se realmente existe o registro com o codigo no banco
            c.add(Restrictions.eq("id", idDespesa));
            List lista = c.list();//gera a lista com os registros encontrados

            if (!lista.isEmpty()) {//se a lista não estiver em branco ele entra no if
                
                //comando do Hibernate para usar SQLs comuns
                //neste caso o delete
                //no final temos que colocar a classe que se refere e o comando para executar a SQL
                s.createSQLQuery("delete from despesa "
                        + "where id="+idDespesa).addEntity(Despesa.class).executeUpdate();
              
            } 
            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
            erro.printStackTrace();
        }
    }
    
    
    
    
    
}
