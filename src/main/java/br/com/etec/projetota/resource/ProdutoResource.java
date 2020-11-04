package br.com.etec.projetota.resource;

import java.net.URI;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import br.com.etec.projetota.model.Produto;
import br.com.etec.projetota.service.ProdutoService;

@RestController
@RequestMapping("/produtos")

public class ProdutoResource {
	@Autowired
	private ProdutoService produtoService;
	
	@GetMapping("/todos")
	public List<Produto> listarTodosProdutos(){
		return produtoService.listarProdutos();
	}
	
	@GetMapping("/pro/{nome}")
	public List<Produto> localizaProdutoNome(@PathVariable String nome) {
		return produtoService.localizaProdutoNome(nome);
	}
	
	 @GetMapping()
		public Page<Produto> pesquisar(@RequestParam(required = false,
		defaultValue= "") String nome, Pageable pageable) {
			return produtoService.pesquisar(nome, pageable);
		}
	
	@GetMapping("/{id}")
	public ResponseEntity<Produto> find(@PathVariable Integer id){
		Produto produto = produtoService.findProduto(id);
		
		return ResponseEntity.ok().body(produto);
	}
	
	@PostMapping()
	public ResponseEntity<Void> insert (@RequestBody Produto produto){
		
		produto = produtoService.insert(produto);
		
		URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(produto.getId()).toUri();
		
		return ResponseEntity.created(uri).build();
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<Void> delete(@PathVariable Integer id){
		produtoService.delete(id);
		
		return ResponseEntity.noContent().build();
	}
	
	 @PutMapping("/{id}")
	 public ResponseEntity<Produto> update(@RequestBody Produto produto, @PathVariable Integer id){
			try {
				Produto produtoSalvo = produtoService.update(id, produto);
				return ResponseEntity.ok(produtoSalvo);
			} catch(IllegalArgumentException e) {
				return ResponseEntity.notFound().build();
			}
	 }
}
