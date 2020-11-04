package br.com.etec.projetota.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import br.com.etec.projetota.model.Pedido;
import br.com.etec.projetota.repository.PedidoRepository;
import br.com.etec.projetota.repository.filter.PedidoFilter;
import br.com.etec.projetota.service.exceptions.ObjectNotFoundException;


@Service
public class PedidoService {
	
	@Autowired
	private PedidoRepository pedidoRepository;
	
	public List<Pedido> listarPedidos() {
		return pedidoRepository.findAll();
	}
	
	public Pedido findPedido(Long id) {
		Optional<Pedido> pedido = pedidoRepository.findById(id);
		return pedido.orElseThrow(() -> new ObjectNotFoundException(
				"Objeto não encontrado! Id: " + id +
				" Tipo " + Pedido.class.getName()));
	}
	
	public Pedido insert(Pedido pedido) {
		pedido.getItens().forEach(p -> p.setPedido(pedido));
		return pedidoRepository.save(pedido);
	}
	
	public void delete(Long id) {
		findPedido(id);
		pedidoRepository.deleteById(id);
	}
	
	public Pedido update(Long id, Pedido pedido) {
		Pedido pedidoSalvo = findPedido(id);
		
		pedidoSalvo.getItens().clear();
		pedidoSalvo.getItens().addAll(pedido.getItens());
		pedidoSalvo.getItens().forEach(p -> p.setPedido(pedidoSalvo));
		BeanUtils.copyProperties(pedido, pedidoSalvo, "id", "itens");
		return pedidoRepository.save(pedido);
	}
	
	  public Page<Pedido> pesquisar(PedidoFilter pedidoFilter, Pageable pageable) { 
		  return pedidoRepository.filtrar(pedidoFilter, pageable); 
		  }

	
}

