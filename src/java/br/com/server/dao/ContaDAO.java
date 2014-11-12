

package br.com.server.dao;

import br.com.server.Conexao;
import br.com.server.model.Conta;
import br.com.server.model.Usuario;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;


public class ContaDAO {
    
     public void Salvar(Conta conta) {

        try {
            
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            s.save(conta);//salva os dados

            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão
            
        } catch (Exception erro) {
            erro.printStackTrace();
        }
    }

    public Conta Consultar(int idConta) {

        Conta categoria = new Conta();
        try {
            //inicia a conexão com o banco
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria na classe
            Criteria c = s.createCriteria(Conta.class);
            
            //verifica no banco se existe registro com o id igual ao que veio no parametro
            c.add(Restrictions.eq("id", idConta));
            List<Conta> lista = (List<Conta>)c.list();// cria a lista com os resultados

            if (c.uniqueResult() != null) {//se a lista não estiver em branco é pq encontrou o id no banco
                //e retorna o objeto                                                 
                categoria = lista.get(0);                
            } 
            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
           erro.printStackTrace();
        }
        return categoria;
    }
    
    public ArrayList<Conta> ConsultarTodos(int idUsuario) {

        ArrayList<Conta> lista = new ArrayList<Conta>();
        try {
            //inicia a conexão com o banco
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria na classe
            Criteria c = s.createCriteria(Conta.class);
            
            //verifica no banco se existe registro com o id igual ao que veio no parametro
            UsuarioDAO uDAO = new UsuarioDAO();
            Usuario user = new Usuario();
            user = uDAO.Consultar(idUsuario);
            c.add(Restrictions.eq("usuario", user));
            lista = (ArrayList<Conta>)c.list();// cria a lista com os resultados

            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
           erro.printStackTrace();
        }
        return lista;
    }
    
    public ArrayList<Conta> ConsultarTodos(int idUsuario, int mes, int ano) {

        ArrayList<Conta> lista = new ArrayList<Conta>();
        try {
            //inicia a conexão com o banco
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria na classe
            Criteria c = s.createCriteria(Conta.class);
            
            //verifica no banco se existe registro com o id igual ao que veio no parametro
            UsuarioDAO uDAO = new UsuarioDAO();
            Usuario user = new Usuario();
            user = uDAO.Consultar(idUsuario);
            c.add(Restrictions.eq("usuario", user));
            c.add(Restrictions.sqlRestriction("Month(data_criacao) = " + mes));
            c.add(Restrictions.sqlRestriction("year(data_criacao) = " + ano));
            lista = (ArrayList<Conta>)c.list();// cria a lista com os resultados

            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
           erro.printStackTrace();
        }
        return lista;
    }

    public void Editar(Conta conta) {

        try {
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria
            Criteria c = s.createCriteria(Conta.class);
            
            //verifica se realmente existe o registro com o codigo que veio no objeto
            c.add(Restrictions.eq("id", conta.getId()));
            
            if (c.uniqueResult() != null) {//se o Criteria encontrar um regitro apenas ele entra no if
                
                //apenas para facilitar o entendimento criamos as variáveis
                //para receber os dados que vieram através do objeto
                int id = conta.getId();
                String descricao = conta.getDescricao();
                Double valor_inicial = conta.getValor_inicial();
                Double valor_atual = conta.getValor_atual();
                String data_criacao = String.valueOf(conta.getData_criacao());
                int cancelado = conta.isCancelado();
                
                //comando do Hibernate para inclusão de linhas SQLs comuns, neste caso o update
                //temos que inserir a Classe que se refere e executar o comando ao final
                s.createSQLQuery("update conta set descricao='"+descricao+"', "
                        + "valor_inicial="+valor_inicial+" where id="+id).addEntity(Conta.class).executeUpdate();
                
            } 
            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
            erro.printStackTrace();
        }
    }

    public void atualizaValor(Conta conta){
        Session s = Conexao.openSession(Conexao.openConnection());
        s.beginTransaction();
        s.createSQLQuery("update conta set valor_atual="+conta.getValor_atual()+" where id="+conta.getId()).addEntity(Conta.class).executeUpdate();
        s.getTransaction().commit();//executa a transação
        s.close();//fecha a conexão
    }
    
    public void Transferencia(Conta contaOrig, Conta contaDest, double valor) {

        try {
            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
                
                //apenas para facilitar o entendimento criamos as variáveis
                //para receber os dados que vieram através do objeto
                int idOrigem = contaOrig.getId();
                Double valor_atualOrig = contaOrig.getValor_atual() - valor;
                
                int idDest = contaDest.getId();
                Double valor_atualDest = contaDest.getValor_atual() + valor;
                
                //comando do Hibernate para inclusão de linhas SQLs comuns, neste caso o update
                //temos que inserir a Classe que se refere e executar o comando ao final
                s.createSQLQuery("update conta set valor_atual='"+valor_atualOrig+
                        "' where id="+idOrigem).addEntity(Conta.class).executeUpdate();
                
                s.createSQLQuery("update conta set valor_atual='"+valor_atualDest+
                        "' where id="+idDest).addEntity(Conta.class).executeUpdate();
            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
            erro.printStackTrace();
        }
    }
    
    
    public void Excluir(int idConta) {

        try {

            Session s = Conexao.openSession(Conexao.openConnection());
            s.beginTransaction();
            
            //cria o Criteria
            Criteria c = s.createCriteria(Conta.class);
            
            //Criteria para ver se realmente existe o registro com o codigo no banco
            c.add(Restrictions.eq("id", idConta));
            List lista = c.list();//gera a lista com os registros encontrados

            if (!lista.isEmpty()) {//se a lista não estiver em branco ele entra no if
                
                //comando do Hibernate para usar SQLs comuns
                //neste caso o delete
                //no final temos que colocar a classe que se refere e o comando para executar a SQL
                s.createSQLQuery("delete from conta "
                        + "where id="+idConta).addEntity(Conta.class).executeUpdate();
              
            } 
            s.getTransaction().commit();//executa a transação
            s.close();//fecha a conexão

        } catch (Exception erro) {
            erro.printStackTrace();
        }
    }
}
