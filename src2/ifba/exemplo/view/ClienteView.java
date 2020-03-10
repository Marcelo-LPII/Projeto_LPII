package ifba.exemplo.view;

import java.util.List;

import ifba.exemplo.model.Cliente;
import ifba.exemplo.model.ClienteDAO;

public class ClienteView {

public List<Cliente> getCliente() throws Exception {                 
		
        List<Cliente> list = null;
        try {
            list = (new ClienteDAO()).getConsultar();
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("Falha ao consultar Usuarios!");
        }
        return list;
    }
		
	   public void cadastrar(Cliente cliente) throws Exception {
        try {
           
            new ClienteDAO().cadastrar(cliente);
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("Falha ao cadastrar Usuario!");
        }
    }

    public void excluir(Cliente cliente) throws Exception {
        try {
            new ClienteDAO().excluir(cliente);
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("Falha ao excluir Usuario!");
        }
    }


    public void excluir(int  cpf) throws Exception {
        try {
            new ClienteDAO().excluir(cpf);
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("Falha ao excluir Usuario!");
        }
    }

    public void alterar(Cliente cliente) throws Exception {
        try {
            new ClienteDAO().alterar(cliente);
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("Falha ao alterar Usuario!");
        }
    }


    public Cliente consultarPeloCodigo(int cpf) throws Exception {
        try {
            Cliente cliente = new ClienteDAO().consultar(cpf);
            return cliente;
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("Falha ao consultar Usuario!");
        }
    }
}
