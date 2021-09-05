package br.com.mayki.daily_task.daos;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import br.com.mayki.daily_task.entidades.Tarefa;

public class TarefaDao {
	
	private Connection conexao;
	
	public TarefaDao(Connection c) {
		this.conexao = c;
	}
	
	public Boolean salvar(Tarefa t) throws SQLException {
		PreparedStatement sql = null;
		try {
			sql = conexao.prepareStatement("INSERT INTO tarefa (id, descricao, finalizado, dt_criacao, excluido) VALUES (NULL, ?, ?, ?, ?)");
			sql.setString(1, t.getDescricao());
			sql.setBoolean(2, t.getFinalizado());
			sql.setString(3, LocalDateTime.now().toString());
			sql.setBoolean(4, t.getExcluido());
			
			sql.execute();
			conexao.commit();
			
			
			conexao.close();
			sql.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			conexao.rollback();
			sql.close();
			conexao.close();
			
			return false;
		}
		
	}
	
	public Boolean deletSoft(Integer id) throws SQLException {
		PreparedStatement sql = null;
		try {
			sql = conexao.prepareStatement("UPDATE tarefa SET excluido=?, dt_ult_alt=? WHERE tarefa.id = ?");
			sql.setBoolean(1, true);
			sql.setString(2, LocalDateTime.now().toString());
			sql.setInt(3, id);
			
			sql.execute();
			conexao.commit();
			
			conexao.close();
			sql.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			conexao.rollback();
			sql.close();
			conexao.close();
			
			return false;
		}
	}
	
	public Boolean editar(Integer id, String desc) throws SQLException {
		PreparedStatement sql = null;
		try {
			sql = conexao.prepareStatement("UPDATE tarefa SET descricao=?, dt_ult_alt=? WHERE tarefa.id = ?");
			sql.setString(1, desc);
			sql.setString(2, LocalDateTime.now().toString());
			sql.setInt(3, id);
			
			sql.execute();
			conexao.commit();
			
			
			sql.close();
			conexao.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			conexao.rollback();
			sql.close();
			conexao.close();
			
			return false;
			
		}
	}

	public List<Tarefa> listar() throws SQLException {
		List<Tarefa> listaTarefa = new ArrayList<Tarefa>();
		PreparedStatement sql = null;
		try {
			sql = conexao.prepareStatement("SELECT * FROM tarefa WHERE tarefa.excluido = 0");
			
			sql.execute();
			
			ResultSet resultado = sql.getResultSet();
			
			while(resultado.next()) {
				listaTarefa.add(new Tarefa(
						resultado.getInt(1), 
						resultado.getString(2), 
						resultado.getBoolean(3), 
						(resultado.getDate(4) != null) ? LocalDateTime.now() : null, 
						(resultado.getDate(5) != null) ? LocalDateTime.now() : null, 
						(resultado.getDate(6) != null) ? LocalDateTime.now() : null, 
						resultado.getBoolean(7)));
			}
			
			sql.close();
			conexao.close();
			
			return listaTarefa;
		} catch (SQLException e) {
			e.printStackTrace();
			
			//conexao.rollback();
			sql.close();
			conexao.close();
			
			return listaTarefa;
		}
	}

	public Tarefa buscar(Integer id) throws SQLException {
		PreparedStatement sql = null;
		Tarefa t = null;
		try {
			sql = conexao.prepareStatement("SELECT * FROM tarefa WHERE tarefa.excluido = 0 AND tarefa.id = ?");
			sql.setInt(1, id);
			
			sql.execute();
			
			ResultSet resultado = sql.getResultSet();
			
			while(resultado.next()) {
				t = new Tarefa(
						resultado.getInt(1), 
						resultado.getString(2), 
						resultado.getBoolean(3), 
						(resultado.getDate(4) != null) ? LocalDateTime.now() : null, 
						(resultado.getDate(5) != null) ? LocalDateTime.now() : null, 
						(resultado.getDate(6) != null) ? LocalDateTime.now() : null, 
						resultado.getBoolean(7));
			}
			
			sql.close();
			conexao.close();
			
			return t;
		} catch (SQLException e) {
			e.printStackTrace();

			sql.close();
			conexao.close();
			
			return t;
		}
	}
	
	public void marcar(Integer id) throws SQLException {
		PreparedStatement sql = null;
		try {
			sql = conexao.prepareStatement("UPDATE tarefa SET finalizado = ?, dt_finalizado = ?, dt_ult_alt = ? WHERE tarefa.id = ?");
			sql.setBoolean(1, true);
			sql.setString(2, LocalDateTime.now().toString());
			sql.setString(3, LocalDateTime.now().toString());
			sql.setInt(4, id);
			
			sql.execute();
			conexao.commit();
			
			sql.close();
			conexao.close();
			
		} catch (SQLException e) {
			e.printStackTrace();

			conexao.rollback();
			sql.close();
			conexao.close();
		}
		
	}
	
	public void desmarcar(Integer id) throws SQLException {
		PreparedStatement sql = null;
		try {
			sql = conexao.prepareStatement("UPDATE tarefa SET finalizado = ?, dt_finalizado = ?, dt_ult_alt = ? WHERE tarefa.id = ?");
			sql.setBoolean(1, false);
			sql.setString(2, null);
			sql.setString(3, LocalDateTime.now().toString());
			sql.setInt(4, id);
			
			sql.execute();
			conexao.commit();
			
			sql.close();
			conexao.close();
			
		} catch (SQLException e) {
			e.printStackTrace();

			conexao.rollback();
			sql.close();
			conexao.close();
		}
		
	}

}
