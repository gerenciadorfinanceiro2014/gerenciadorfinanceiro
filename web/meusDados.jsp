<%@page import="br.com.server.dao.UsuarioDAO"%>
<%@page import="br.com.server.model.Usuario"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0014)about:internet -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>.: Sistema Gerenciador Financeiro :.</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">td img {display: block;}</style>
<!--Fireworks CS5 Dreamweaver CS5 target.  Created Thu Nov 27 00:54:54 GMT-0200 2014-->
</head>
<body bgcolor="#f6f6f6">
<table style="display: inline-table;" border="0" cellpadding="0" cellspacing="0" width="100%">
<!-- fwtable fwsrc="img/meusDados/meusDados.png" fwpage="Page 1" fwbase="meusDados.png" fwstyle="Dreamweaver" fwdocid = "463825611" fwnested="0" -->
  <tr>
   <td><img src="img/meusDados/spacer.gif" width="44" height="1" border="0" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="46" height="1" border="0" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="93" height="1" border="0" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="239" height="1" border="0" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="79" height="1" border="0" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="95" height="1" border="0" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="42" height="1" border="0" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="64" height="1" border="0" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="69" height="1" border="0" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="41" height="1" border="0" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="212" height="1" border="0" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>
  <%
        Usuario usuario = new Usuario();
        UsuarioDAO uDAO = new UsuarioDAO();
        
        usuario = uDAO.Consultar(Integer.parseInt(session.getAttribute("idUsuario").toString()));
  %>
  <tr>
   <td colspan="11"><img name="meusDados_r1_c1" src="img/meusDados/meusDados_r1_c1.png" width="1024" height="110" border="0" id="meusDados_r1_c1" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="110" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="3"><a href="home.jsp"><img name="meusDados_r2_c1" src="img/meusDados/meusDados_r2_c1.png" width="183" height="70" border="0" id="meusDados_r2_c1" alt="" /></a></td>
   <td colspan="8" width="100%" bgcolor="#999"><img name="meusDados_r2_c4" src="img/meusDados/meusDados_r2_c4.png" width="841" height="9" border="0" id="meusDados_r2_c4" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="9" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="8"><img name="meusDados_r3_c4" src="img/meusDados/meusDados_r3_c4.png" width="841" height="57" border="0" id="meusDados_r3_c4" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="57" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="8" width="100%"><img name="meusDados_r4_c4" src="img/meusDados/meusDados_r4_c4.png" width="100%" height="8" border="0" id="meusDados_r4_c4" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="4" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="4" colspan="3"><a href="conta.jsp"><img name="meusDados_r5_c1" src="img/meusDados/meusDados_r5_c1.png" width="183" height="70" border="0" id="meusDados_r5_c1" alt="" /></a></td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="4" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="8">&nbsp;</td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="40" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="18">&nbsp;</td>
   <td rowspan="3" colspan="4"><img name="meusDados_r7_c5" src="img/meusDados/meusDados_r7_c5.png" width="280" height="28" border="0" id="meusDados_r7_c5" alt="" /></td>
   <td rowspan="11">&nbsp;</td>
   <td colspan="2">&nbsp;</td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="21" border="0" alt="" /></td>
  </tr>
  <form action="salvareditarusuario.jsp" method="post" >
  <tr>
   <td rowspan="3"><input type="image" src="img/meusDados/meusDados_r8_c10.png" name="btnCadastrar" width="41" height="35" border="0" onClick="document.formCadastro.submit()" /></td>
   <td rowspan="10">&nbsp;</td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="5" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="6" colspan="3"><a href="receita.jsp"><img name="meusDados_r9_c1" src="img/meusDados/meusDados_r9_c1.png" width="183" height="70" border="0" id="meusDados_r9_c1" alt="" /></a></td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="2" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="4"><input type="text" name="txtNome" value="<% out.print(usuario.getNome()); %>" style="width:276px; height:25px; border-left:hidden; border-top:1px solid #7F9DB9; border-bottom:1px solid #7F9DB9; border-left:1px solid #7F9DB9; border-right:1px solid #7F9DB9;" /></td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="28" border="0" alt=""  /></td>
  </tr>
  <tr>
   <td rowspan="7">&nbsp;</td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="4"><img name="meusDados_r12_c5" src="img/meusDados/meusDados_r12_c5.png" width="280" height="9" border="0" id="meusDados_r12_c5" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="9" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="4"><img name="meusDados_r13_c5" src="img/meusDados/meusDados_r13_c5.png" width="280" height="28" border="0" id="meusDados_r13_c5" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="28" border="0" alt="" /></td>
  </tr>
  <tr>
      <td rowspan="2" colspan="4"><input type="text" name="txtEmail" value="<% if(usuario.getEmail() != null && !usuario.getEmail().equals("null")) out.print(usuario.getEmail()); %>" style="width:276px; height:25px; border-left:hidden; border-top:1px solid #7F9DB9; border-bottom:1px solid #7F9DB9; border-left:1px solid #7F9DB9; border-right:1px solid #7F9DB9;" /></td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="2" border="0" alt=""  /></td>
  </tr>
  <tr>
   <td rowspan="4" colspan="3"><a href="cartao.jsp"><img name="meusDados_r15_c1" src="img/meusDados/meusDados_r15_c1.png" width="183" height="70" border="0" id="meusDados_r15_c1" alt="" /></a></td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="27" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="4"><img name="meusDados_r16_c5" src="img/meusDados/meusDados_r16_c5.png" width="280" height="13" border="0" id="meusDados_r16_c5" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="13" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="2"><img name="meusDados_r17_c5" src="img/meusDados/meusDados_r17_c5.png" width="174" height="23" border="0" id="meusDados_r17_c5" alt="" /></td>
   <td rowspan="3">&nbsp;</td>
   <td><img name="meusDados_r17_c8" src="img/meusDados/meusDados_r17_c8.png" width="64" height="23" border="0" id="meusDados_r17_c8" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="23" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="2"><input type="text" name="txtLogin" value="<% out.print(usuario.getLogin()); %>" style="width:170px; height:25px; border-left:hidden; border-top:1px solid #7F9DB9; border-bottom:1px solid #7F9DB9; border-left:1px solid #7F9DB9; border-right:1px solid #7F9DB9;" /></td>
   <td rowspan="2" colspan="3"><input type="password" name="txtSenha" value="<% out.print(usuario.getSenha()); %>" style="width:170px; height:25px; border-left:hidden; border-top:1px solid #7F9DB9; border-bottom:1px solid #7F9DB9; border-left:1px solid #7F9DB9; border-right:1px solid #7F9DB9;" /></td>
   <td rowspan="2">&nbsp;</td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="7" border="0" alt="" /></td>
  </tr>
  </form>
  <tr>
   <td rowspan="2" colspan="3"><a href="despesa.jsp"><img name="meusDados_r19_c1" src="img/meusDados/meusDados_r19_c1.png" width="183" height="70" border="0" id="meusDados_r19_c1" alt="" /></a></td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="22" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="5" colspan="7">&nbsp;</td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="48" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><a href="logout.jsp"><img name="meusDados_r21_c1" src="img/meusDados/meusDados_r21_c1.png" width="183" height="62" border="0" id="meusDados_r21_c1" alt="" /></a></td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="62" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><img name="meusDados_r22_c1" src="img/meusDados/meusDados_r22_c1.png" width="183" height="39" border="0" id="meusDados_r22_c1" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="39" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2"><img name="meusDados_r23_c1" src="img/meusDados/meusDados_r23_c1.png" width="44" height="180" border="0" id="meusDados_r23_c1" alt="" /></td>
   <td>&nbsp;</td>
   <td rowspan="2"><img name="meusDados_r23_c3" src="img/meusDados/meusDados_r23_c3.png" width="93" height="180" border="0" id="meusDados_r23_c3" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="50" border="0" alt="" /></td>
  </tr>
  <tr>
   <td><img name="meusDados_r24_c2" src="img/meusDados/meusDados_r24_c2.png" width="46" height="130" border="0" id="meusDados_r24_c2" alt="" /></td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="130" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5"><img name="meusDados_r25_c1" src="img/meusDados/meusDados_r25_c1.png" width="501" height="27" border="0" id="meusDados_r25_c1" alt="" /></td>
   <td colspan="6">&nbsp;</td>
   <td><img src="img/meusDados/spacer.gif" width="1" height="27" border="0" alt="" /></td>
  </tr>
</table>
</body>
</html>
