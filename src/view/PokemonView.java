package view;

import java.util.List;
import java.util.Scanner;

import model.Movimiento;
import model.Pokemon;

public class PokemonView {
	
	// Declaracion del scanner
	
	private Scanner sc;

    public PokemonView() {
    	
        this.sc = new Scanner(System.in); // Scanner declarado sin static

    }
	
	// OPCION 1: LISTAR TODOS LOS POKEMONS
	
	public void mostrarTodos (List<Pokemon> listaPokemons) {

	    for (Pokemon p : listaPokemons) {
	    	
	    	if (p.getId() == 1) {
	    		
	    		System.out.println("\n  " + "═".repeat(157) + "\n");
	    		
	    	}
	        String tiposStr = String.join(", ", p.getTipos());
	        
	        System.out.printf("  Nº%-3d - Nombre: %-12s - Tipo/s: %-19s - Estadisticas [PS: %-5.1f | Atq: %-5.1f | Def: %-5.1f | At.Esp: %-5.1f | Def.Esp: %-5.1f | Vel: %-5.1f]%n",p.getId(),p.getNombre(),tiposStr,p.getPs(),p.getAtq(),p.getDef(),p.getAtEsp(),p.getDefEsp(),p.getVel());
	        
	    }
	    
	    System.out.println("\n  " + "═".repeat(157));
		
	}
	
	// OPCION 2: MOSTRAR POKEMON INDICADO POR EL USUARIO

	public void mostrarPokemonNombre (Pokemon p) {
		
		System.out.println(p.pokemonToString());
		
	}
	
	// OPCION 3: PELEA 1vs1
	
	public void comenzarPeleaIndividual(Pokemon pokeAliado, Pokemon pokeRival) {
		
		System.out.println("\n•• ━━━━━━━━━━━━━━━━ ••●•• ━━━━━━━━━━━━━━━━ ••\n");

		System.out.println("  COMIENZA EL COMBATE!\n");
		System.out.println("  ♫ (Musica tensa) -> [https://www.youtube.com/watch?v=qtzPna9yFjg] ♫\n");
		System.out.println("  " + pokeAliado.getNombre() + " aliado ha entrado a la batalla!");
		System.out.println("  " + pokeRival.getNombre() + " rival ha entrado a la batalla!\n");
		
	}
	
	public void terminarPeleaIndividual () {
		
		System.out.println("\n  COMBATE FINALIZADO!");
		
		System.out.println("\n•• ━━━━━━━━━━━━━━━━ ••●•• ━━━━━━━━━━━━━━━━ ••\n");
		
	}

	
	// METODOS REUTILIZABLES
	
	public String pedirNombrePokemon (int opcion) {
		
		switch (opcion) {
		
			case 1:
				
				System.out.println("  Escriba el nombre del pokemon: ");
				return sc.nextLine();
				
			case 2:
				
				System.out.println("  Escriba el nombre del pokemon ALIADO: ");
				return sc.nextLine();
				
			case 3:
				
				System.out.println("  Escriba el nombre del pokemon RIVAL: ");
				return sc.nextLine();
				
			default:
				
				return null;
				
		}
		
	}
	
	public int pedirOpcionMenu () {
		
		System.out.println("  Elija una opcion: ");
		
		try {
			
			return Integer.parseInt(sc.nextLine());
			
		} catch (NumberFormatException e) {
			
			return -1;
			
		}
		
	}
	
	public void mostrarPokemonRapido(Pokemon p) {
		
		System.out.println("  " + p.getNombre() + " es mas rapido!");
		
	}
	
	public void mostrarMensajeAtaque (Pokemon atq, Pokemon def, double hpDef, double dmgAtq, double mult, double fallo, Movimiento mov) {
		
		if (fallo < 1) {
			
			System.out.println("\n  " + atq.getNombre() + " ha usado " + mov.getNombre() + " pero falló...");
			
		} else {
			
			System.out.println("\n  " + atq.getNombre() + " ha usado " + mov.getNombre() + ". " + mostrarMensajeEfectividad(def,mult));
			
			if (hpDef < 0) {
				
				hpDef = 0;
				
			}
			
			System.out.println("  Estadísticas combate: [HP " + def.getNombre() + ": " + (int) hpDef + " | Daño realizado por " + atq.getNombre() + ": " + (int) dmgAtq + "]");
			
		}
		
	}
	
