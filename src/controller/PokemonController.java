package controller;

import java.sql.SQLException;
import java.util.List;

import dao.ConexionDB;
import dao.PokemonDAO;
import model.Pokemon;

public class PokemonController {
	
	private PokemonDAO dao;
	
	public PokemonController (){
		
		dao = new PokemonDAO();
		
	}
	
	public List<Pokemon> mostrarTodos () throws SQLException {
		
		return dao.mostrarTodos();
		
	}
	
	public Pokemon mostrarPokemonNombre (String nombre) throws SQLException {
		
		return dao.mostrarPokemonNombre(nombre);
		
	}
	
	public void cerrarConexion () throws SQLException {
		
		ConexionDB.cerrarConexion();
		
	}

}
