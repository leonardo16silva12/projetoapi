package br.com.etec.projetota.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import br.com.etec.projetota.model.Categoria;
import br.com.etec.projetota.repository.CategoriaRepository;
import br.com.etec.projetota.service.exceptions.ObjectNotFoundException;

@Service
public class CategoriaService {
	@Autowired
	private CategoriaRepository categoriaRepository;
	
	public List<Categoria> listarTodasCategorias() {
		return categoriaRepository.findAll(Sort.by(Sort.Direction.ASC, "nome"));
	}
	
	public Categoria findCategoria(Integer id) {
		Optional<Categoria> categoria = categoriaRepository.findById(id);
		return categoria.orElseThrow(() -> new ObjectNotFoundException(
				"Objeto não encontrado! Id: " + id +
				" Tipo " + Categoria.class.getName()));
	}
	
	public Categoria insert(Categoria categoria) {
		return categoriaRepository.save(categoria);
	}
	
	public void delete(Integer id) {
		findCategoria(id);
		categoriaRepository.deleteById(id);
	}
	
	public Categoria update(int id, Categoria categoria) {
		Categoria categoriaSalva = findCategoria(id);
		BeanUtils.copyProperties(categoria, categoriaSalva, "id");
		return categoriaRepository.save(categoria);
	}
	
	public Page<Categoria> pesquisar(String nome, Pageable pageable){
    	return  categoriaRepository.findByNomeContainingOrderByNome(nome, pageable) ;
    }
}
