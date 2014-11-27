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
<title>.: Sistema Gerenciador Financeiro :.</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">td img {display: block;}</style>
<!--Fireworks CS5 Dreamweaver CS5 target.  Created Tue Oct 28 11:21:08 GMT-0200 2014-->
</head>
<body bgcolor="#f6f6f6">
<table style="display: inline-table;" border="0" cellpadding="0" cellspacing="0" width="100%">
<!-- fwtable fwsrc="img/novadespesacartao/novadespesacartao.png" fwpage="Page 1" fwbase="novadespesacartao.png" fwstyle="Dreamweaver" fwdocid = "1466022259" fwnested="0" -->
  <tr>
   <td width="3%"><img src="img/novadespesacartao/spacer.gif" width="44" height="1" border="0" alt="" /></td>
   <td width="4%"><img src="img/novadespesacartao/spacer.gif" width="47" height="1" border="0" alt="" /></td>
   <td width="7%"><img src="img/novadespesacartao/spacer.gif" width="92" height="1" border="0" alt="" /></td>
   <td width="5%"><img src="img/novadespesacartao/spacer.gif" width="38" height="1" border="0" alt="" /></td>
   <td width="15%"><img src="img/novadespesacartao/spacer.gif" width="105" height="1" border="0" alt="" /></td>
   <td width="1%"><img src="img/novadespesacartao/spacer.gif" width="13" height="1" border="0" alt="" /></td>
   <td width="0%"><img src="img/novadespesacartao/spacer.gif" width="3" height="1" border="0" alt="" /></td>
   <td width="0%"><img src="img/novadespesacartao/spacer.gif" width="1" height="1" border="0" alt="" /></td>
   <td width="0%"><img src="img/novadespesacartao/spacer.gif" width="1" height="1" border="0" alt="" /></td>
   <td width="1%"><img src="img/novadespesacartao/spacer.gif" width="14" height="1" border="0" alt="" /></td>
   <td width="1%"><img src="img/novadespesacartao/spacer.gif" width="15" height="1" border="0" alt="" /></td>
   <td width="3%"><img src="img/novadespesacartao/spacer.gif" width="35" height="1" border="0" alt="" /></td>
   <td width="3%"><img src="img/novadespesacartao/spacer.gif" width="41" height="1" border="0" alt="" /></td>
   <td width="0%"><img src="img/novadespesacartao/spacer.gif" width="2" height="1" border="0" alt="" /></td>
   <td width="1%"><img src="img/novadespesacartao/spacer.gif" width="15" height="1" border="0" alt="" /></td>
   <td width="0%"><img src="img/novadespesacartao/spacer.gif" width="5" height="1" border="0" alt="" /></td>
   <td width="1%"><img src="img/novadespesacartao/spacer.gif" width="17" height="1" border="0" alt="" /></td>
   <td width="0%"><img src="img/novadespesacartao/spacer.gif" width="2" height="1" border="0" alt="" /></td>
   <td width="2%"><img src="img/novadespesacartao/spacer.gif" width="20" height="1" border="0" alt="" /></td>
   <td width="1%"><img src="img/novadespesacartao/spacer.gif" width="9" height="1" border="0" alt="" /></td>
   <td width="2%"><img src="img/novadespesacartao/spacer.gif" width="17" height="1" border="0" alt="" /></td>
   <td width="2%"><img src="img/novadespesacartao/spacer.gif" width="16" height="1" border="0" alt="" /></td>
   <td width="0%"><img src="img/novadespesacartao/spacer.gif" width="5" height="1" border="0" alt="" /></td>
   <td width="4%"><img src="img/novadespesacartao/spacer.gif" width="47" height="1" border="0" alt="" /></td>
   <td width="1%"><img src="img/novadespesacartao/spacer.gif" width="15" height="1" border="0" alt="" /></td>
   <td width="0%"><img src="img/novadespesacartao/spacer.gif" width="4" height="1" border="0" alt="" /></td>
   <td width="0%"><img src="img/novadespesacartao/spacer.gif" width="3" height="1" border="0" alt="" /></td>
   <td width="3%"><img src="img/novadespesacartao/spacer.gif" width="35" height="1" border="0" alt="" /></td>
   <td width="1%"><img src="img/novadespesacartao/spacer.gif" width="16" height="1" border="0" alt="" /></td>
   <td width="1%"><img src="img/novadespesacartao/spacer.gif" width="7" height="1" border="0" alt="" /></td>
   <td width="1%"><img src="img/novadespesacartao/spacer.gif" width="17" height="1" border="0" alt="" /></td>
   <td width="2%"><img src="img/novadespesacartao/spacer.gif" width="26" height="1" border="0" alt="" /></td>
   <td width="7%"><img src="img/novadespesacartao/spacer.gif" width="85" height="1" border="0" alt="" /></td>
   <td width="0%"><img src="img/novadespesacartao/spacer.gif" width="4" height="1" border="0" alt="" /></td>
   <td width="1%"><img src="img/novadespesacartao/spacer.gif" width="16" height="1" border="0" alt="" /></td>
   <td width="8%"><img src="img/novadespesacartao/spacer.gif" width="67" height="1" border="0" alt="" /></td>
   <td width="5%"><img src="img/novadespesacartao/spacer.gif" width="38" height="1" border="0" alt="" /></td>
   <td width="2%"><img src="img/novadespesacartao/spacer.gif" width="16" height="1" border="0" alt="" /></td>
   <td width="6%"><img src="img/novadespesacartao/spacer.gif" width="34" height="1" border="0" alt="" /></td>
   <td width="6%"><img src="img/novadespesacartao/spacer.gif" width="37" height="1" border="0" alt="" /></td>
   <td width="0%"><img src="img/novadespesacartao/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>

  <tr>
   <td colspan="40"><img name="novadespesacartao_r1_c1" src="img/novadespesacartao/novadespesacartao_r1_c1.png" width="1024" height="110" border="0" id="novadespesacartao_r1_c1" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="110" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="3"><a href="cartao.jsp" ><img name="novadespesacartao_r2_c1" src="img/novadespesacartao/novadespesacartao_r2_c1.png" width="183" height="70" border="0" id="novadespesacartao_r2_c1" alt="" /></a></td>
   <td colspan="37" bgcolor="#E6E600"><img name="novadespesacartao_r2_c4" src="img/novadespesacartao/novadespesacartao_r2_c4.png" width="841" height="55" border="0" id="novadespesacartao_r2_c4" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="55" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="37"><img name="novadespesacartao_r3_c4" src="img/novadespesacartao/novadespesacartao_r3_c4.png" width="841" height="16" border="0" id="novadespesacartao_r3_c4" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="15" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="5" colspan="3"><a href="home.jsp" ><img name="novadespesacartao_r4_c1" src="img/novadespesacartao/novadespesacartao_r4_c1.png" width="183" height="70" border="0" id="novadespesacartao_r4_c1" alt="" /></a></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>
  
  <form name="novadespesacartao"  method="post" action="salvardespesacartao.jsp" >
  
  <tr>
   <td><img name="novadespesacartao_r5_c4" src="img/novadespesacartao/novadespesacartao_r5_c4.png" width="38" height="32" border="0" id="novadespesacartao_r5_c4" alt="" /></td>
   <td colspan="6"><img name="novadespesacartao_r5_c5" src="img/novadespesacartao/novadespesacartao_r5_c5.png" width="137" height="32" border="0" id="novadespesacartao_r5_c5" alt="" /></td>
   <td colspan="26"><img name="novadespesacartao_r5_c11" src="img/novadespesacartao/novadespesacartao_r5_c11.png" width="533" height="32" border="0" id="novadespesacartao_r5_c11" alt="" /></td>
   <td>
   
   <input type="image" tabindex="9"  src="img/novadespesacartao/novadespesacartao_r5_c37.png" name="btnCadastrar" width="38" height="32" border="0" onClick="document.formCadastro.submit()" />
	
   </td>
   <td>&nbsp;</td>
   <td><a href="cartao.jsp" ><img name="novadespesacartao_r5_c39" src="img/novadespesacartao/novadespesacartao_r5_c39.png" width="34" height="32" border="0" id="novadespesacartao_r5_c39" alt="" /></a></td>
   <td><img name="novadespesacartao_r5_c40" src="img/novadespesacartao/novadespesacartao_r5_c40.png" width="15" height="32" border="0" id="novadespesacartao_r5_c40" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="32" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="37" ><img name="novadespesacartao_r6_c4" src="img/novadespesacartao/novadespesacartao_r6_c4.png" width="841" height="6" border="0" id="novadespesacartao_r6_c4" alt="" style="width:100%;"/></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="6" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="37"><img name="novadespesacartao_r7_c4" src="img/novadespesacartao/novadespesacartao_r7_c4.png" width="841" height="28" border="0" id="novadespesacartao_r7_c4" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="28" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="25" colspan="2"><img name="novadespesacartao_r8_c4" src="img/novadespesacartao/novadespesacartao_r8_c4.png" width="260" height="494" border="0" id="novadespesacartao_r8_c4" alt="" /></td>
   <td rowspan="3" colspan="2"><img name="novadespesacartao_r8_c6" src="img/novadespesacartao/novadespesacartao_r8_c6.png" width="16" height="26" border="0" id="novadespesacartao_r8_c6" alt="" /></td>
   <td rowspan="3" colspan="5"><img name="novadespesacartao_r8_c8" src="img/novadespesacartao/novadespesacartao_r8_c8.png" width="66" height="26" border="0" id="novadespesacartao_r8_c8" alt="" /></td>
   <td rowspan="3" colspan="6"><img name="novadespesacartao_r8_c13" src="img/novadespesacartao/novadespesacartao_r8_c13.png" width="100%" height="26" border="0" id="novadespesacartao_r8_c13" alt="" /></td>
   <td rowspan="5"><img name="novadespesacartao_r8_c19" src="img/novadespesacartao/novadespesacartao_r8_c19.png" width="20" height="70" border="0" id="novadespesacartao_r8_c19" alt="" /></td>
   <td rowspan="5" colspan="5"><img name="novadespesacartao_r8_c20" src="img/novadespesacartao/novadespesacartao_r8_c20.png" width="110" height="70" border="0" id="novadespesacartao_r8_c20" alt="" /></td>
   <td rowspan="5" colspan="3"><img name="novadespesacartao_r8_c25" src="img/novadespesacartao/novadespesacartao_r8_c25.png" width="22" height="70" border="0" id="novadespesacartao_r8_c25" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="novadespesacartao_r8_c28" src="img/novadespesacartao/novadespesacartao_r8_c28.png" width="51" height="25" border="0" id="novadespesacartao_r8_c28" alt="" /></td>
   <td rowspan="2" colspan="4"><img name="novadespesacartao_r8_c30" src="img/novadespesacartao/novadespesacartao_r8_c30.png" width="135" height="25" border="0" id="novadespesacartao_r8_c30" alt="" /></td>
   <td rowspan="5" colspan="2"><img name="novadespesacartao_r8_c34" src="img/novadespesacartao/novadespesacartao_r8_c34.png" width="20" height="70" border="0" id="novadespesacartao_r8_c34" alt="" /></td>
   <td rowspan="25" colspan="5"><img name="novadespesacartao_r8_c36" src="img/novadespesacartao/novadespesacartao_r8_c36.png" width="300" height="494" border="0" id="novadespesacartao_r8_c36" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="3" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="5" colspan="3"><a href="conta.jsp" ><img name="novadespesacartao_r9_c1" src="img/novadespesacartao/novadespesacartao_r9_c1.png" width="183" height="70" border="0" id="novadespesacartao_r9_c1" alt="" /></a></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="22" border="0" alt="" /></td>
  </tr>
  <tr>
     <td rowspan="2"><img name="novadespesacartao_r10_c28" src="img/novadespesacartao/novadespesacartao_r10_c28.png" width="35" height="34" border="0" id="novadespesacartao_r10_c28" alt="" /></td>
   <td rowspan="2" colspan="5">
   
   <input name="txtData" tabindex="2" maxlength="55" type="text" style="width:148px; height:30px; border-left:hidden; border-top:1px solid #7F9DB9; border-bottom:1px solid #7F9DB9; border-right:1px solid #7F9DB9; text-align:right;" />

   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="2"><img name="novadespesacartao_r11_c6" src="img/novadespesacartao/novadespesacartao_r11_c6.png" width="16" height="44" border="0" id="novadespesacartao_r11_c6" alt="" /></td>
   <td colspan="4"><img name="novadespesacartao_r11_c8" src="img/novadespesacartao/novadespesacartao_r11_c8.png" width="31" height="33" border="0" id="novadespesacartao_r11_c8" alt="" /></td>
   <td colspan="7" style="vertical-align:top;">
   
       <input  name="txtValor" tabindex="1" maxlength="55" type="text" style="width:117px; height:28px; border-left:hidden; border-top:1px solid #7F9DB9; border-bottom:1px solid #7F9DB9; border-right:1px solid #7F9DB9; text-align:right;" />
   
	</td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="33" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="11"><img name="novadespesacartao_r12_c8" src="img/novadespesacartao/novadespesacartao_r12_c8.png" width="100%" height="11" border="0" id="novadespesacartao_r12_c8" alt="" /></td>
   <td colspan="6"><img name="novadespesacartao_r12_c28" src="img/novadespesacartao/novadespesacartao_r12_c28.png" width="186" height="11" border="0" id="novadespesacartao_r12_c28" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="11" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="30"><img name="novadespesacartao_r13_c6" src="img/novadespesacartao/novadespesacartao_r13_c6.png" width="400" height="19" border="0" id="novadespesacartao_r13_c6" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="3" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="3"><a href="receita.jsp" ><img name="novadespesacartao_r14_c1" src="img/novadespesacartao/novadespesacartao_r14_c1.png" width="183" height="70" border="0" id="novadespesacartao_r14_c1" alt="" /></a></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="16" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="4" colspan="3"><img name="novadespesacartao_r15_c6" src="img/novadespesacartao/novadespesacartao_r15_c6.png" width="17" height="73" border="0" id="novadespesacartao_r15_c6" alt="" /></td>
   <td colspan="5"><img name="novadespesacartao_r15_c9" src="img/novadespesacartao/novadespesacartao_r15_c9.png" width="106" height="29" border="0" id="novadespesacartao_r15_c9" alt="" /></td>
   <td colspan="20"><img name="novadespesacartao_r15_c14" src="img/novadespesacartao/novadespesacartao_r15_c14.png" width="100%" height="29" border="0" id="novadespesacartao_r15_c14" alt="" /></td>
   <td rowspan="4" colspan="2"><img name="novadespesacartao_r15_c34" src="img/novadespesacartao/novadespesacartao_r15_c34.png" width="20" height="73" border="0" id="novadespesacartao_r15_c34" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="29" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="25" >
   
   <input type="text" name="txtDescricao" tabindex="3" maxlength="55" style="width:489px; height:28px;" />
   
	</td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="25" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="4" colspan="3"><a href="despesa.jsp" ><img name="novadespesacartao_r17_c1" src="img/novadespesacartao/novadespesacartao_r17_c1.png" width="183" height="70" border="0" id="novadespesacartao_r17_c1" alt="" /></a></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="9" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="25"><img name="novadespesacartao_r18_c9" src="img/novadespesacartao/novadespesacartao_r18_c9.png" width="100%" height="10" border="0" id="novadespesacartao_r18_c9" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="10" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="30"><img name="novadespesacartao_r19_c6" src="img/novadespesacartao/novadespesacartao_r19_c6.png" width="400" height="21" border="0" id="novadespesacartao_r19_c6" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="21" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="4" colspan="4"><img name="novadespesacartao_r20_c6" src="img/novadespesacartao/novadespesacartao_r20_c6.png" width="18" height="71" border="0" id="novadespesacartao_r20_c6" alt="" /></td>
   <td rowspan="2" colspan="8"><img name="novadespesacartao_r20_c10" src="img/novadespesacartao/novadespesacartao_r20_c10.png" width="144" height="40" border="0" id="novadespesacartao_r20_c10" alt="" /></td>
   <td colspan="16"><img name="novadespesacartao_r20_c18" src="img/novadespesacartao/novadespesacartao_r20_c18.png" width="100%" height="30" border="0" id="novadespesacartao_r20_c18" alt="" /></td>
   <td rowspan="4" colspan="2"><img name="novadespesacartao_r20_c34" src="img/novadespesacartao/novadespesacartao_r20_c34.png" width="20" height="71" border="0" id="novadespesacartao_r20_c34" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="30" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="4" colspan="3"><a href="logout.jsp" ><img name="novadespesacartao_r21_c1" src="img/novadespesacartao/novadespesacartao_r21_c1.png" width="183" height="62" border="0" id="novadespesacartao_r21_c1" alt="" /></a></td>
   <td rowspan="2" colspan="3"><img name="novadespesacartao_r21_c18" src="img/novadespesacartao/novadespesacartao_r21_c18.png" width="31" height="29" border="0" id="novadespesacartao_r21_c18" alt="" /></td>
   <td rowspan="2" colspan="3"><img name="novadespesacartao_r21_c21" src="img/novadespesacartao/novadespesacartao_r21_c21.png" width="38" height="29" border="0" id="novadespesacartao_r21_c21" alt="" /></td>
   <td rowspan="2" colspan="3">
   
   <input name="txtQuantidade" tabindex="5" maxlength="55" type="text" style="width:60px; height:25px;" />
   
   	</td>
   <td rowspan="2" colspan="4"><img name="novadespesacartao_r21_c27" src="img/novadespesacartao/novadespesacartao_r21_c27.png" width="61" height="29" border="0" id="novadespesacartao_r21_c27" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="novadespesacartao_r21_c31" src="img/novadespesacartao/novadespesacartao_r21_c31.png" width="43" height="29" border="0" id="novadespesacartao_r21_c31" alt="" /></td>
   <td rowspan="2">
   
   <input name="txtValorParcelado" tabindex="6" maxlength="55" type="text" style="width:79px; height:25px;" />
   
	</td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="10" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="8" style="vertical-align:top; width:30px;">
   
   <input type="checkbox" name="parcelado" value="true" tabindex="4" > <b>Parcelado</b>

	</td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="19" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="24"><img name="novadespesacartao_r23_c10" src="img/novadespesacartao/novadespesacartao_r23_c10.png" width="100%" height="12" border="0" id="novadespesacartao_r23_c10" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="12" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="30"><img name="novadespesacartao_r24_c6" src="img/novadespesacartao/novadespesacartao_r24_c6.png" width="400" height="21" border="0" id="novadespesacartao_r24_c6" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="21" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="4" colspan="3"><img name="novadespesacartao_r25_c1" src="img/novadespesacartao/novadespesacartao_r25_c1.png" width="183" height="39" border="0" id="novadespesacartao_r25_c1" alt="" /></td>
   <td colspan="30"><img name="novadespesacartao_r25_c6" src="img/novadespesacartao/novadespesacartao_r25_c6.png" width="506" height="1" border="0" id="novadespesacartao_r25_c6" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="5"><img name="novadespesacartao_r26_c6" src="img/novadespesacartao/novadespesacartao_r26_c6.png" width="13" height="76" border="0" id="novadespesacartao_r26_c6" alt="" /></td>
   <td rowspan="2" colspan="8"><img name="novadespesacartao_r26_c7" src="img/novadespesacartao/novadespesacartao_r26_c7.png" width="112" height="33" border="0" id="novadespesacartao_r26_c7" alt="" /></td>
   <td colspan="2"><img name="novadespesacartao_r26_c15" src="img/novadespesacartao/novadespesacartao_r26_c15.png" width="20" height="20" border="0" id="novadespesacartao_r26_c15" alt="" /></td>
   <td colspan="6"><img name="novadespesacartao_r26_c17" src="img/novadespesacartao/novadespesacartao_r26_c17.png" width="81" height="20" border="0" id="novadespesacartao_r26_c17" alt="" /></td>
   <td rowspan="5" colspan="2"><img name="novadespesacartao_r26_c23" src="img/novadespesacartao/novadespesacartao_r26_c23.png" width="52" height="76" border="0" id="novadespesacartao_r26_c23" alt="" /></td>
   <td rowspan="5"><img name="novadespesacartao_r26_c25" src="img/novadespesacartao/novadespesacartao_r26_c25.png" width="15" height="76" border="0" id="novadespesacartao_r26_c25" alt="" /></td>
   <td rowspan="2" colspan="6"><img name="novadespesacartao_r26_c26" src="img/novadespesacartao/novadespesacartao_r26_c26.png" width="82" height="33" border="0" id="novadespesacartao_r26_c26" alt="" /></td>
   <td rowspan="2" colspan="3"><img name="novadespesacartao_r26_c32" src="img/novadespesacartao/novadespesacartao_r26_c32.png" width="115" height="33" border="0" id="novadespesacartao_r26_c32" alt="" /></td>
   <td rowspan="5"><img name="novadespesacartao_r26_c35" src="img/novadespesacartao/novadespesacartao_r26_c35.png" width="16" height="76" border="0" id="novadespesacartao_r26_c35" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="20" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="7"><img name="novadespesacartao_r27_c15" src="img/novadespesacartao/novadespesacartao_r27_c15.png" width="100%" height="13" border="0" id="novadespesacartao_r27_c15" alt="" /></td>
   <td rowspan="4"><img name="novadespesacartao_r27_c22" src="img/novadespesacartao/novadespesacartao_r27_c22.png" width="16" height="56" border="0" id="novadespesacartao_r27_c22" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="13" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="15">
   
   <select name="categoriadespesa" tabindex="7" style="width:200px; height:30px;">
   	
   </select>
   
	</td>
   <td rowspan="2" colspan="9">
   
   <select name="cartaodespesa" tabindex="8" style="width:196px; height:30px;">
   	
   </select>
   
	</td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="5" border="0" alt="" /></td>
  </tr>
 </form>
  <tr>
   <td rowspan="4"><img name="novadespesacartao_r29_c1" src="img/novadespesacartao/novadespesacartao_r29_c1.png" width="44" height="180" border="0" id="novadespesacartao_r29_c1" alt="" /></td>
   <td rowspan="3"><a href="meusDados.jsp" ><img name="novadespesacartao_r29_c2" src="img/novadespesacartao/novadespesacartao_r29_c2.png" width="47" height="50" border="0" id="novadespesacartao_r29_c2" alt="" /></a></td>
   <td rowspan="4"><img name="novadespesacartao_r29_c3" src="img/novadespesacartao/novadespesacartao_r29_c3.png" width="92" height="180" border="0" id="novadespesacartao_r29_c3" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="25" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="15"><img name="novadespesacartao_r30_c7" src="img/novadespesacartao/novadespesacartao_r30_c7.png" width="100%" height="13" border="0" id="novadespesacartao_r30_c7" alt="" /></td>
   <td colspan="9"><img name="novadespesacartao_r30_c26" src="img/novadespesacartao/novadespesacartao_r30_c26.png" width="100%" height="13" border="0" id="novadespesacartao_r30_c26" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="13" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="30"><img name="novadespesacartao_r31_c6" src="img/novadespesacartao/novadespesacartao_r31_c6.png" width="506" height="142" border="0" id="novadespesacartao_r31_c6" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="12" border="0" alt="" /></td>
  </tr>
  <tr>
   <td><img name="novadespesacartao_r32_c2" src="img/novadespesacartao/novadespesacartao_r32_c2.png" width="47" height="130" border="0" id="novadespesacartao_r32_c2" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="130" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="15"><img name="novadespesacartao_r33_c1" src="img/novadespesacartao/novadespesacartao_r33_c1.png" width="466" height="27" border="0" id="novadespesacartao_r33_c1" alt="" /></td>
   <td colspan="25"><img name="novadespesacartao_r33_c16" src="img/novadespesacartao/novadespesacartao_r33_c16.png" width="558" height="27" border="0" id="novadespesacartao_r33_c16" alt="" /></td>
   <td><img src="img/novadespesacartao/spacer.gif" width="1" height="27" border="0" alt="" /></td>
  </tr>
</table>
</body>
</html>
