
package br.com.server.dao;

import br.com.server.Conexao;
import br.com.server.model.Categoria;
import br.com.server.model.Conta;
import br.com.server.model.Despesa;
import br.com.server.model.Receita;
import br.com.server.model.Usuario;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Projections;
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

    
    public void atualizarSaldo(Despesa despesa, int operacao){
        Conta conta = despesa.getConta();
        if(operacao == 1)
            conta.setValor_atual(conta.getValor_atual() + despesa.getValor());
        else
            conta.setValor_atual(conta.getValor_atual() - despesa.getValor());
        
        ContaDAO cDAO = new ContaDAO();
        cDAO.atualizaValor(conta);
        
    }
    
     public int ConsultarNumUnico() {

         int numeromax;
        try {
            //inicia a conexão com o banco
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria na classe
            Criteria c = s.createCriteria(Despesa.class).setProjection(Projections.projectionList().add(Projections.max("num_unico")));
            if(c.uniqueResult() != null)
                numeromax = (Integer)c.uniqueResult();
            else
                numeromax = 0;
            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão
            
            return numeromax + 1;

        } catch (Exception erro) {
           erro.printStackTrace();
           return 0;
        }
        
    }
    
    public void Editar(Despesa despesa) {

        try {
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            s.update(despesa);
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
    
    public ArrayList<Despesa> ConsultarTodos(int idUsuario, int mes, int ano) {

        ArrayList<Despesa> lista = new ArrayList<Despesa>();
        try {
            //inicia a conexão com o banco
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria na classe
            Criteria cConta = s.createCriteria(Conta.class);
            cConta.add(Restrictions.sqlRestriction("usuario = " + idUsuario));
            ArrayList<Conta> lstConta = (ArrayList<Conta>)cConta.list();
            
            
            
            ArrayList<Despesa> despesa = new ArrayList<Despesa>();
            for(int controle = 0; controle < lstConta.size(); controle++){
                Criteria c = s.createCriteria(Despesa.class);
                c.add(Restrictions.sqlRestriction("Month(data) = " + mes));
                c.add(Restrictions.sqlRestriction("year(data) = " + ano));
                c.add(Restrictions.sqlRestriction("conta = " + lstConta.get(controle).getId()));
                despesa = (ArrayList<Despesa>)c.list();
                if(despesa != null){
                    for(int idx = 0;idx < despesa.size();idx++){
                        lista.add(despesa.get(idx));// cria a lista com os resultados
                    }
                }
            }
                
            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
           erro.printStackTrace();
        }
        return lista;
    }
    
    
    
}
