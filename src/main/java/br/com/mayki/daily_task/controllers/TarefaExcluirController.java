package br.com.mayki.daily_task.controllers;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.mayki.daily_task.daos.TarefaDao;
import br.com.mayki.daily_task.utils.Conexao;

@WebServlet(urlPatterns = "/tarefas/excluir")
public class TarefaExcluirController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			TarefaDao tDao = new TarefaDao(Conexao.recupera());

			tDao.deletSoft(Integer.parseInt(req.getParameter("id")));

			resp.sendRedirect("/Daily_task/tarefas");

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
