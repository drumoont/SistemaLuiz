/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.site.servlet;


import com.mycompany.site.util.SessaoHibernate;
import com.mycompany.site.util.entidades.Cliente;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author luizcanf
 */
public class CadastroServ extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        System.out.println("RECEBENDO O USUARIO DO FORM HTML");
        Cliente user = new Cliente();
        user.setEmail(request.getParameter("email"));
        user.setNome(request.getParameter("nomecompleto"));
        user.setSenha(request.getParameter("senha"));
        user.setSobrenome(request.getParameter("sobrenome"));
       
        
        try {
        System.out.println("SALVANDO USUARIO");
        Session sessao = SessaoHibernate.nova();
        Transaction tx = sessao.beginTransaction();
        sessao.save(user);
        tx.commit();
        sessao.close();
        System.out.println("USUARIO SALVO");
        } catch (Exception ex) {
            ex.printStackTrace();
            response.sendRedirect("CadastroUser.jsp?msg=ErroAoSalvarUsuario");
        }
        // redirecionar p outra página
        response.sendRedirect("Login.jsp?cadastro=sucesso");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}