<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body { font-family: Arial; text-align: center; padding-top: 100px; }
        .error { color: red; }
        input { margin: 10px; padding: 5px; }
    </style>
</head>
<body>
    <h1>LOGIN</h1>
    <form action="login" method="post">
        <div>
            <label>Usuario:</label>
            <input type="text" name="usuario" required>
        </div>
        <div>
            <label>Password:</label>
            <input type="password" name="password" required>
        </div>
        <button type="submit">Entrar</button>
    </form>
    
    <% if(request.getAttribute("error") != null) { %>
        <p class="error"><%= request.getAttribute("error") %></p>
    <% } %>
</body>
</html>