package test;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.SQLException;

import org.junit.jupiter.api.Test;

import dao.PokemonDAO;
import model.Pokemon;
import model.Movimiento;

class MovimientosTest {
	
	private PokemonDAO dao = new PokemonDAO();
	
	private static String nombrePokemon = "Raticate";

	@Test
	void testMinimoUnMovimiento() throws SQLException {
		
		Pokemon p = dao.mostrarPokemonNombre(nombrePokemon);
		
		assertTrue(p.getMovimientos().size() > 0);
		
	}
	
	@Test
	void testMovimientosBienAsignadosAlPokemon() throws SQLException {
		
		Pokemon p = dao.mostrarPokemonNombre(nombrePokemon);		
		
		String movimiento1 = "Doble Filo";
		String movimiento2 = "Triturar";
		String movimiento3 = "Golpe Bajo";
		String movimiento4 = "Ida y Vuelta";
		
		String movimientosApilados = "";
		
		for (Movimiento m : p.getMovimientos()) {
			
			movimientosApilados += m.getNombre() + " ";
			
		}
		
		switch (p.getMovimientos().size()) {
		
			case 1:
				
				assertTrue(movimientosApilados.contains(movimiento1));
				
				break;
				
			case 2:
				
				assertTrue(movimientosApilados.contains(movimiento1));
				assertTrue(movimientosApilados.contains(movimiento2));
				
				break;
				
			case 3:
				
				assertTrue(movimientosApilados.contains(movimiento1));
				assertTrue(movimientosApilados.contains(movimiento2));
				assertTrue(movimientosApilados.contains(movimiento3));
				
				break;
				
			case 4:
				
				assertTrue(movimientosApilados.contains(movimiento1));
				assertTrue(movimientosApilados.contains(movimiento2));
				assertTrue(movimientosApilados.contains(movimiento3));
				assertTrue(movimientosApilados.contains(movimiento4));
				
				break;
		
		}
		
	}

}
