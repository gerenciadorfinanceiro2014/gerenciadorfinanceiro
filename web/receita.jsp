<%@page import="br.com.server.model.Receita"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.server.dao.ReceitaDAO"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0014)about:internet -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>.:: Sistema Gerenciador Financeiro ::.</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">td img {display: block;}</style>
<!--Fireworks CS5 Dreamweaver CS5 target.  Created Fri Nov 07 00:10:29 GMT-0200 2014-->
</head>
<body bgcolor="#f6f6f6">
<table style="display: inline-table;" border="0" cellpadding="0" cellspacing="0" width="100%">
<!-- fwtable fwsrc="receita.png" fwpage="Page 1" fwbase="receita.png" fwstyle="Dreamweaver" fwdocid = "799369306" fwnested="0" -->
  <tr>
   <td><img src="img/receita/img/receita/spacer.gif" width="44" height="1" border="0" alt="" /></td>
   <td><img src="img/receita/img/receita/spacer.gif" width="46" height="1" border="0" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="93" height="1" border="0" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="27" height="1" border="0" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="23" height="1" border="0" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="30" height="1" border="0" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="132" height="1" border="0" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="88" height="1" border="0" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="18" height="1" border="0" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="344" height="1" border="0" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="149" height="1" border="0" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="30" height="1" border="0" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>

  <tr>
   <td colspan="12"><img name="receita_r1_c1" src="img/receita/receita_r1_c1.png" width="1024" height="110" border="0" id="receita_r1_c1" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="1" height="110" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="3"><a href="receita.jsp"><img name="receita_r2_c1" src="img/receita/receita_r2_c1.png" width="183" height="70" border="0" id="receita_r2_c1" alt="" /></a></td>
   <td colspan="9" width="100%" bgcolor="#009933"><img name="receita_r2_c4" src="img/receita/receita_r2_c4.png" width="841" height="55" border="0" id="receita_r2_c4" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="1" height="55" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="17" width="100px"><img name="receita_r3_c4" src="img/receita/receita_r3_c4.png" width="27" height="577" border="0" id="receita_r3_c4" alt="" /></td>
   <td rowspan="3" colspan="3"><img name="receita_r3_c5" src="img/receita/receita_r3_c5.png" width="185" height="37" border="0" id="receita_r3_c5" alt="" /></td>
   <td rowspan="2" colspan="4"><img name="receita_r3_c8" src="img/receita/receita_r3_c8.png" width="599" height="33" border="0" id="receita_r3_c8" alt="" /></td>
   <td rowspan="17"><img name="receita_r3_c12" src="img/receita/receita_r3_c12.png" width="30" height="577" border="0" id="receita_r3_c12" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="1" height="15" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="5" colspan="3"><a href="home.jsp"><img name="receita_r4_c1" src="img/receita/receita_r4_c1.png" width="183" height="70" border="0" id="receita_r4_c1" alt="" /></a></td>
   <td><img src="img/receita/spacer.gif" width="1" height="18" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="3">
   	
    <div style="width:402px; height:30px; border:1px solid; border-radius:12px; background-color:#FFF">
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
                       window.location="receita.jsp?m=" + mes + "&a=" + ano;
                   }
                   function proximo(mes, ano){
                       mes++;
                       if(mes>12){
                           mes = 1;
                           ano++;
                       }
                       window.location="receita.jsp?m=" + mes + "&a=" + ano;
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
   <td rowspan="5"><img name="receita_r5_c11" src="img/receita/receita_r5_c11.png" width="149" height="54" border="0" id="receita_r5_c11" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="1" height="4" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="4"><img name="receita_r6_c5" src="img/receita/receita_r6_c5.png" width="23" height="50" border="0" id="receita_r6_c5" alt="" /></td>
   <td rowspan="2"><a href="novaReceita.jsp"><img name="receita_r6_c6" src="img/receita/receita_r6_c6.png" width="30" height="30" border="0" id="receita_r6_c6" alt="" /></a></td>
   <td rowspan="4"><img name="receita_r6_c7" src="img/receita/receita_r6_c7.png" width="132" height="50" border="0" id="receita_r6_c7" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="1" height="29" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="3"><img name="receita_r7_c8" src="img/receita/receita_r7_c8.png" width="450" height="21" border="0" id="receita_r7_c8" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2"><img name="receita_r8_c6" src="img/receita/receita_r8_c6.png" width="30" height="20" border="0" id="receita_r8_c6" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="1" height="18" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="3"><a href="conta.jsp"><img name="receita_r9_c1" src="img/receita/receita_r9_c1.png" width="183" height="70" border="0" id="receita_r9_c1" alt="" /></a></td>
   <td><img src="img/receita/spacer.gif" width="1" height="2" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="7" style="vertical-align:top;">
   <div style="width:85%; border:1px solid; border-radius:5px; background-color:#FFF">
        <table border="0" width="100%">
       <%
            ReceitaDAO rDAO = new ReceitaDAO();
            ArrayList<Receita> lstReceita = rDAO.ConsultarTodos(Integer.parseInt(session.getAttribute("idUsuario").toString()), mes, ano);
            
            for(int controle = 0; controle < lstReceita.size(); controle++){
       %>         
       
           <tr>
               <td><% out.print("<a href='editarReceita.jsp?idReceita="+lstReceita.get(controle).getId()+"'>"+lstReceita.get(controle).getDescricao()+"</a>"); %></td><td>Parcelas</td><td>R$ <%out.print(lstReceita.get(controle).getValor()); %></td><td width="10px"><img src="img/conta/conta_r1_c3_s1.png" /></td><td width="30px"><a href="excluirReceita.jsp?idReceita=<% out.print(lstReceita.get(controle).getId()); %>"><img src="img/conta/conta_r1_c3_s2.png" /></a></td>
           </tr>
           <tr>
               <td><% out.print(lstReceita.get(controle).getData()); %></td><td>R$ <% out.print(lstReceita.get(controle).getNum_parcela() + " / " + lstReceita.get(controle).getMax_parcela()); %></td><td colspan="2">&nbsp;</td>
           </tr>
           
       <%         
                if(controle < (lstReceita.size() - 1)){
                    out.print("<tr><td colspan='4'><hr width='100%'></td></tr>");
                }
           }
            
       %>
       </table>
       
       
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
   <td><img src="img/receita/spacer.gif" width="1" height="68" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="3"><a href="cartao.jsp"><img name="receita_r11_c1" src="img/receita/receita_r11_c1.png" width="183" height="70" border="0" id="receita_r11_c1" alt="" /></a></td>
   <td><img src="img/receita/spacer.gif" width="1" height="53" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="7"><img name="receita_r12_c5" src="img/receita/receita_r12_c5.png" width="784" height="32" border="0" id="receita_r12_c5" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="1" height="17" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="3"><a href="despesa.jsp"><img name="receita_r13_c1" src="img/receita/receita_r13_c1.png" width="183" height="70" border="0" id="receita_r13_c1" alt="" /></a></td>
   <td><img src="img/receita/spacer.gif" width="1" height="15" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="6" colspan="5"><img name="receita_r14_c5" src="img/receita/receita_r14_c5.png" width="291" height="337" border="0" id="receita_r14_c5" alt="" /></td>
   <td colspan="2"></td>
   <td><img src="img/receita/spacer.gif" width="1" height="32" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="5" colspan="2"><img name="receita_r15_c10" src="img/receita/receita_r15_c10.png" width="493" height="305" border="0" id="receita_r15_c10" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="1" height="23" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><a href="logout.jsp"><img name="receita_r16_c1" src="img/receita/receita_r16_c1.png" width="183" height="62" border="0" id="receita_r16_c1" alt="" /></a></td>
   <td><img src="img/receita/spacer.gif" width="1" height="62" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><img name="receita_r17_c1" src="img/receita/receita_r17_c1.png" width="183" height="39" border="0" id="receita_r17_c1" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="1" height="39" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2"><img name="receita_r18_c1" src="img/receita/receita_r18_c1.png" width="44" height="181" border="0" id="receita_r18_c1" alt="" /></td>
   <td><a href="meusDados.jsp"><img name="receita_r18_c2" src="img/receita/receita_r18_c2.png" width="46" height="50" border="0" id="receita_r18_c2" alt="" /></a></td>
   <td rowspan="2"><img name="receita_r18_c3" src="img/receita/receita_r18_c3.png" width="93" height="181" border="0" id="receita_r18_c3" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="1" height="50" border="0" alt="" /></td>
  </tr>
  <tr>
   <td><img name="receita_r19_c2" src="img/receita/receita_r19_c2.png" width="46" height="131" border="0" id="receita_r19_c2" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="1" height="131" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="8"><img name="receita_r20_c1" src="img/receita/receita_r20_c1.png" width="483" height="26" border="0" id="receita_r20_c1" alt="" /></td>
   <td colspan="4"><img name="receita_r20_c9" src="img/receita/receita_r20_c9.png" width="541" height="26" border="0" id="receita_r20_c9" alt="" /></td>
   <td><img src="img/receita/spacer.gif" width="1" height="26" border="0" alt="" /></td>
  </tr>
</table>
</body>
</html>
