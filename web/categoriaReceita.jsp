<%  
//verifica se a sessao do usuario  com o ID é valida 
if (session.getAttribute("idUsuario") == null)  
{  
        response.sendRedirect("index.jsp");  
}  
%> 



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0014)about:internet -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>.:: Sistema Gerenciador Financeiro ::.</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">td img {display: block;}</style>
<!--Fireworks CS5 Dreamweaver CS5 target.  Created Fri Nov 07 11:41:43 GMT-0200 2014-->
</head>
<body bgcolor="#f6f6f6">
<table style="display: inline-table;" border="0" cellpadding="0" cellspacing="0" width="100%">
<!-- fwtable fwsrc="img/categoriareceita/categoriareceita.png" fwpage="Page 1" fwbase="categoriareceita.png" fwstyle="Dreamweaver" fwdocid = "897460715" fwnested="0" -->
  <tr>
   <td><img src="img/categoriareceita/spacer.gif" width="44" height="1" border="0" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="46" height="1" border="0" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="93" height="1" border="0" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="118" height="1" border="0" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="16" height="1" border="0" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="178" height="1" border="0" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="312" height="1" border="0" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="23" height="1" border="0" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="48" height="1" border="0" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="40" height="1" border="0" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="34" height="1" border="0" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="35" height="1" border="0" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="37" height="1" border="0" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>

  <tr>
   <td colspan="13"><img name="categoriareceita_r1_c1" src="img/categoriareceita/categoriareceita_r1_c1.png" width="1024" height="110" border="0" id="categoriareceita_r1_c1" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="110" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="3"><a href="receita.jsp" ><img name="categoriareceita_r2_c1" src="img/categoriareceita/categoriareceita_r2_c1.png" width="183" height="70" border="0" id="categoriareceita_r2_c1" alt="" /></a></td>
   <td colspan="10" width="100%" bgcolor="#009933" ><img name="categoriareceita_r2_c4" src="img/categoriareceita/categoriareceita_r2_c4.png" width="841" height="55" border="0" id="categoriareceita_r2_c4" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="55" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="10"><img name="categoriareceita_r3_c4" src="img/categoriareceita/categoriareceita_r3_c4.png" width="841" height="16" border="0" id="categoriareceita_r3_c4" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="15" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="4" colspan="3"><a href="home.jsp" ><img name="categoriareceita_r4_c1" src="img/categoriareceita/categoriareceita_r4_c1.png" width="183" height="70" border="0" id="categoriareceita_r4_c1" alt="" /></a></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="8"><img name="categoriareceita_r5_c4" src="img/categoriareceita/categoriareceita_r5_c4.png" width="769" height="32" border="0" id="categoriareceita_r5_c4" alt="" /></td>
   <td><a href="novaReceita.jsp" ><img name="categoriareceita_r5_c12" src="img/categoriareceita/categoriareceita_r5_c12.png" width="35" height="32" border="0" id="categoriareceita_r5_c12" alt="" /></a></td>
   <td><img name="categoriareceita_r5_c13" src="img/categoriareceita/categoriareceita_r5_c13.png" width="37" height="32" border="0" id="categoriareceita_r5_c13" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="32" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="10" width="100%"><img name="categoriareceita_r6_c4" src="img/categoriareceita/categoriareceita_r6_c4.png" width="100%" height="5" border="0" id="categoriareceita_r6_c4" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="5" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="10"><img name="categoriareceita_r7_c4" src="img/categoriareceita/categoriareceita_r7_c4.png" width="830" height="51" border="0" id="categoriareceita_r7_c4" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="32" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="3"><a href="conta.jsp" ><img name="categoriareceita_r8_c1" src="img/categoriareceita/categoriareceita_r8_c1.png" width="183" height="70" border="0" id="categoriareceita_r8_c1" alt="" /></a></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="19" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="11"><img name="categoriareceita_r9_c4" src="img/categoriareceita/categoriareceita_r9_c4.png" width="320" height="472" border="0" id="categoriareceita_r9_c4" alt="" /></td>
   <td rowspan="5"><img name="categoriareceita_r9_c5" src="img/categoriareceita/categoriareceita_r9_c5.png" width="16" height="71" border="0" id="categoriareceita_r9_c5" alt="" /></td>
   <td colspan="2"><img name="categoriareceita_r9_c6" src="img/categoriareceita/categoriareceita_r9_c6.png" width="490" height="24" border="0" id="categoriareceita_r9_c6" alt="" /></td>
   <td rowspan="5"><img name="categoriareceita_r9_c8" src="img/categoriareceita/categoriareceita_r9_c8.png" width="23" height="71" border="0" id="categoriareceita_r9_c8" alt="" /></td>
   <td colspan="5"><img name="categoriareceita_r9_c9" src="img/categoriareceita/categoriareceita_r9_c9.png" width="210" height="24" border="0" id="categoriareceita_r9_c9" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="24" border="0" alt="" /></td>
  </tr>
  <form name="categoriareceita" action="salvarcategoria.jsp?voltar=1" method="post" >
  <tr>
   <td rowspan="2" colspan="2">
   
       <input type="text" name="txtDescricao" required maxlength="55" tabindex="1" style="width:484px; height:28px;" />
   
	</td>
   <td rowspan="2"><img name="categoriareceita_r10_c9" src="img/categoriareceita/categoriareceita_r10_c9.png" width="90" height="34" border="0" id="categoriareceita_r10_c9" alt="" /></td>
   <td rowspan="3">
   
       <input type="image" tabindex="2" src="img/categoriareceita/categoriareceita_r10_c10.png" name="btnCadastrar" width="40" height="35" border="0" onClick="document.formCadastro.submit()" />
   

   <td rowspan="3" colspan="3"><img name="categoriareceita_r10_c11" src="img/categoriareceita/categoriareceita_r10_c11.png" width="180" height="35" border="0" id="categoriareceita_r10_c11" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="27" border="0" alt="" /></td>
  </tr>
  </form>
  <tr>
   <td rowspan="4" colspan="3"><a href="cartao.jsp" ><img name="categoriareceita_r11_c1" src="img/categoriareceita/categoriareceita_r11_c1.png" width="183" height="70" border="0" id="categoriareceita_r11_c1" alt="" /></a></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="7" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="2"><img name="categoriareceita_r12_c6" src="img/categoriareceita/categoriareceita_r12_c6.png" width="490" height="13" border="0" id="categoriareceita_r12_c6" alt="" /></td>
   <td><img name="categoriareceita_r12_c9" src="img/categoriareceita/categoriareceita_r12_c9.png" width="48" height="1" border="0" id="categoriareceita_r12_c9" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5"><img name="categoriareceita_r13_c9" src="img/categoriareceita/categoriareceita_r13_c9.png" width="210" height="12" border="0" id="categoriareceita_r13_c9" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="12" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="6" colspan="9"><img name="categoriareceita_r14_c5" src="img/categoriareceita/categoriareceita_r14_c5.png" width="723" height="401" border="0" id="categoriareceita_r14_c5" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="50" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><a href="despesa.jsp" ><img name="categoriareceita_r15_c1" src="img/categoriareceita/categoriareceita_r15_c1.png" width="183" height="70" border="0" id="categoriareceita_r15_c1" alt="" /></a></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="70" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><a href="logout.jsp" ><img name="categoriareceita_r16_c1" src="img/categoriareceita/categoriareceita_r16_c1.png" width="183" height="62" border="0" id="categoriareceita_r16_c1" alt="" /></a></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="62" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><img name="categoriareceita_r17_c1" src="img/categoriareceita/categoriareceita_r17_c1.png" width="183" height="39" border="0" id="categoriareceita_r17_c1" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="39" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2"><img name="categoriareceita_r18_c1" src="img/categoriareceita/categoriareceita_r18_c1.png" width="44" height="180" border="0" id="categoriareceita_r18_c1" alt="" /></td>
   <td><a href="meusDados.jsp" ><img name="categoriareceita_r18_c2" src="img/categoriareceita/categoriareceita_r18_c2.png" width="46" height="50" border="0" id="categoriareceita_r18_c2" alt="" /></a></td>
   <td rowspan="2"><img name="categoriareceita_r18_c3" src="img/categoriareceita/categoriareceita_r18_c3.png" width="93" height="180" border="0" id="categoriareceita_r18_c3" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="50" border="0" alt="" /></td>
  </tr>
  <tr>
   <td><img name="categoriareceita_r19_c2" src="img/categoriareceita/categoriareceita_r19_c2.png" width="46" height="130" border="0" id="categoriareceita_r19_c2" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="130" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="6"><img name="categoriareceita_r20_c1" src="img/categoriareceita/categoriareceita_r20_c1.png" width="495" height="27" border="0" id="categoriareceita_r20_c1" alt="" /></td>
   <td colspan="7"><img name="categoriareceita_r20_c7" src="img/categoriareceita/categoriareceita_r20_c7.png" width="529" height="27" border="0" id="categoriareceita_r20_c7" alt="" /></td>
   <td><img src="img/categoriareceita/spacer.gif" width="1" height="27" border="0" alt="" /></td>
  </tr>
</table>
</body>
</html>
