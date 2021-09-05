package br.com.mayki.daily_task.entidades;

import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Calendar;

public class Tarefa {

	private Integer id;
	private String descricao;
	private Boolean finalizado;
	private LocalDateTime dt_finalizado;
	private LocalDateTime dt_criacao;
	private LocalDateTime dt_ult_alt;
	private Boolean excluido;

	public Tarefa(String descricao) {
		this.descricao = descricao;
		this.dt_criacao = LocalDateTime.now();
		this.finalizado = false;
		this.excluido = false;
	}

	public Tarefa(Integer id, String descricao, Boolean finalizado, LocalDateTime dt_finalizado, LocalDateTime dt_criacao,
			LocalDateTime dt_ult_alt, Boolean excluido) {
		this.id = id;
		this.descricao = descricao;
		this.finalizado = finalizado;
		this.dt_finalizado = dt_finalizado;
		this.dt_criacao = dt_criacao;
		this.dt_ult_alt = dt_ult_alt;
		this.excluido = excluido;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Boolean getFinalizado() {
		return finalizado;
	}

	public void setFinalizado(Boolean finalizado) {
		this.finalizado = finalizado;
	}

	public LocalDateTime getDt_finalizado() {
		return dt_finalizado;
	}

	public void setDt_finalizado(LocalDateTime dt_finalizado) {
		this.dt_finalizado = dt_finalizado;
	}

	public LocalDateTime getDt_criacao() {
		return dt_criacao;
	}

	public void setDt_criacao(LocalDateTime dt_criacao) {
		this.dt_criacao = dt_criacao;
	}

	public LocalDateTime getDt_ult_alt() {
		return dt_ult_alt;
	}

	public void setDt_ult_alt(LocalDateTime dt_ult_alt) {
		this.dt_ult_alt = dt_ult_alt;
	}

	public Boolean getExcluido() {
		return excluido;
	}

	public void setExcluido(Boolean excluido) {
		this.excluido = excluido;
	}

}
