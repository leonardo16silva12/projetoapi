package br.com.etec.projetota.repository.produto;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import br.com.etec.projetota.model.Produto;

public class ProdutoRepositoryImpl implements ProdutoRepositoryQuery {

	@PersistenceContext
	private EntityManager manager;
	
	@Override
	public List<Produto> porNome(String nome) {
		String jpql = "from Produto where lower(nome) like lower(:nome) order by nome";
		
		List<Produto> produtosFiltrados = manager.createQuery(jpql, Produto.class)
				.setParameter("nome", "%" + nome + "%")
				.getResultList();
			return produtosFiltrados;
	
	
	
	
	}

}
