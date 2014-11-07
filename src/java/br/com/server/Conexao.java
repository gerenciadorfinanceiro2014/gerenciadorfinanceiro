
package br.com.server;

import br.com.server.model.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;
import java.util.logging.Logger;
import org.hibernate.Session;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.tool.hbm2ddl.SchemaUpdate;

public class Conexao {
    //classe para gerar o banco de dados
    private static AnnotationConfiguration cfg;
    private static org.hibernate.SessionFactory sessionFactory;  
    
    
    public static void main(String[] args) {
        initiate();
    }

    public static void initiate() {
        if (cfg == null) {
            try {
                cfg = new AnnotationConfiguration();
                cfg.setProperty("hibernate.transaction.factory_class", "org.hibernate.transaction.JDBCTransactionFactory");
                cfg.setProperty("hibernate.current_session_context_class", "thread");
                cfg.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
                String driver = "com.mysql.jdbc.Driver";
                cfg.setProperty("hibernate.connection.driver_class", driver);
                //banco local
                cfg.setProperty("hibernate.connection.url", "jdbc:mysql://localhost/sistemafinanceiro");
                //banco remoto
                //cfg.setProperty("hibernate.connection.url", "jdbc:mysql://192.168.0.191/projetoheitorrpc");
                cfg.setProperty("hibernate.connection.username", "root");
                cfg.setProperty("hibernate.connection.password", "root");
                cfg.setProperty("hibernate.hbm2dll.auto", "validate");               

                cfg.addAnnotatedClass(Cartao.class);
                cfg.addAnnotatedClass(Categoria.class);
                cfg.addAnnotatedClass(Conta.class);
                cfg.addAnnotatedClass(Despesa.class);
                cfg.addAnnotatedClass(DespesaCartao.class);
                cfg.addAnnotatedClass(Receita.class);
                cfg.addAnnotatedClass(TipoCartao.class);
                cfg.addAnnotatedClass(Usuario.class);
                
                sessionFactory = cfg.buildSessionFactory();
                updateDatabase();
            } catch (Exception ex) {
                cfg = null;
                throw new RuntimeException(ex);
            }
        }
    }
    
    public static Session openSession(Connection connection) {
        if (sessionFactory == null) {
            Logger.getLogger(Conexao.class.getName()).info("Iniciando Conexão!");
            initiate();
        }
        Session session = sessionFactory.openSession();
        return session;
    }
    
    public static Connection openConnection() {
        Connection connection;
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            //banco local
            connection = DriverManager.getConnection("jdbc:mysql://localhost/sistemafinanceiro", "root","root");
            //banco remoto
            //connection = DriverManager.getConnection("jdbc:mysql://192.168.0.191/projetoheitorrpc", "root","1234");
            return connection;            
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }
    
    private static void updateDatabase() {
        new SchemaUpdate(cfg).execute(true, true);
    }    
}
