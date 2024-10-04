package model;

import Controller.ConectarDao;
import Controller.IcrudDao;
import java.sql.SQLException;

public class Usuario extends ConectarDao implements IcrudDao  {


    public String nome;
    public String email;
    public String senha;



    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public boolean login() {
        if (email.equals("admin") && senha.equals("1234")) {
            return true;
        } else {
            return false;
        }
    }
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    
    public void incluir(){
    try { sql = "insert into TB_USUARIOS (NM_USUARIO, DS_EMAIL, DS_SENHA) "
        + "values (?,?,?) ";
    ps = con.prepareStatement(sql);
    ps.setString(1, nome); // Configura Parametros
    ps.setString(2, email); // Conf    igura Parametros
    ps.setString(3, senha ); // Configura Parametros
    ps.executeUpdate(); // executa comando SQL
 this.statusSQL = null; // armazena null se deu tudo certo
 } catch (SQLException ex) {
 this.statusSQL = "Erro ao incluir usuario ! <br> " + ex.getMessage();
 } }
    /*
    public boolean getLogin() {
        if (email.equals("admin") && senha.equals("1234")) 
        return true;
 
    try {
    sql = "select * from TB_USUARIOS where email = ? and senha = ?";
    ps = con.prepareStatement(sql); // prepara SQL
    ps.setString(1, email); // Configura Parametros
    ps.setString(2, senha); // Configura Parametros
    tab = ps.executeQuery(); // Executa comando SQL
        if (tab.next()) return true;
            this.statusSQL = null; // armazena null se deu tudo certo
        } catch (SQLException ex) {
        this.statusSQL = "Erro ao tentar buscar Usuário! " + ex.getMessage();
    }
 return false;
 }
*/
@Override
public boolean salvar() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
public boolean deletar() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
public boolean buscar() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
public boolean buscarSQL() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }


}
