package view;

import java.sql.SQLException;
import java.util.List;
import java.util.Scanner;

import controller.PokemonController;
import model.Pokemon;

public class PokemonView {
	
	private static PokemonController pc = new PokemonController();
	
	private static Scanner sc = new Scanner(System.in);
	
	public void mostrarTodos () throws SQLException {
		
	    List<Pokemon> listaPokemons = pc.mostrarTodos();

	    for (Pokemon p : listaPokemons) {
	    	
	    	if (p.getId() == 1) {
	    		
	    		System.out.println("\n  " + "═".repeat(157) + "\n");
	    		
	    	}
	        String tiposStr = String.join(", ", p.getTipos());
	        
	        System.out.printf("  Nº%-3d - Nombre: %-12s - Tipo/s: %-19s - Estadisticas [PS: %-5.1f | Atq: %-5.1f | Def: %-5.1f | At.Esp: %-5.1f | Def.Esp: %-5.1f | Vel: %-5.1f]%n",p.getId(),p.getNombre(),tiposStr,p.getPs(),p.getAtq(),p.getDef(),p.getAtEsp(),p.getDefEsp(),p.getVel());
	        
	    }
	    
	    System.out.println("\n  " + "═".repeat(157));
		
	}
	
	public void mostrarPokemonNombre () throws SQLException {
		
		String nombre = "";
		
		System.out.println("  Escriba el nombre del pokemon que quiere visualizar: ");
		nombre = sc.nextLine();
		
		System.out.println(pc.mostrarPokemonNombre(nombre).pokemonToString());
		
	}

}
