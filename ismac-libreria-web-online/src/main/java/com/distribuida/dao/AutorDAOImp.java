
package com.distribuida.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.query.Query;
import com.distribuida.entities.Autor;
import com.distribuida.entities.Categoria;


//anotaciones Spring Framework
@Repository
public class AutorDAOImp implements AutorDAO {
	
	//************** HQL*******************************
	// find All
	// SELECT au FROM Autor au;  // FROM Autor;
	
	// findOne
	// SELECT au FROM Autor au WHERE au.idAutor=: KeyIdAutor; 
	
	// add 
	// INSERT INTO Autor (....) VALUES (......) ???? NO ES EJECUTABLE EN HQL
	// INSERT INTO Autor (....) SELECT (......) ???? SI ES EJECUTABLE EN HQL
	
	// UP
	// UPDATE Autor SET au.nombre =: keyNombre, 
	//                  au.apellido =: keyApellido, 
	//                  au.pais =: keyPais
	//                  au.direccion =: keyDireccion,
	//                  au.telefono =: kayTelefono,
	//                  au.correo =: keyCorreo,
	//           WHERE au.idAutor = keyIdAutor;
	
	// del
	// DELETE FROM Autor au WHERE au.idAutor =: KeyIdAutor;
		
		@Autowired
		private SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<Autor> findAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("from Autor", Autor.class).getResultList();
	}

	@Override
	@Transactional
	public Autor findOne(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.get(Autor.class, id);
	}

	@Override
	@Transactional
	public void add(Autor autor) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(autor);

	}

	@Override
	@Transactional
	public void up(Autor autor) {
	    // TODO Auto-generated method stub
	    Session session = sessionFactory.getCurrentSession();
	    session.saveOrUpdate(autor);
	}

	@Override
	@Transactional
	public void del(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(findOne(id));

	}


}
