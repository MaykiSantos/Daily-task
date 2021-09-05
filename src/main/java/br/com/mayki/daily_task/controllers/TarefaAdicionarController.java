package br.com.mayki.daily_task.controllers;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.mayki.daily_task.daos.TarefaDao;
import br.com.mayki.daily_task.entidades.Tarefa;
import br.com.mayki.daily_task.utils.Conexao;

@WebServlet(urlPatterns = "/tarefas/adicionar")
public class TarefaAdicionarController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		
		if (id == null) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("/item.jsp");
			dispatcher.forward(req, resp);
		} else {

			
			try {
				TarefaDao tDao = new TarefaDao(Conexao.recupera());
				RequestDispatcher dispatcher = req.getRequestDispatcher("/item.jsp");
				req.setAttribute("tarefa", tDao.buscar(Integer.valueOf(id)));
				dispatcher.forward(req, resp);
				
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		Tarefa t = new Tarefa(req.getParameter("descricao"));
		try {
			TarefaDao tarefaDto = new TarefaDao(Conexao.recupera());
			if(id.isBlank()) {
				tarefaDto.salvar(t);				
			}else {
				tarefaDto.editar(Integer.valueOf(id), t.getDescricao());
			}

			resp.sendRedirect("/Daily_task/tarefas");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