	public String mostrarMensajeEfectividad (Pokemon def, double mult) {
		
		if (mult == 0) {
			
	        return "No afecta a " + def.getNombre() + "...";
	        
	    } else if (mult > 0 && mult < 1.0) {
	    	
	        return "No es muy eficaz...";
	        
	    } else if (mult == 2.0) {
	    	
	        return "¡Es muy eficaz!";
	        
	    } else if (mult >= 4.0) {
	    	
	        return "¡ES SÚPER EFICAZ!";
	        
	    }
		
		return "";
		
	}
	
	public int seleccionarMovimiento () {
		
		int numMov;
		
		System.out.println("\n  Elija el movimiento que va a usar: ");
		numMov = Integer.parseInt(sc.nextLine());
		
		if (numMov < 0 || numMov > 4) {
			
			return -1;
			
		}
		
		return numMov - 1;
		
	}
	
	public void mostrarMoviminetosConPPDiponibles (Pokemon p, int[] pps) {
		
		System.out.println("");
		
		for (int i = 0;i < p.getMovimientos().size();i++) {
			
			System.out.printf("  ⟅" + (i + 1) + "⟆ [%2d] - %-16s%n",pps[i],p.getMovimientos().get(i).getNombre());
			
		}
		
	}
	
	public void mostrarVictoriaUsuario (Pokemon p) {
		
		System.out.println("  ¡ENHORABUENA! Tu " + p.getNombre() + " ha vencido.");
		
	}
	
	public void mostrarVictoriaRival (Pokemon p) {
		
		System.out.println("  Vaya... Parece que " + p.getNombre() + " ha vencido, animo para la proxima.");
		
	}
	
	public void enterParaContinuar () {
		
		System.out.println("\n  -> Pulsa enter para continuar...");
		sc.nextLine();
		
	}
	
	// MENUS
	
	public void mostrarMenuPrincipal() {
		// TODO Auto-generated method stub
		
		System.out.println("\n╔═══════════════════ •●• ═══════════════════╗\n");
		System.out.println("                   POKEJAVA");
		System.out.println("                                       v1.0");
		System.out.println("╠═══════════════════ •●• ═══════════════════╣\n");
		System.out.println("  ⟅1⟆ Mostrar pokedex");
		System.out.println("  ⟅2⟆ Mostrar pokemon por nombre");
		System.out.println("  ⟅3⟆ Batalla 1vs1");
		System.out.println("  ⟅4⟆ Mostrar todos los equipos");
		System.out.println("  ⟅5⟆ Mostrar un equipo especifico");
		System.out.println("  ⟅6⟆ Crear nuevo equipo");
		System.out.println("  ⟅7⟆ Borrar un equipo");
		System.out.println("  ⟅8⟆ Modificar un equipo");
		System.out.println("  ⟅9⟆ Batalla entre equipos pokemon");
		System.out.println("  ⟅0⟆ SALIR");
		System.out.println("\n╚═══════════════════ •●• ═══════════════════╝\n");
		
	}
	
	// MENSAJES DE ERROR
	
	public void errorMain (String error) {
		
		System.out.println("  [ERROR] Ha habido un problema al arrancar el programa." + error);
		
	}
	
	public void errorValorMenu () {
		
		System.out.println("  [ERROR] La opcion seleccionada no es valida.");
		
	}
	
	public void errorNoExisteElPokemon (int opcion) {
		
		System.out.println("  [ERROR] El pokemon introducido no existe.");
		
		switch (opcion) {
		
			case 1:
				
				System.out.println("  [ERROR] El pokemon introducido no existe.");
				
				break;
				
			case 2:
				
				System.out.println("  [ERROR] El pokemon ALIADO introducido no existe.");
				
				break;
				
			case 3:
				
				System.out.println("  [ERROR] El pokemon RIVAL introducido no existe.");
				
				break;
		
		}
		
	}
	
	// MENSAJE DE FIN DE PROGRAMA
	
	public void finPrograma () {
		
		System.out.println("  GRACIAS POR JUGAR! (ദ്ദി˙ᗜ˙)\n");
		
	}

}
