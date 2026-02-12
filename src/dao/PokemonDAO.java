package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Movimiento;
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
		    		p.setTipos(rs.getString("tipo").split("/")); // Se separa con el split para acomodarlos al String[2]
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
		
		String sql = "SELECT * FROM pokemons WHERE nombre = ?";
		
		try (Connection con = ConexionDB.getConexion();
			PreparedStatement ps = con.prepareStatement(sql)) {
		    
			ps.setString(1, nombre);
			
			try (ResultSet rs = ps.executeQuery()) {
				
				if (rs.next()) {
					
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
		    		cargarMovimientos(p);
		    		
		    		return p;
		    		
		    	}
		    	
		    }
			 
		} catch (SQLException e) {
		    	
		    System.out.println("  [ERROR] Hay un error en el metodo mostrarTodos(): " + e.getMessage());
		    	
		}
		
		return null; // Si el pokemon no esta en la DB devuelve null
		
	}
	
	public List<Pokemon> mostrarPokemonsTipo (String tipo) throws SQLException {
		
		List<Pokemon> listaPokemons = new ArrayList<>();
		
		String sql = "SELECT * FROM pokemons WHERE tipo LIKE ?";
		
		try (Connection con = ConexionDB.getConexion();
			PreparedStatement ps = con.prepareStatement(sql)) {
			
			ps.setString(1, "%" + tipo + "%");
			
			try (ResultSet rs = ps.executeQuery()) {
				
				while (rs.next()) {
					
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
				
			}
			
		}
		
		return listaPokemons;
		
	}
	
	public List<Pokemon> mostrarPokemonsMinStat (String stat, double minStat) throws SQLException {
		
		List<Pokemon> listaPokemons = new ArrayList<>();
		
		String sql = "SELECT * FROM pokemons WHERE " + stat + " >= ?";
		
		try (Connection con = ConexionDB.getConexion();
			PreparedStatement ps = con.prepareStatement(sql)) {
		
			ps.setDouble(1, minStat);
			
			try (ResultSet rs = ps.executeQuery()) {
				
				while (rs.next()) {
					
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
				
			}
			
		}
		
		return listaPokemons;
		
	}
	
	public void cargarMovimientos (Pokemon p) throws SQLException {
		
		String sql = "SELECT m.* FROM movimientos m " +
                "JOIN pokemon_movimientos pm ON m.id = pm.id_movimiento " +
                "WHERE pm.id_pokemon = ?";
		
		try (Connection con = ConexionDB.getConexion();
			PreparedStatement ps = con.prepareStatement(sql)) {
			
			ps.setInt(1, p.getId());
					
			try (ResultSet rs = ps.executeQuery()) {
				
				while (rs.next()) {
					
					Movimiento m = new Movimiento();
					
					m.setId(rs.getInt("id"));
					m.setNombre(rs.getString("nombre"));
					m.setTipo(rs.getString("tipo"));
					m.setCategoria(rs.getString("categoria"));
					m.setPotencia(rs.getDouble("potencia"));
					m.setPrecision(rs.getDouble("precision_atq"));
					m.setPp(rs.getInt("pp"));
					
					p.agregarMovimiento(m);
					
				}
				
			}
		
		} catch (SQLException e) {
			
			System.out.println("  [ERROR] Hay un error en el metodo mostrarTodos(): " + e.getMessage());
			
		}
				
	}

}
