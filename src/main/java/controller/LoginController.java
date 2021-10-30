package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login")
public class LoginController extends HttpServlet {

    private UsuarioDAO loginDAO;

    public void init() {
        loginDAO = new UsuarioDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            authenticate(request, response);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    private void authenticate(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        if (loginDAO.validacao(email, senha)) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("logado.jsp");
            dispatcher.forward(request, response);
        } else {
            throw new Exception("login.jsp");
        }
    }

    private static final long serialVersionUID = 1l;
}