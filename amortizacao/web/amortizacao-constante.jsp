<%@page import="org.apache.jasper.tagplugins.jstl.core.Redirect"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "cabecalho.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <title>Amortização Constante</title>
    </head>
    <body>
        
        <h1 class="center align">Amortização Constante</h1>
        
        <div class="container">
            <form class="col s12">
                
              <div class="row">   
                <div class="input-field col s4">
                    Valor Financiado <input placeholder="R$ 40000,00" type="text" name="saldo-devedor" >
                  
                </div>
                  
                <div class="input-field col s4">
                    Numero de meses <input placeholder="10" type="number" name="parcela">
                </div>
                  
                <div class="input-field col s4">
                    Juros a.m.(%) <input placeholder="10 %" type="text" name="juros">
                  
                </div>  
              </div>
               
              <div class="right"> 
                  <button class="btn-large waves-effect waves-light" type="submit">
                      Calcular
                  </button>
              </div>    
              
            </form>
        </div>
        
        <%
            Double saldoDevedor = 0.;
            Integer parcela = 0;
            Double taxaJuros = 0.;
            try{
                saldoDevedor = Double.parseDouble(request.getParameter("saldo-devedor"));
                parcela = Integer.parseInt(request.getParameter("parcela"));
                taxaJuros = Double.parseDouble(request.getParameter("juros"));
            }catch (Exception e){
                //
            }
           
            Double amortizacao = saldoDevedor/parcela;
            Double valorJuros = (saldoDevedor * taxaJuros)/100;
        %>
        
        <div class="container">
            
                <% if(saldoDevedor == 0.0 ||
                        parcela == 0 ||
                        taxaJuros == 0) {%>
                        <table>
                        <tr>
                            <td>
                                <div class="card-panel teal lighten-2">
                                      Preencha todos os campos
                                </div>
                            </td>
                        </tr>    
                        </table>    
                    <%} else {%>
                    <table class="highlight responsive-table">
                        <thead>
                            <tr>
                              <td>Período</td>
                              <td>Parcelas</td>
                              <td>Amortizações</td>
                              <td>Juros</td>
                              <td>Saldo Devedor</td>
                            </tr>
                        </thead>

                        <%for(int i=1; i<=parcela;i++){
                            saldoDevedor -= amortizacao;
                            Locale brasil = new Locale("pt", "BR") ;
                            %>
                            <tbody>
                                <tr>
                                    <td>  # <%= i%> </td>
                                    <td> <%=NumberFormat.getCurrencyInstance(brasil).format((amortizacao + valorJuros))%> </td>
                                    <td> <%=NumberFormat.getCurrencyInstance(brasil).format(amortizacao)%> </td>
                                    <td> <%=NumberFormat.getCurrencyInstance(brasil).format(valorJuros)%></td>
                                    <td> <%= NumberFormat.getCurrencyInstance(brasil).format(saldoDevedor)  %></td>
                                </tr>
                            </tbody> 
                            <% 
                               valorJuros = (saldoDevedor * taxaJuros)/100;
                               }%>
                    </table>              
                    <%}%>
            </table>          
        </div>
        
         <%@include file = "rodape.jsp" %>
            
        
    </body>
</html>
