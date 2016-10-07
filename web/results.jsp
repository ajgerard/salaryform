<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css.css" />
        <title>Salary Calculator Form</title>
    </head>
    
    
<%
        double hoursworked = Double.parseDouble(request.getParameter("hoursw"));
        double hourlypay = Double.parseDouble(request.getParameter("hourlyp"));
        double prededuct = Double.parseDouble(request.getParameter("pred"));
        double posttd = Double.parseDouble(request.getParameter("postd"));
        double hoursovertime;
        double rateover = hourlypay * 1.5;
        double grosspay;
        double taxamt;
        double pretpay;
        double posttpay;
        double netp;
        
        if (hoursworked > 40){
            hoursovertime = hoursworked - 40; 
            hoursworked = hoursworked - hoursovertime;
        }
        else
        {
            hoursovertime = 0;
        }
        
        grosspay = hoursworked * hourlypay + hoursovertime * rateover;
        
        pretpay = grosspay - prededuct;

        if (grosspay > 500){
            taxamt = pretpay * .22;
            netp = pretpay - taxamt;
        }
        else
        {
            taxamt = pretpay * .18;
            netp = pretpay - taxamt;
        }
        
        posttpay = netp;
        
        netp = netp - posttd;
    %>
  
    <body>
        <h1>Salary</h1>
        
        <table border="1">
            <tbody>
                <tr>
                    <td>Hours Worked:</td>
                    <td><%= hoursworked %></td>
                </tr> 
                
                <tr>
                    <td>Hourly Pay:</td>
                    <td><%= hourlypay %></td>
                </tr> 
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td><%= hoursovertime %></td>
                </tr> 
                
                <tr>
                    <td>Hourly Overtime Rate:</td>
                    <td><%= rateover %></td>
                </tr> 
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= grosspay %></td>
                </tr> 
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= prededuct %></td>
                </tr> 
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= pretpay %></td>
                </tr>  
                
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxamt %></td>
                </tr>  
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= posttpay %></td>
                </tr>  
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= posttd %></td>
                </tr>  
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netp %></td>
                </tr>  
            </tbody>    
        </table>
    </body>
</html>
