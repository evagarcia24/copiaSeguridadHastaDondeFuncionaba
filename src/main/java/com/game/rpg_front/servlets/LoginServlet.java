package com.game.rpg_front.servlets;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        req.getRequestDispatcher("/login.jsp").forward(req, resp);
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        
        String usuario = req.getParameter("usuario");
        String password = req.getParameter("password");
        
        // Validación simple (puedes mejorarla llamando a API del 8084)
        if(usuario != null && password != null && 
           usuario.equals("jugador") && password.equals("1234")) {
            
            // Login OK
            HttpSession session = req.getSession();
            session.setAttribute("usuario", usuario);
            resp.sendRedirect("/game");
            
        } else {
            // Login KO
            req.setAttribute("error", "Usuario o contraseña incorrectos");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
    }
}