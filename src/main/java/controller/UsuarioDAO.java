package controller;

import model.Usuario;
import org.hibernate.Session;
import org.hibernate.Transaction;
public class UsuarioDAO {

    public void salvarUsuario(Usuario usuario) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {

            transaction = session.beginTransaction();

            session.save(usuario);

            transaction.commit();

        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
    public boolean validacao(String email, String senha) {

        Transaction transaction = null;
        Usuario usuario = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {

            transaction = session.beginTransaction();

            usuario = (Usuario) session.createQuery("FROM Usuario U WHERE U.email = :email").setParameter("email", email)
                    .uniqueResult();

            if (usuario != null && usuario.getSenha().equals(senha)) {
                return true;
            }
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return false;
    }

}