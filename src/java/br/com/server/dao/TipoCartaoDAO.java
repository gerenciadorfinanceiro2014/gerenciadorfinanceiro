
package br.com.server.dao;

import br.com.server.Conexao;
import br.com.server.model.TipoCartao;
import br.com.server.model.Usuario;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

public class TipoCartaoDAO {

    public void Salvar(TipoCartao tipocartao) {

        try {
            
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            s.save(tipocartao);//salva os dados

            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão
            
        } catch (Exception erro) {
            erro.printStackTrace();
        }
    }

    public TipoCartao Consultar(int idTipoCartao) {

        TipoCartao tipoCartao = new TipoCartao();
        try {
            //inicia a conexão com o banco
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria na classe
            Criteria c = s.createCriteria(TipoCartao.class);
            
            //verifica no banco se existe registro com o id igual ao que veio no parametro
            c.add(Restrictions.eq("id", idTipoCartao));
            List<TipoCartao> lista = (List<TipoCartao>)c.list();// cria a lista com os resultados

            if (c.uniqueResult() != null) {//se a lista não estiver em branco é pq encontrou o id no banco
                //e retorna o objeto                                                 
                tipoCartao = lista.get(0);                
            } 
            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
           erro.printStackTrace();
        }
        return tipoCartao;
    }
    
    public ArrayList<TipoCartao> ConsultarTodos() {

        ArrayList<TipoCartao> lista = new ArrayList<TipoCartao>();
        try {
            //inicia a conexão com o banco
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria na classe
            Criteria c = s.createCriteria(TipoCartao.class);

            lista = (ArrayList<TipoCartao>)c.list();// cria a lista com os resultados

            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
           erro.printStackTrace();
        }
        return lista;
    }

    public void Editar(TipoCartao tipoCartao) {

        try {
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria
            Criteria c = s.createCriteria(TipoCartao.class);
            
            //verifica se realmente existe o registro com o codigo que veio no objeto
            c.add(Restrictions.eq("id", tipoCartao.getId()));
            
            if (c.uniqueResult() != null) {//se o Criteria encontrar um regitro apenas ele entra no if
                
                //apenas para facilitar o entendimento criamos as variáveis
                //para receber os dados que vieram através do objeto
                int id = tipoCartao.getId();
                String descricao = tipoCartao.getDescricao();
                
                //comando do Hibernate para inclusão de linhas SQLs comuns, neste caso o update
                //temos que inserir a Classe que se refere e executar o comando ao final
                s.createSQLQuery("update tipocartao set descricao='"+descricao+"', "+
                        " where id="+id).addEntity(TipoCartao.class).executeUpdate();
            } 
            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
            erro.printStackTrace();
        }
    }

    public void Excluir(int idTipoCartao) {

        try {

            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria
            Criteria c = s.createCriteria(TipoCartao.class);
            
            //Criteria para ver se realmente existe o registro com o codigo no banco
            c.add(Restrictions.eq("id", idTipoCartao));
            List lista = c.list();//gera a lista com os registros encontrados

            if (!lista.isEmpty()) {//se a lista não estiver em branco ele entra no if
                
                //comando do Hibernate para usar SQLs comuns
                //neste caso o delete
                //no final temos que colocar a classe que se refere e o comando para executar a SQL
                s.createSQLQuery("delete from tipocartao "
                        + "where id="+idTipoCartao).addEntity(TipoCartao.class).executeUpdate();
              
            } 
            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
            erro.printStackTrace();
        }
    }
}
