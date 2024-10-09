<%@page import="model.Usuario"%>
<%
 String email = request.getParameter("email"); // captura email do form
 String senha = request.getParameter("senha"); // captura senha do form

 Usuario user = new Usuario();// instancia Usuario
 
 user.setEmail(email); // mude para user.setEmail(email);
 user.setSenha(senha); // mude para user.setSenha(senha); 
 
 if ( user.getLogin() == true) { // faz o login no objeto user
 
   response.sendRedirect("/Projeto_Catalogo_Filmes");// carrega a página de sistema
   
 } else{
    String sHTML="<center>Opa! Login ou Senha não encontrados! Tente Novamente! <br>"
    + "<a href = '/Projeto_Catalogo_Filmes'> Voltar </a></center>";
    out.println(sHTML);
   }
 %>


