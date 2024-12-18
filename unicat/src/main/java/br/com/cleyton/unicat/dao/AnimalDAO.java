package br.com.cleyton.unicat.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.cleyton.unicat.model.Animal;

@Repository
public class AnimalDAO {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public AnimalDAO() {}
	
	@Transactional(readOnly=false)
	public void salvar(Animal animal) {
		entityManager.persist(animal);
	}
	
	@Transactional(readOnly=true)
	public List<Animal> getAll() { 
		return entityManager.createQuery("from Animal",Animal.class).getResultList();
	}
	
	@Transactional(readOnly=true)
	public Animal getId(Long id) {
		return entityManager.find(Animal.class, id);
	}
	
	@Transactional(readOnly=false)
	public void excluir(Long id) {
		//torcedores.remove(id);
		entityManager.remove(getId(id));
	}
	
	@Transactional(readOnly=false)
	public void editar(Animal animal) {
		entityManager.merge(animal);
	}
}
