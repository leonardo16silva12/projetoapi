package br.com.etec.projetota.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import br.com.etec.projetota.model.Cliente;
import br.com.etec.projetota.repository.ClienteRepository;
import br.com.etec.projetota.service.exceptions.ObjectNotFoundException;

@Service
public class ClienteService {
	@Autowired
	private ClienteRepository clienteRepository;

	public List<Cliente> listarClientes() {
		return clienteRepository.findAll();  
	}
	
	public List<Cliente> localizaClienteNome(String nome) {
		return clienteRepository.porNome(nome);
	}
	
	public Page<Cliente> pesquisar(String nome, Pageable pageable) {
		return clienteRepository.findByNomeContainingOrderByNome(nome, pageable);
	}
	
	public Cliente find(Integer id) {
		Optional<Cliente> cliente = clienteRepository.findById(id);
		return cliente.orElseThrow(() -> new ObjectNotFoundException(
				"Objeto não encontrado ! Id: " + id + " Tipo: " 
		+ Cliente.class.getName()));
	}
	
	public Cliente insert(Cliente cliente) {
		return clienteRepository.save(cliente);
	}
	
	public Cliente update(int id, Cliente cliente) {
		Cliente clienteSalvo = find(id);
		BeanUtils.copyProperties(cliente, clienteSalvo, "id");
		return clienteRepository.save(cliente);
	}
	
	public void delete(Integer id) {
		find(id);
		clienteRepository.deleteById(id);
	}
}

