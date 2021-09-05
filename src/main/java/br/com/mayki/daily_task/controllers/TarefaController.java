package br.com.mayki.daily_task.controllers;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.mayki.daily_task.daos.TarefaDao;
import br.com.mayki.daily_task.entidades.Tarefa;
import br.com.mayki.daily_task.utils.Conexao;

@WebServlet(urlPatterns = "/tarefas")
public class TarefaController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		try {
			TarefaDao tDto = new TarefaDao(Conexao.recupera());
			
			List<Tarefa> listaTarefas = tDto.listar();
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("/lista.jsp");
			req.setAttribute("tarefas", listaTarefas);
			req.setAttribute("Item", "Nome do Item");
			dispatcher.forward(req, resp);
		
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	
	
	
	
	

}
