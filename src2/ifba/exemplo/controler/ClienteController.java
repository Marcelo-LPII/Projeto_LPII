package ifba.exemplo.controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ifba.exemplo.model.Cliente;
import ifba.exemplo.model.ClienteDAO;

@WebServlet(name="ClienteController", urlPatterns= {"/ClienteController"})
public class ClienteController extends HttpServlet{
	


    private ClienteDAO metodos; 	
    
    
    public static final String LIST = "Listar.jsp"; 		   
    public static final String INSERT_OR_EDIT = "Manter.jsp";  
    
    
    public ClienteController() {
        super();  
        metodos = new ClienteDAO(); 
    }  
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	 
    	 response.setContentType("text/html;charset=UTF-8");
         String forward = "";
         String acao = request.getParameter("acao");
        
         try {
         	
             if (acao.equalsIgnoreCase("deletar")) {  		
                 String cpf_cliente =  request.getParameter("cpf");
                 int cpf = Integer.parseInt(cpf_cliente);
                 forward = LIST;
                 metodos.excluir(cpf);
                 request.setAttribute("userlist", metodos.getConsultar()); 
             } 
             
             else if (acao.equalsIgnoreCase("editar")) { 	
                 forward = INSERT_OR_EDIT;
                 String z = (request.getParameter("cpf"));
                 int cpf = Integer.parseInt(z);
                Cliente cliente = metodos.consultar(cpf);        
                 request.setAttribute("userlist", cliente);    
             } 
             
             else if (acao.equalsIgnoreCase("inserir")) {   
                 forward = INSERT_OR_EDIT; 
                 
                
             } else {
                 forward = LIST;
                 request.setAttribute("userlist", metodos.getConsultar()); 
             }
                    
             
         } catch (Exception e) {
             e.printStackTrace();
         }

         RequestDispatcher view = request.getRequestDispatcher(forward);
         view.forward(request, response);
    
    }
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
    	
    	
        String nm_cliente = request.getParameter("name");
        String cpf_cliente = request.getParameter("cpf");
        int cpf = Integer.parseInt(cpf_cliente);
        String rg_cliente = request.getParameter("rg");
        String endereco_cliente = request.getParameter("endereco");
        String telefone_cliente = request.getParameter("telefone");
        String email_cliente = request.getParameter("email");
        String senha_cliente = request.getParameter("senha");
        
        
        String idUser = request.getParameter("idUser"); 	
        
        
        System.out.println("NOME: " + nm_cliente);
        System.out.println("CPF: " + cpf_cliente);
        System.out.println("RG: " + rg_cliente);
        System.out.println("ENDERECO: " + endereco_cliente);
        System.out.println("TELEFONE: " + telefone_cliente);
        System.out.println("EMAIL: " + email_cliente);
        System.out.println("SENHA: " + senha_cliente);
        
        
        
        if (idUser == null) {  
            idUser = ""; 
        }

        System.out.println("Concluido!");
        
       Cliente e = null;
        String forward = LIST; 
        try {
        	
        	
            if (idUser.trim().isEmpty()) {  
                e = new Cliente();        
                e.setNm_cliente(nm_cliente);
                e.setCpf_cliente(cpf_cliente);
                e.setRg_cliente(rg_cliente);
                e.setEndereco_cliente(endereco_cliente);
                e.setTelefone_cliente(telefone_cliente);
                e.setEmail_cliente(email_cliente); 
                e.setSenha_cliente(senha_cliente);
                metodos.cadastrar(e);
            	}
            
            
            else {
                e = metodos.consultar(cpf); 
                e.setNm_cliente(nm_cliente);
                e.setCpf_cliente(cpf_cliente);
                e.setRg_cliente(rg_cliente);
                e.setEndereco_cliente(endereco_cliente);
                e.setTelefone_cliente(telefone_cliente);
                e.setEmail_cliente(email_cliente);
                e.setSenha_cliente(senha_cliente);
                metodos.alterar(e);
              
            }
            
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


}
