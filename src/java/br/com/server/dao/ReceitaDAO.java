
package br.com.server.dao;

import br.com.server.Conexao;
import br.com.server.model.Categoria;
import br.com.server.model.Conta;
import br.com.server.model.Receita;
import br.com.server.model.Usuario;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

public class ReceitaDAO {

    public void Salvar(Receita receita) {

        try {
            
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            s.save(receita);//salva os dados
            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão
            
            if(receita.isEfetuada() == 1)
                atualizarSaldo(receita, 1);
            
        } catch (Exception erro) {
            erro.printStackTrace();
        }
    }

    public Receita Consultar(int idReceita) {

        Receita receita = new Receita();
        try {
            //inicia a conexão com o banco
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria na classe
            Criteria c = s.createCriteria(Receita.class);
            
            //verifica no banco se existe registro com o id igual ao que veio no parametro
            c.add(Restrictions.eq("id", idReceita));
            List<Receita> lista = (List<Receita>)c.list();// cria a lista com os resultados

            if (c.uniqueResult() != null) {//se a lista não estiver em branco é pq encontrou o id no banco
                //e retorna o objeto                                                 
                receita = lista.get(0);                
            } 
            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
           erro.printStackTrace();
        }
        return receita;
    }

    public int ConsultarNumUnico() {

         int numeromax;
        try {
            //inicia a conexão com o banco
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria na classe
            Criteria c = s.createCriteria(Receita.class).setProjection(Projections.projectionList().add(Projections.max("num_unico")));
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
    
    public void Editar(Receita receita) {

        try {
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria
            Criteria c = s.createCriteria(Receita.class);
            
            //verifica se realmente existe o registro com o codigo que veio no objeto
            c.add(Restrictions.eq("id", receita.getId()));
            
            if (c.uniqueResult() != null) {//se o Criteria encontrar um regitro apenas ele entra no if
                
                //apenas para facilitar o entendimento criamos as variáveis
                //para receber os dados que vieram através do objeto
                int id = receita.getId();
                String descricao = receita.getDescricao();
                String data = String.valueOf(receita.getData());
                Double valor = receita.getValor();
                int efetuada = receita.isEfetuada();
                Categoria categoria = receita.getCategoria();
                Conta conta = receita.getConta();
                
                
                System.out.println("update receita set descricao='"+descricao+"', "
                        + "data='"+data+"',valor='"+valor+
                        "',efetuada='"+efetuada+"',categoria="+categoria.getId()+",conta="+conta.getId()+
                        " where id="+id);
                //comando do Hibernate para inclusão de linhas SQLs comuns, neste caso o update
                //temos que inserir a Classe que se refere e executar o comando ao final
                s.createSQLQuery("update receita set descricao='"+descricao+"', "
                        + "data='"+data+"',valor='"+valor+
                        "',efetuada='"+efetuada+"',categoria="+categoria.getId()+",conta="+conta.getId()+
                        " where id="+id).addEntity(Receita.class).executeUpdate();
            } 
            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
            erro.printStackTrace();
        }
    }
    // Operação 1 - Adiciona / 0 - Subtrai valor atual da conta.
    public void atualizarSaldo(Receita receita, int operacao){
        Conta conta = receita.getConta();
        if(operacao == 1)
            conta.setValor_atual(conta.getValor_atual() + receita.getValor());
        else
            conta.setValor_atual(conta.getValor_atual() - receita.getValor());
        
        ContaDAO cDAO = new ContaDAO();
        cDAO.atualizaValor(conta);
        
    }

    public void Excluir(int idReceita) {

        try {

            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria
            Criteria c = s.createCriteria(Receita.class);
            
            //Criteria para ver se realmente existe o registro com o codigo no banco
            c.add(Restrictions.eq("id", idReceita));
            List lista = c.list();//gera a lista com os registros encontrados

            if (!lista.isEmpty()) {//se a lista não estiver em branco ele entra no if
                
                //comando do Hibernate para usar SQLs comuns
                //neste caso o delete
                //no final temos que colocar a classe que se refere e o comando para executar a SQL
                Receita receita = (Receita) lista.get(0);
                if(receita.isEfetuada() == 1)
                    atualizarSaldo(receita, 0);
                
                s.createSQLQuery("delete from receita "
                        + "where id="+idReceita).addEntity(Receita.class).executeUpdate();
              
            } 
            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
            erro.printStackTrace();
        }
    }
    
    public ArrayList<Receita> ConsultarTodos(int idUsuario, int mes, int ano) {

        ArrayList<Receita> lista = new ArrayList<Receita>();
        try {
            //inicia a conexão com o banco
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria na classe
            Criteria cConta = s.createCriteria(Conta.class);
            cConta.add(Restrictions.sqlRestriction("usuario = " + idUsuario));
            ArrayList<Conta> lstConta = (ArrayList<Conta>)cConta.list();
            
            
            
            ArrayList<Receita> receita = new ArrayList<Receita>();
            for(int controle = 0; controle < lstConta.size(); controle++){
                Criteria c = s.createCriteria(Receita.class);
                c.add(Restrictions.sqlRestriction("Month(data) = " + mes));
                c.add(Restrictions.sqlRestriction("year(data) = " + ano));
                c.add(Restrictions.sqlRestriction("conta = " + lstConta.get(controle).getId()));
                receita = (ArrayList<Receita>)c.list();
                if(receita != null){
                    for(int idx = 0;idx < receita.size();idx++){
                        lista.add(receita.get(idx));// cria a lista com os resultados
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
