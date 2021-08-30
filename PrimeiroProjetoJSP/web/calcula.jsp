<%@page import="br.uninove.matematica.OperacoesBasicas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>
    </head>
    <body>
        <h1>Pequena Calculadora</h1>
        <hr>
        
        <%
          String vA, vB, operacao;
          float resultado;
          vA = request.getParameter("vA");
          vB = request.getParameter("vB");
          operacao = request.getParameter("operacao");
          
          OperacoesBasicas mat = new OperacoesBasicas();
          mat.setValorA(Float.parseFloat(vA));
          mat.setValorB(Float.parseFloat(vB));
           
          switch(operacao) {
              case "somar":
                  resultado = mat.soma();
                  break;
              case "subtrair":
                  resultado = mat.subtrai();
                  break;
              case "multiplicar":
                  resultado = mat.multiplica();
                  break;
              case "dividir":
                  resultado = mat.divide();
                  break;
              default:
                  resultado = Float.NaN;
          }
        %>
        
        <p><strong>Valor A:</strong> <%= vA %></p>
        <p><strong>Valor B:</strong> <%= vB %></p>
        <p><strong>Operação:</strong> <%= operacao %></p>
        
        <p><strong>Resultado:</strong> <%= resultado %></p>
        
    </body>
</html>
