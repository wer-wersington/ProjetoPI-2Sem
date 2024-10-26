<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Usuario user = new Usuario(); // Instancia o objeto Usuario 

 if ( !(user.statusSQL == null) ) out.println(user.statusSQL);
 // preenche os atributos do objeto usuario
    String senhas = request.getParameter("senha");
    String rpsenhas = request.getParameter("rpsenha");
    String buttonval = request.getParameter("oper");
    String email = request.getParameter("email");
        
    if(senhas != null && rpsenhas != null && senhas.equals(rpsenhas) && "1".equals(buttonval)){
        user.nome = request.getParameter("nome");
        user.email = request.getParameter("email");
        user.senha = senhas;
        user.incluir(); // chama o método para fazer a inclusão no banco de dados
        
    }
    
    if("2".equals(buttonval)){
        user.email = request.getParameter("email");
        user.deletar(); // chama o método para fazer o delete no banco de dados
    }
    
    if("3".equals(buttonval)){
        boolean emailvalid = user.buscarEmail();
        if(emailvalid){
            user.nome = request.getParameter("nome");
            user.email = request.getParameter("email");
            user.senha = senhas;
            user.alterar(); // chama o método para fazer o delete no banco de dados
        }else{
        String sHTML="<center>Email não encontrado !<br>"; out.println(sHTML);
        }
    }
    
    if(senhas != null && rpsenhas != null && senhas.equals(rpsenhas) && "1".equals(buttonval)){
        user.nome = request.getParameter("nome");
        if(user.buscarEmail()){
        user.email = request.getParameter("email");
        //String sHTML="<center>Email encontrado com sucesso!<br>"; out.println(sHTML);
    }
        
    }  
if ( !(user.statusSQL == null) ) out.println(user.statusSQL);{
    if("".equals(buttonval)){
         String sHTML="<center>Usuário criado com Sucesso!<br>"
        + "<a href = '../login.html'> Voltar </a></center>"; out.println(sHTML); }
}
%>
<!DOCTYPE html>
<html lan="pt-br">
    <head> <title> Cadastro de Usuários </title>
        <meta charset="utf-8">
    </head>
    <body>
        <div align = center>
            <form action="registro.jsp" name = formreg method="get" >
                <table align = center>
                    <tr><td></td><td>
                            <input type="hidden" name = oper id="idoper"> </td></tr>
                    <tr><td colspan = 2 align = center>*** Registro de Usuários *** </td></tr>
                    <tr><td align="right">Digite seu nome...:</td><td><input type="text" name = nome required> </td></tr>
                    <tr><td align="right">Digite seu email..:</td><td><input type="text" name = email required> </td></tr>
                        </td></tr>
                    <tr><td align="right">Digite sua Senha..:</td><td><input type="password" name = senha required>
                     </td></tr><tr><td align="right">Repita sua Senha..:</td><td><input type="password" name = rpsenha required>
                     </td></tr>
                        <td></td><td align = center>
                            <input type="button" value="Voltar" onclick="window.location.assign('login.html');">
                            <input type="submit" value="Enviar" name="Enviar" onclick="formreg.oper.value = '1';">
                            <input type="submit" value="Deletar" name="Deletar" onclick="formreg.oper.value = '2';">
                            <input type="submit" value="Editar" name="Editar" onclick="formreg.oper.value = '3';">
                        </td></tr> </table>
            </form> </div> </body> </html>