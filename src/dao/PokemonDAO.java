package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Pokemon;

public class PokemonDAO {
	
	public List<Pokemon> mostrarTodos () throws SQLException {
		
		List<Pokemon> listaPokemons = new ArrayList<>();
		
		String sql = "SELECT * FROM pokemons";
		
		try (Connection con = ConexionDB.getConexion();
		     PreparedStatement ps = con.prepareStatement(sql);
		     ResultSet rs = ps.executeQuery()) {
		    	 
		    	while(rs.next()) {
		    		
		    		Pokemon p = new Pokemon();
		    		
		    		p.setId(rs.getInt("id"));
		    		p.setNombre(rs.getString("nombre"));
		    		p.setTipos(rs.getString("tipo").split("/"));
		    		p.setPs(rs.getDouble("ps"));
		    		p.setAtq(rs.getDouble("ataque"));
		    		p.setDef(rs.getDouble("defensa"));
		    		p.setAtEsp(rs.getDouble("at_especial"));
		    		p.setDefEsp(rs.getDouble("def_especial"));
		    		p.setVel(rs.getDouble("velocidad"));
		    		
		    		listaPokemons.add(p);
		    		
		    	}
		    	 
		    } catch (SQLException e) {
		    	
		    	System.out.println("  [ERROR] Hay un error en el metodo mostrarTodos(): " + e.getMessage());
		    	
		    }
		
		return listaPokemons;
		
	}
	
	public Pokemon mostrarPokemonNombre (String nombre) throws SQLException {
		
		Pokemon p = new Pokemon();
		
		String sql = "SELECT * FROM pokemons WHERE nombre='" + nombre + "'";
		
		try (Connection con = ConexionDB.getConexion();
		     PreparedStatement ps = con.prepareStatement(sql);
		     ResultSet rs = ps.executeQuery()) {
		    	 
		    rs.next();
		    
    		p.setId(rs.getInt("id"));
    		p.setNombre(rs.getString("nombre"));
    		p.setTipos(rs.getString("tipo").split("/"));
    		p.setPs(rs.getDouble("ps"));
    		p.setAtq(rs.getDouble("ataque"));
    		p.setDef(rs.getDouble("defensa"));
    		p.setAtEsp(rs.getDouble("at_especial"));
    		p.setDefEsp(rs.getDouble("def_especial"));
    		p.setVel(rs.getDouble("velocidad"));
		    	 
		    } catch (SQLException e) {
		    	
		    	System.out.println("  [ERROR] Hay un error en el metodo mostrarTodos(): " + e.getMessage());
		    	
		    }
		
		return p;
		
	}

}
