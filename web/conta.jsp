<%@page import="java.util.Date"%>
<%@page import="javax.management.modelmbean.RequiredModelMBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0014)about:internet -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>.: Sistema Gerenciador Financeiro :.</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">td img {display: block;}</style>
<!--Fireworks CS5 Dreamweaver CS5 target.  Created Tue Oct 14 14:14:01 GMT-0300 (Hora oficial do Brasil) 2014-->
</head>
<body bgcolor="#f6f6f6">
<table style="display: inline-table;" border="0" cellpadding="0" cellspacing="0" width="100%">
<!-- fwtable fwsrc="conta.png" fwpage="Page 1" fwbase="conta.png" fwstyle="Dreamweaver" fwdocid = "412407309" fwnested="0" -->
  <tr>
   <td><img src="img/conta/spacer.gif" width="44" height="1" border="0" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="46" height="1" border="0" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="93" height="1" border="0" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="27" height="1" border="0" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="21" height="1" border="0" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="30" height="1" border="0" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="24" height="1" border="0" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="32" height="1" border="0" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="132" height="1" border="0" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="17" height="1" border="0" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="385" height="1" border="0" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="144" height="1" border="0" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="29" height="1" border="0" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>

  <tr>
   <td colspan="13"><img name="conta_r1_c1" src="img/conta/conta_r1_c1.png" width="1024" height="110" border="0" id="conta_r1_c1" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="1" height="110" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="3"><a href="conta.jsp" ><img name="conta_r2_c1" src="img/conta/conta_r2_c1.png" width="183" height="70" border="0" id="conta_r2_c1" alt="" /></a></td>
   <td colspan="10" width="100%" bgcolor="#0000FF"><img name="conta_r2_c4" src="img/conta/conta_r2_c4.png" width="841" height="55" border="0" id="conta_r2_c4" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="1" height="55" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="10"><img name="conta_r3_c4" src="img/conta/conta_r3_c4.png" width="841" height="33" border="0" id="conta_r3_c4" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="1" height="15" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="5" colspan="3"><a href="home.jsp" ><img name="conta_r4_c1" src="img/conta/conta_r4_c1.png" width="183" height="70" border="0" id="conta_r4_c1" alt="" /></a></td>
   <td><img src="img/conta/spacer.gif" width="1" height="18" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="5" colspan="2"><img name="conta_r5_c4" src="img/conta/conta_r5_c4.png" width="48" height="54" border="0" id="conta_r5_c4" alt="" /></td>
   <td colspan="4"><img name="conta_r5_c6" src="img/conta/conta_r5_c6.png" width="218" height="4" border="0" id="conta_r5_c6" alt="" /></td>
   <td rowspan="2" colspan="2">
   		<div style="width:402px; height:30px; border:1px solid; border-radius:12px; background-color:#FFF; vertical-align:top;">
        	
               <%
                    Integer mes = null;
                    Integer ano = null;
                    if(request.getParameter("m") == null && request.getParameter("a") == null){
                        Date date = new Date();
                        mes = date.getMonth();
                        ano = 1900 + date.getYear();
                    }else{
                        mes = Integer.parseInt(request.getParameter("m"));
                        ano = Integer.parseInt(request.getParameter("a"));
                    }

               %>
               
               <script language="JavaScript">
                   function anterior(mes, ano){
                       mes--;
                       if(mes<1){
                           mes = 12;
                           ano--;
                       }
                       window.location="conta.jsp?m=" + mes + "&a=" + ano;
                   }
                   function proximo(mes, ano){
                       mes++;
                       if(mes>12){
                           mes = 1;
                           ano++;
                       }
                       window.location="conta.jsp?m=" + mes + "&a=" + ano;
                   }
                   
                   
                   
               </script>
               
               
                    
               <table style="height:30px;">
            	<tr>
                    <td><a href="#"><img  src="img/conta/conta_r1_c1_s1.png" style="height:26px;" onclick="<% out.print("anterior(" + mes + "," + ano + ");"); %>" /></a></td>
                    <td style="width: 335px; text-align:center;"> 
                    
                        <%
                           out.print(mes + " / " + ano);
                            
                        %>
                    </td>
                        <td><a href="#"><img  src="img/conta/conta_r1_c4_s1.png" style="height:26px;" onclick="<% out.print("proximo(" + mes + "," + ano + ");"); %>" /></a></td>
                </tr>
            </table>
        </div>
   </td>
   <td rowspan="5" colspan="2"><img name="conta_r5_c12" src="img/conta/conta_r5_c12.png" width="173" height="54" border="0" id="conta_r5_c12" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="1" height="4" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2"><a href="novaConta.jsp" ><img name="conta_r6_c6" src="img/conta/conta_r6_c6.png" width="30" height="30" border="0" id="conta_r6_c6" alt="" /></a></td>
   <td rowspan="2"><img name="conta_r6_c7" src="img/conta/conta_r6_c7.png" width="24" height="30" border="0" id="conta_r6_c7" alt="" /></td>
   <td rowspan="2"><a href="contaTransferencia.jsp"> <img name="conta_r6_c8" src="img/conta/conta_r6_c8.png" width="32" height="30" border="0" id="conta_r6_c8" alt="" /></a></td>
   <td rowspan="4"><img name="conta_r6_c9" src="img/conta/conta_r6_c9.png" width="132" height="50" border="0" id="conta_r6_c9" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="1" height="28" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="2"><img name="conta_r7_c10" src="img/conta/conta_r7_c10.png" width="402" height="22" border="0" id="conta_r7_c10" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="1" height="2" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="3"><img name="conta_r8_c6" src="img/conta/conta_r8_c6.png" width="86" height="20" border="0" id="conta_r8_c6" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="1" height="18" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="3"><a href="receita.jsp" ><img name="conta_r9_c1" src="img/conta/conta_r9_c1.png" width="183" height="70" border="0" id="conta_r9_c1" alt="" /></a></td>
   <td><img src="img/conta/spacer.gif" width="1" height="2" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="7"><img name="conta_r10_c4" src="img/conta/conta_r10_c4.png" width="27" height="489" border="0" id="conta_r10_c4" alt="" /></td>
   <td rowspan="7" colspan="8" style="vertical-align:top;">
   
   <div style="width:100%; border:1px solid; border-radius:5px; background-color:#FFF">
   
   <p></p>
      <p></p>
         <p></p>
   
   </div>  
   <br /><br />
   <div align="right">
   		<div  style="width:30%; height:23px; border:1px solid; border-radius:8px; background-color:#FFF; text-align:left;" >
              <font face="Arial, Helvetica, sans-serif"  >&nbsp;&nbsp;&nbsp;<b>
              			TOTAL 
              			&nbsp;&nbsp;&nbsp;
              			&nbsp;&nbsp;&nbsp;
              			&nbsp;&nbsp;&nbsp;                                                
              			&nbsp;&nbsp;&nbsp;
              			&nbsp;&nbsp;&nbsp;
              			&nbsp;&nbsp;&nbsp;
              			&nbsp;&nbsp;&nbsp;
              			&nbsp;&nbsp;&nbsp;
              			&nbsp;&nbsp;&nbsp;                                                
                        R$ -
              			
              
              </b></font>
   		</div>
   </div>  
   
   
   </td>
   <td rowspan="7"><img name="conta_r10_c13" src="img/conta/conta_r10_c13.png" width="29" height="489" border="0" id="conta_r10_c13" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="1" height="68" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><a href="cartao.jsp" ><img name="conta_r11_c1" src="img/conta/conta_r11_c1.png" width="183" height="70" border="0" id="conta_r11_c1" alt="" /></a></td>
   <td><img src="img/conta/spacer.gif" width="1" height="70" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><a href="despesa.jsp" ><img name="conta_r12_c1" src="img/conta/conta_r12_c1.png" width="183" height="70" border="0" id="conta_r12_c1" alt="" /></a></td>
   <td><img src="img/conta/spacer.gif" width="1" height="70" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><a href="logout.jsp" ><img name="conta_r13_c1" src="img/conta/conta_r13_c1.png" width="183" height="62" border="0" id="conta_r13_c1" alt="" /></a></td>
   <td><img src="img/conta/spacer.gif" width="1" height="62" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><img name="conta_r14_c1" src="img/conta/conta_r14_c1.png" width="183" height="39" border="0" id="conta_r14_c1" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="1" height="39" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2"><img name="conta_r15_c1" src="img/conta/conta_r15_c1.png" width="44" height="180" border="0" id="conta_r15_c1" alt="" /></td>
   <td><a href="meusDados.jsp"> <img name="conta_r15_c2" src="img/conta/conta_r15_c2.png" width="46" height="50" border="0" id="conta_r15_c2" alt="" /></a></td>
   <td rowspan="2"><img name="conta_r15_c3" src="img/conta/conta_r15_c3.png" width="93" height="180" border="0" id="conta_r15_c3" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="1" height="50" border="0" alt="" /></td>
  </tr>
  <tr>
   <td><img name="conta_r16_c2" src="img/conta/conta_r16_c2.png" width="46" height="130" border="0" id="conta_r16_c2" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="1" height="130" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="10" height="100px" style="vertical-align:bottom;"><img name="conta_r17_c1" src="img/conta/conta_r17_c1.png" width="466" height="27" border="0" id="conta_r17_c1" alt="" /></td>
   <td colspan="3"><img name="conta_r17_c11" src="img/conta/conta_r17_c11.png" width="558" height="27" border="0" id="conta_r17_c11" alt="" /></td>
   <td><img src="img/conta/spacer.gif" width="1" height="27" border="0" alt="" /></td>
  </tr>
</table>
</body>
</html>
