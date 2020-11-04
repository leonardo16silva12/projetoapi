package br.com.etec.projetota.repository.filter;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

public class PedidoFilter {

	private String nome;
	
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private LocalDate datapedidode;
	
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private LocalDate datapedidoate;
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public LocalDate getDatapedidode() {
		return datapedidode;
	}
	public void setDatapedidode(LocalDate datapedidode) {
		this.datapedidode = datapedidode;
	}
	public LocalDate getDatapedidoate() {
		return datapedidoate;
	}
	public void setDatapedidoate(LocalDate datapedidoate) {
		this.datapedidoate = datapedidoate;
	}

	
}
