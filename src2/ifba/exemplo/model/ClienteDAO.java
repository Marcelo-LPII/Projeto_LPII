package ifba.exemplo.model;

import java.util.List;
import javax.persistence.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;

import ifba.exemplo.util.Hibernate;


public class ClienteDAO {

	
	public void cadastrar(Cliente cliente) {
		Session s = Hibernate.getSessionFactory().openSession();
		s.beginTransaction();
		s.save(cliente);
		s.getTransaction().commit();
		s.close();
	}	
	public void excluir(Cliente cliente) {
		Session s = Hibernate.getSessionFactory().openSession();
		s.beginTransaction();
		s.delete(cliente);
		s.getTransaction().commit();
		s.close();
	}
	
	public void excluir(int cpf) {
		Cliente cliente = consultar(cpf);
		if( cliente != null )
			excluir(cliente);
	}
	
	public void alterar(Cliente cliente) {
		System.out.println(cliente.toString());
		Session s = Hibernate.getSessionFactory().openSession();
		s.beginTransaction();
		s.update(cliente);
		s.getTransaction().commit();
		s.close();
	}
	
	public Cliente consultar(int cpf) {
		Session s = Hibernate.getSessionFactory().openSession();
		
										//no select, mudar a tabela e a coluna para a que ele pediu / vc criou.
		
		
		SQLQuery query = s.createSQLQuery("select * from cliente where cpf_cliente = :cpf");
		query.addEntity(Cliente.class);
		
								//mudar a coluna aqui tbm.
		
		query.setParameter("cpf", cpf);
		Cliente cliente = (Cliente) query.uniqueResult();
		s.close();
		return cliente;
	}

	public List<Cliente> getConsultar() {
		Session s = Hibernate.getSessionFactory().openSession();
		
								//no select, mudar a tabela para a que ele pediu / vc criou.
		
		
		SQLQuery query = s.createSQLQuery("select * from cliente");
		query.addEntity(Cliente.class);
		List<Cliente> lista = query.list();
		s.close();
		return lista;
	}
}
