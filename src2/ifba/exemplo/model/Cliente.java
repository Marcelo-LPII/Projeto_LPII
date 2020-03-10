package ifba.exemplo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="cliente")
public class Cliente {

	
	
	@Column (name ="nm_cliente")
	private String nm_cliente;
	
	@Id
	@Column (name ="cpf_cliente")
	private String cpf_cliente;
	
	@Column (name ="rg_cliente")
	private String rg_cliente;
	
	@Column (name ="endereco_cliente")
	private String endereco_cliente;
	
	@Column (name ="telefone_cliente")
	private String telefone_cliente;
	
	@Column (name ="email_cliente")
	private String email_cliente;
	
	@Column (name ="senha_cliente")
	private String senha_cliente;
	
	
	public Cliente(String nm_cliente, String cpf_cliente, String rg_cliente, String endereco_cliente,
			String telefone_cliente, String email_cliente, String senha_cliente) {
		super();
		this.nm_cliente = nm_cliente;
		this.cpf_cliente = cpf_cliente;
		this.rg_cliente = rg_cliente;
		this.endereco_cliente = endereco_cliente;
		this.telefone_cliente = telefone_cliente;
		this.email_cliente = email_cliente;
		this.senha_cliente = senha_cliente;
	}
	
	public Cliente() {
		
		
	}

	public String getNm_cliente() {
		return nm_cliente;
	}

	public void setNm_cliente(String nm_cliente) {
		this.nm_cliente = nm_cliente;
	}

	public String getCpf_cliente() {
		return cpf_cliente;
	}

	public void setCpf_cliente(String cpf_cliente) {
		this.cpf_cliente = cpf_cliente;
	}

	public String getRg_cliente() {
		return rg_cliente;
	}

	public void setRg_cliente(String rg_cliente) {
		this.rg_cliente = rg_cliente;
	}

	public String getEndereco_cliente() {
		return endereco_cliente;
	}

	public void setEndereco_cliente(String endereco_cliente) {
		this.endereco_cliente = endereco_cliente;
	}

	public String getTelefone_cliente() {
		return telefone_cliente;
	}

	public void setTelefone_cliente(String telefone_cliente) {
		this.telefone_cliente = telefone_cliente;
	}

	public String getEmail_cliente() {
		return email_cliente;
	}

	public void setEmail_cliente(String email_cliente) {
		this.email_cliente = email_cliente;
	}

	public String getSenha_cliente() {
		return senha_cliente;
	}

	public void setSenha_cliente(String senha_cliente) {
		this.senha_cliente = senha_cliente;
	}

	@Override
	public String toString() {
		return "Cliente [nm_cliente=" + nm_cliente + ", cpf_cliente=" + cpf_cliente + ", rg_cliente=" + rg_cliente
				+ ", endereco_cliente=" + endereco_cliente + ", telefone_cliente=" + telefone_cliente
				+ ", email_cliente=" + email_cliente + ", senha_cliente=" + senha_cliente + "]";
	}
	

}
