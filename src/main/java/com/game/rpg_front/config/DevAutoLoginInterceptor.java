package com.game.rpg_front.config;

import java.util.UUID;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
@Profile("dev")
public class DevAutoLoginInterceptor implements HandlerInterceptor {

    // 4A41B4264E020A37E063020011AC7586
    private static final UUID DEV_ADMIN_ID =
            UUID.fromString("4a41b426-4e02-0a37-e063-020011ac7586");

    @Override
    public boolean preHandle(
            HttpServletRequest request,
            HttpServletResponse response,
            Object handler
    ) {
        HttpSession session = request.getSession(true);

        if (session.getAttribute("userId") == null) {
            session.setAttribute("userId", DEV_ADMIN_ID);
        }

        return true;
    }
}