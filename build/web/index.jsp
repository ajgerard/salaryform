<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css.css" />
        <title>Salary Calculator</title>
    </head>
    <body>
        <h1>Salary Calculator</h1>
        
        <form name="salaryform" action="results.jsp" method="post">
            <table> 
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hoursw" value="" size="20" required></td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="hourlyp" value="" size="20" required></td>
                    </tr>
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="pred" value="" size="20" required></td>
                    </tr>
                    
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="postd" value="" size="20" required></td>
                    </tr>
                </tbody>
            </table>
            
            <br><br>
            <div>
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            </div>
        </form>
    </body>
</html>

