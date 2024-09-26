<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% String oper = request.getParameter("oper");
    if (!(oper == null)) {
        out.println(oper);
    }
    Usuario user = new Usuario();
    if (user.htmlError != null)
        out.println(user.htmlError);
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
                    <tr><td align="right">Digite seu Celular:</td><td><input type="text" name = celular required>
                        </td></tr>
                    <tr><td align="right">Digite sua Senha..:</td><td><input type="password" name = senha required>
                        </td></tr><tr>
                        <td align="right">Tipo de acesso....:</td>
                        <td align="right"><select name="nivel" id="idnivel" required>
                                <option value="" selected>&nbsp;</option>
                                <option value="professor">Atividades de professores</option>
                                <option value="aluno">Atividades de alunos</option>
                            </select> </td></tr>
                    <tr><td></td><td align = center>
                            <input type="button" value="Voltar" onclick="window.location.assign('index.html');">
                            <input type="submit" value="Enviar" onclick="formreg.oper.value = '1';"></td></tr> </table>
            </form> </div> </body> </html>