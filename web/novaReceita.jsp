<%@page import="br.com.server.model.Categoria"%>
<%@page import="br.com.server.dao.CategoriaDAO"%>
<%@page import="br.com.server.model.Conta"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.server.dao.ContaDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0014)about:internet -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>.:: Sistema Gerenciador Financeiro ::.</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">td img {display: block;}</style>
<!--Fireworks CS5 Dreamweaver CS5 target.  Created Fri Nov 07 10:28:23 GMT-0200 2014-->
</head>
<body bgcolor="#f6f6f6">
<table style="display: inline-table;" border="0" cellpadding="0" cellspacing="0" width="100%">
<!-- fwtable fwsrc="img/novareceita/novareceita.png" fwpage="Page 1" fwbase="novareceita.png" fwstyle="Dreamweaver" fwdocid = "1550247154" fwnested="0" -->
  <tr>
   <td><img src="img/novareceita/spacer.gif" width="44" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="46" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="93" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="154" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="18" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="2" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="32" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="81" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="4" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="7" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="9" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="6" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="21" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="50" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="5" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="17" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="9" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="16" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="35" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="13" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="29" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="3" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="17" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="47" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="15" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="51" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="40" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="13" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="73" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="35" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="37" height="1" border="0" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>

  <tr>
   <td colspan="33"><img name="novareceita_r1_c1" src="img/novareceita/novareceita_r1_c1.png" width="1024" height="110" border="0" id="novareceita_r1_c1" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="110" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="3"><a href="receita.jsp" ><img name="novareceita_r2_c1" src="img/novareceita/novareceita_r2_c1.png" width="183" height="70" border="0" id="novareceita_r2_c1" alt="" /></a></td>
   <td colspan="30" width="100%" bgcolor="#009933"><img name="novareceita_r2_c4" src="img/novareceita/novareceita_r2_c4.png" width="841" height="55" border="0" id="novareceita_r2_c4" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="55" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="30"><img name="novareceita_r3_c4" src="img/novareceita/novareceita_r3_c4.png" width="841" height="16" border="0" id="novareceita_r3_c4" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="15" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="5" colspan="3"><a href="home.jsp" ><img name="novareceita_r4_c1" src="img/novareceita/novareceita_r4_c1.png" width="183" height="70" border="0" id="novareceita_r4_c1" alt="" /></a></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="28"><img name="novareceita_r5_c4" src="img/novareceita/novareceita_r5_c4.png" width="769" height="32" border="0" id="novareceita_r5_c4" alt="" /></td>
   <td><a href="receita.jsp" ><img name="novareceita_r5_c32" src="img/novareceita/novareceita_r5_c32.png" width="35" height="32" border="0" id="novareceita_r5_c32" alt="" /></a></td>
   <td><img name="novareceita_r5_c33" src="img/novareceita/novareceita_r5_c33.png" width="37" height="32" border="0" id="novareceita_r5_c33" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="32" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="30" width="100%"><img name="novareceita_r6_c4" src="img/novareceita/novareceita_r6_c4.png" width="100%" height="4" border="0" id="novareceita_r6_c4" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="4" border="0" alt="" /></td>
  </tr>
  <tr>
   <td><img name="novareceita_r7_c4" src="img/novareceita/novareceita_r7_c4.png" width="154" height="1" border="0" id="novareceita_r7_c4" alt="" /></td>
   <td rowspan="3" colspan="26"><img name="novareceita_r7_c5" src="img/novareceita/novareceita_r7_c5.png" width="300" height="49" border="0" id="novareceita_r7_c5" alt="" /></td>
   <td colspan="3"><img name="novareceita_r7_c31" src="img/novareceita/novareceita_r7_c31.png" width="145" height="1" border="0" id="novareceita_r7_c31" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="26"><img name="novareceita_r8_c4" src="img/novareceita/novareceita_r8_c4.png" width="290" height="525" border="0" id="novareceita_r8_c4" alt="" /></td>
   <td rowspan="26" colspan="3"><img name="novareceita_r8_c31" src="img/novareceita/novareceita_r8_c31.png" width="320" height="525" border="0" id="novareceita_r8_c31" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="32" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="3"><a href="conta.jsp" ><img name="novareceita_r9_c1" src="img/novareceita/novareceita_r9_c1.png" width="183" height="70" border="0" id="novareceita_r9_c1" alt="" /></a></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="16" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="13"><img name="novareceita_r10_c5" src="img/novareceita/novareceita_r10_c5.png" width="253" height="27" border="0" id="novareceita_r10_c5" alt="" /></td>
   <td rowspan="5" colspan="3"><img name="novareceita_r10_c18" src="img/novareceita/novareceita_r10_c18.png" width="40" height="75" border="0" id="novareceita_r10_c18" alt="" /></td>
   <td colspan="10"><img name="novareceita_r10_c21" src="img/novareceita/novareceita_r10_c21.png" width="229" height="27" border="0" id="novareceita_r10_c21" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="27" border="0" alt="" /></td>
  </tr>
  <form name="novareceita" action="salvarreceita.jsp" method="post" >
  <tr>
   <td rowspan="4" colspan="3"><img name="novareceita_r11_c5" src="img/novareceita/novareceita_r11_c5.png" width="21" height="48" border="0" id="novareceita_r11_c5" alt="" /></td>
   <td rowspan="2"><img name="novareceita_r11_c8" src="img/novareceita/novareceita_r11_c8.png" width="32" height="34" border="0" id="novareceita_r11_c8" alt="" /></td>
   <td rowspan="2" colspan="7">
   
   <input type="text" name="txtValor" style="width:175px; height:30px; border-left:hidden; border-top:1px solid #7F9DB9; border-bottom:1px solid #7F9DB9; border-right:1px solid #7F9DB9; text-align:right;" />
   
	</td>
   <td rowspan="4" colspan="2"><img name="novareceita_r11_c16" src="img/novareceita/novareceita_r11_c16.png" width="22" height="48" border="0" id="novareceita_r11_c16" alt="" /></td>
   <td rowspan="4"><img name="novareceita_r11_c21" src="img/novareceita/novareceita_r11_c21.png" width="13" height="48" border="0" id="novareceita_r11_c21" alt="" /></td>
   <td rowspan="3" colspan="2"><img name="novareceita_r11_c22" src="img/novareceita/novareceita_r11_c22.png" width="32" height="36" border="0" id="novareceita_r11_c22" alt="" /></td>
   <td rowspan="3" colspan="6">
   
   <input type="text" name="txtData" style="width:168px; height:32px; border-left:hidden; border-top:1px solid #7F9DB9; border-bottom:1px solid #7F9DB9; border-right:1px solid #7F9DB9; text-align:right;" />
   
	</td>
   <td rowspan="4"><img name="novareceita_r11_c30" src="img/novareceita/novareceita_r11_c30.png" width="13" height="48" border="0" id="novareceita_r11_c30" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="27" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="5" colspan="3"><a href="cartao.jsp" ><img name="novareceita_r12_c1" src="img/novareceita/novareceita_r12_c1.png" width="183" height="70" border="0" id="novareceita_r12_c1" alt="" /></a></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="7" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="8"><img name="novareceita_r13_c8" src="img/novareceita/novareceita_r13_c8.png" width="210" height="14" border="0" id="novareceita_r13_c8" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="2" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="8"><img name="novareceita_r14_c22" src="img/novareceita/novareceita_r14_c22.png" width="203" height="12" border="0" id="novareceita_r14_c22" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="12" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="26"><img name="novareceita_r15_c5" src="img/novareceita/novareceita_r15_c5.png" width="300" height="25" border="0" id="novareceita_r15_c5" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="25" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="26"><img name="novareceita_r16_c5" src="img/novareceita/novareceita_r16_c5.png" width="542" height="25" border="0" id="novareceita_r16_c5" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="24" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="4" colspan="3"><a href="despesa.jsp" ><img name="novareceita_r17_c1" src="img/novareceita/novareceita_r17_c1.png" width="183" height="70" border="0" id="novareceita_r17_c1" alt="" /></a></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="2"><img name="novareceita_r18_c5" src="img/novareceita/novareceita_r18_c5.png" width="20" height="47" border="0" id="novareceita_r18_c5" alt="" /></td>
   <td colspan="23">
   
   <input type="text" name="txtTitulo" style="width:505px; height:30px; border-left:hidden; border-top:1px solid #7F9DB9; border-bottom:1px solid #7F9DB9; border-right:1px solid #7F9DB9; border-left:1px solid #7F9DB9;" />
   
	</td>
   <td rowspan="2"><img name="novareceita_r18_c30" src="img/novareceita/novareceita_r18_c30.png" width="13" height="47" border="0" id="novareceita_r18_c30" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="34" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="23"><img name="novareceita_r19_c7" src="img/novareceita/novareceita_r19_c7.png" width="509" height="13" border="0" id="novareceita_r19_c7" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="13" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="9"><img name="novareceita_r20_c5" src="img/novareceita/novareceita_r20_c5.png" width="160" height="42" border="0" id="novareceita_r20_c5" alt="" /></td>
   <td rowspan="2" colspan="17"><img name="novareceita_r20_c14" src="img/novareceita/novareceita_r20_c14.png" width="382" height="42" border="0" id="novareceita_r20_c14" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="22" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="3"><a href="logout.jsp" ><img name="novareceita_r21_c1" src="img/novareceita/novareceita_r21_c1.png" width="183" height="62" border="0" id="novareceita_r21_c1" alt="" /></a></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="20" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3"><img name="novareceita_r22_c5" src="img/novareceita/novareceita_r22_c5.png" width="18" height="55" border="0" id="novareceita_r22_c5" alt="" /></td>
   <td colspan="5">
   
      <input type="checkbox" name="efetuada" value="1" > <b>Efetuada</b>
   
   </td>
   <td rowspan="3" colspan="3"><img name="novareceita_r22_c11" src="img/novareceita/novareceita_r22_c11.png" width="22" height="55" border="0" id="novareceita_r22_c11" alt="" /></td>
   <td rowspan="3"><img name="novareceita_r22_c14" src="img/novareceita/novareceita_r22_c14.png" width="21" height="55" border="0" id="novareceita_r22_c14" alt="" /></td>
   <td colspan="15">
   
   <input type="checkbox" name="receitafixa" value="true" >Receita Fixa
   <span>&nbsp;&nbsp;&nbsp;<b>Qtd.</b></span> <input type="text" name="txtQtd" style="width:61px; height:27px; border-left:hidden; border-top:1px solid #7F9DB9; border-bottom:1px solid #7F9DB9; border-right:1px solid #7F9DB9; border-left:1px solid #7F9DB9; text-align:right;" />
   <span>&nbsp;&nbsp;&nbsp;<b>Valor</b></span> <input type="text" name="txtValorParcela" style="width:79px; height:27px; border-left:hidden; border-top:1px solid #7F9DB9; border-bottom:1px solid #7F9DB9; border-right:1px solid #7F9DB9; border-left:1px solid #7F9DB9; text-align:right;" />
   
   </td>
   <td rowspan="3"><img name="novareceita_r22_c30" src="img/novareceita/novareceita_r22_c30.png" width="13" height="55" border="0" id="novareceita_r22_c30" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="34" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="5"><img name="novareceita_r23_c6" src="img/novareceita/novareceita_r23_c6.png" width="120" height="21" border="0" id="novareceita_r23_c6" alt="" /></td>
   <td rowspan="2" colspan="15"><img name="novareceita_r23_c15" src="img/novareceita/novareceita_r23_c15.png" width="348" height="21" border="0" id="novareceita_r23_c15" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="8" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="3"><img name="novareceita_r24_c1" src="img/novareceita/novareceita_r24_c1.png" width="183" height="39" border="0" id="novareceita_r24_c1" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="13" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="26"><img name="novareceita_r25_c5" src="img/novareceita/novareceita_r25_c5.png" width="300" height="15" border="0" id="novareceita_r25_c5" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="15" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="7" colspan="3"><img name="novareceita_r26_c5" src="img/novareceita/novareceita_r26_c5.png" width="21" height="79" border="0" id="novareceita_r26_c5" alt="" /></td>
   <td rowspan="4" colspan="2"><img name="novareceita_r26_c8" src="img/novareceita/novareceita_r26_c8.png" width="113" height="34" border="0" id="novareceita_r26_c8" alt="" /></td>
   <td rowspan="2" colspan="3"><a href="categoriaReceita.jsp" ><img name="novareceita_r26_c10" src="img/novareceita/novareceita_r26_c10.png" width="20" height="20" border="0" id="novareceita_r26_c10" alt="" /></a></td>
   <td rowspan="4" colspan="4"><img name="novareceita_r26_c13" src="img/novareceita/novareceita_r26_c13.png" width="82" height="34" border="0" id="novareceita_r26_c13" alt="" /></td>
   <td rowspan="7" colspan="2"><img name="novareceita_r26_c17" src="img/novareceita/novareceita_r26_c17.png" width="26" height="79" border="0" id="novareceita_r26_c17" alt="" /></td>
   <td rowspan="7"><img name="novareceita_r26_c19" src="img/novareceita/novareceita_r26_c19.png" width="16" height="79" border="0" id="novareceita_r26_c19" alt="" /></td>
   <td rowspan="4" colspan="3"><img name="novareceita_r26_c20" src="img/novareceita/novareceita_r26_c20.png" width="77" height="34" border="0" id="novareceita_r26_c20" alt="" /></td>
   <td rowspan="2" colspan="2"><a href="novaConta.jsp" ><img name="novareceita_r26_c23" src="img/novareceita/novareceita_r26_c23.png" width="20" height="20" border="0" id="novareceita_r26_c23" alt="" /></a></td>
   <td rowspan="2"><img name="novareceita_r26_c25" src="img/novareceita/novareceita_r26_c25.png" width="47" height="20" border="0" id="novareceita_r26_c25" alt="" /></td>
   <td rowspan="7"><img name="novareceita_r26_c26" src="img/novareceita/novareceita_r26_c26.png" width="15" height="79" border="0" id="novareceita_r26_c26" alt="" /></td>
   <td rowspan="8"><img name="novareceita_r26_c27" src="img/novareceita/novareceita_r26_c27.png" width="51" height="193" border="0" id="novareceita_r26_c27" alt="" /></td>
   <td rowspan="3"><img name="novareceita_r26_c28" src="img/novareceita/novareceita_r26_c28.png" width="40" height="29" border="0" id="novareceita_r26_c28" alt="" /></td>
   <td rowspan="8" colspan="2"><img name="novareceita_r26_c29" src="img/novareceita/novareceita_r26_c29.png" width="14" height="193" border="0" id="novareceita_r26_c29" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="11" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="7"><img name="novareceita_r27_c1" src="img/novareceita/novareceita_r27_c1.png" width="44" height="182" border="0" id="novareceita_r27_c1" alt="" /></td>
   <td rowspan="4"><a href="meusDados.jsp" ><img name="novareceita_r27_c2" src="img/novareceita/novareceita_r27_c2.png" width="46" height="50" border="0" id="novareceita_r27_c2" alt="" /></a></td>
   <td rowspan="7"><img name="novareceita_r27_c3" src="img/novareceita/novareceita_r27_c3.png" width="93" height="182" border="0" id="novareceita_r27_c3" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="9" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="3"><img name="novareceita_r28_c10" src="img/novareceita/novareceita_r28_c10.png" width="20" height="14" border="0" id="novareceita_r28_c10" alt="" /></td>
   <td rowspan="2" colspan="3"><img name="novareceita_r28_c23" src="img/novareceita/novareceita_r28_c23.png" width="67" height="14" border="0" id="novareceita_r28_c23" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="9" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3"><input type="image" src="img/novareceita/novareceita_r29_c28.png" name="btnCadastrar" width="40" height="35" border="0" onClick="document.formCadastro.submit()" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="5" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="9">
   
       <select name="categoriareceita" style="width:215px; height:30px;">
   	<%
                CategoriaDAO catDAO = new CategoriaDAO();
                ArrayList<Categoria> listaCategoria = catDAO.Consultar();
                
                for(int controle = 0; controle < listaCategoria.size(); controle++){ %>
                   <option value="<% out.print(listaCategoria.get(controle).getId()); %> "> <% out.print(listaCategoria.get(controle).getDescricao()); %> </option>
            <%    }
            %>
   
   </td>
   <td rowspan="2" colspan="6">
   
   <select name="contareceita" style="width:144px; height:30px;">
   	<%
                ContaDAO cDAO = new ContaDAO();
                ArrayList<Conta> lista = cDAO.ConsultarTodos(Integer.parseInt(session.getAttribute("idUsuario").toString()));
                
                for(int controle = 0; controle < lista.size(); controle++){ %>
                   <option value="<% out.print(lista.get(controle).getId()); %> "> <% out.print(lista.get(controle).getDescricao()); %> </option>
            <%    }
            %>
   
	</td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="27" border="0" alt="" /></td>
  </tr>
  </form>
  <tr>
   <td rowspan="3"><img name="novareceita_r31_c2" src="img/novareceita/novareceita_r31_c2.png" width="46" height="132" border="0" id="novareceita_r31_c2" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="3" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="9"><img name="novareceita_r32_c8" src="img/novareceita/novareceita_r32_c8.png" width="215" height="15" border="0" id="novareceita_r32_c8" alt="" /></td>
   <td colspan="6"><img name="novareceita_r32_c20" src="img/novareceita/novareceita_r32_c20.png" width="144" height="15" border="0" id="novareceita_r32_c20" alt="" /></td>
   <td rowspan="2"><img name="novareceita_r32_c28" src="img/novareceita/novareceita_r32_c28.png" width="40" height="129" border="0" id="novareceita_r32_c28" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="15" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="22"><img name="novareceita_r33_c5" src="img/novareceita/novareceita_r33_c5.png" width="437" height="114" border="0" id="novareceita_r33_c5" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="114" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="11"><img name="novareceita_r34_c1" src="img/novareceita/novareceita_r34_c1.png" width="482" height="25" border="0" id="novareceita_r34_c1" alt="" /></td>
   <td colspan="22"><img name="novareceita_r34_c12" src="img/novareceita/novareceita_r34_c12.png" width="542" height="25" border="0" id="novareceita_r34_c12" alt="" /></td>
   <td><img src="img/novareceita/spacer.gif" width="1" height="25" border="0" alt="" /></td>
  </tr>
</table>
</body>
</html>
