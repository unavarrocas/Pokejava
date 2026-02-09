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
    
    // Declaracion de constantes para los syso del view
    
    public static final int GENERICO = 1;
    public static final int ALIADO = 2;
    public static final int RIVAL = 3;
	
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
		
		if (p == null) {
			
			errorNoExisteElPokemon(GENERICO);
			
		} else {
			
			System.out.println(p.pokemonToString());
			
		}
		
	}
	
	// OPCION 3: MOSTRAR POKEMON POR TIPO INDICADO POR EL USUARIO
	
	public void mostrarPokemonsTipo (List<Pokemon> listaPokemons) {
	    	
		if (listaPokemons.isEmpty()) {
			
			errorNoExisteElTipo();
			
			return;
			
		}
		
		for (Pokemon p : listaPokemons) {
				
			String tiposStr = String.join(", ", p.getTipos());
		    System.out.printf("  Nº%-3d - Nombre: %-12s - Tipo/s: %-19s - Estadisticas [PS: %-5.1f | Atq: %-5.1f | Def: %-5.1f | At.Esp: %-5.1f | Def.Esp: %-5.1f | Vel: %-5.1f]%n",p.getId(),p.getNombre(),tiposStr,p.getPs(),p.getAtq(),p.getDef(),p.getAtEsp(),p.getDefEsp(),p.getVel());
	    	
	    }
		
	}
	
	// OPCION 4: MOSTRAR POKEMONS CON LA ESTADISTICA INDICADA SUPERIOR AL INDICADO
	
	public void mostrarPokemonsMinStat (List<Pokemon> listaPokemons) {
		
		if (listaPokemons.isEmpty()) {
			
			errorNoExisteLaStat();
			
			return;
			
		}
		
		for (Pokemon p : listaPokemons) {
			
			String tiposStr = String.join(", ", p.getTipos());
		    System.out.printf("  Nº%-3d - Nombre: %-12s - Tipo/s: %-19s - Estadisticas [PS: %-5.1f | Atq: %-5.1f | Def: %-5.1f | At.Esp: %-5.1f | Def.Esp: %-5.1f | Vel: %-5.1f]%n",p.getId(),p.getNombre(),tiposStr,p.getPs(),p.getAtq(),p.getDef(),p.getAtEsp(),p.getDefEsp(),p.getVel());
	    	
	    }
		
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
				
				System.out.print("  Escriba el nombre del pokemon: ");
				return sc.nextLine();
				
			case 2:
				
				System.out.print("  Escriba el nombre del pokemon ALIADO: ");
				return sc.nextLine();
				
			case 3:
				
				System.out.print("  Escriba el nombre del pokemon RIVAL: ");
				return sc.nextLine();
				
			default:
				
				return null;
				
		}
		
	}
	
	public String pedirTipoPokemon () {
		
		System.out.print("  Escriba el tipo del pokemon: ");
		return sc.nextLine();
		
	}
	
	public String pedirNombreStat () {
		
		int opcionMenu = 0;
		
		while (opcionMenu == 0) {
			
			System.out.println("\n  ⟅1⟆ PS");
			System.out.println("  ⟅2⟆ Ataque");
			System.out.println("  ⟅3⟆ Defensa");
			System.out.println("  ⟅4⟆ At. Especial");
			System.out.println("  ⟅5⟆ Def. Especial");
			System.out.println("  ⟅6⟆ Velocidad");
			System.out.print("\n  Escriba la estadistica a consultar: ");
			opcionMenu = Integer.parseInt(sc.nextLine());
			
			switch (opcionMenu) {
			
			case 1: return "ps";
			case 2: return "ataque";
			case 3: return "defensa";
			case 4: return "at_especial";
			case 5: return "def_especial";
			case 6: return "velocidad";
			default: opcionMenu = 0;
		
			}
			
		}
		
		return null;
		
	}
	
	public double pedirMinNumStat () {
		
		System.out.print("  Indique el minimo de la estadistica: ");
		return Double.parseDouble(sc.nextLine());
		
	}
	
	public int pedirOpcionMenu () {
		
		System.out.print("  Elija una opcion: ");
		
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
		
		System.out.print("\n  Elija el movimiento que va a usar: ");
		numMov = Integer.parseInt(sc.nextLine());
		
		if (numMov < 0 || numMov > 4) {
			
			return -1;
			
		}
		
		return numMov - 1;
		
	}
	
	public void mostrarMoviminetosConPPDiponibles (Pokemon p, int[] pps) {
		
		System.out.println("");
		
		for (int i = 0;i < p.getMovimientos().size();i++) {
			
			String tipoHabilidad = p.getMovimientos().get(i).tipoMovimientoColor();
			
			System.out.printf("  ⟅" + (i + 1) + "⟆ %-16s (" + tipoHabilidad + ") - [%2d/" + p.getMovimientos().get(i).getPp() + "]%n",p.getMovimientos().get(i).getNombre(),pps[i]);
			
		}
		
	}
	
	public void mostrarVictoriaUsuario (Pokemon p) {
		
		System.out.println("  ¡ENHORABUENA! Tu " + p.getNombre() + " ha vencido.");
		
	}
	
	public void mostrarVictoriaRival (Pokemon p) {
		
		System.out.println("  Vaya... Parece que " + p.getNombre() + " ha vencido, animo para la proxima.");
		
	}
	
	public void enterParaContinuar () {
		
		System.out.print("\n  -> Pulsa enter para continuar...");
		sc.nextLine();
		
	}
	
	public void noQuedanPP () {
		
		System.out.println("\n  No quedan mas PPs!");
		
	}
	
	public void noExisteMovimiento () {
		
		System.out.println("\n  Seleccione un movimiento existente.");
		
	}
	
	// MENUS
	
	public void mostrarMenuPrincipal () {
		
		System.out.println("\n╔═══════════════════ •●• ═══════════════════╗\n");
		System.out.println("                   POKEJAVA");
		System.out.println("                                       v1.0");
		System.out.println("╠═══════════════════ •●• ═══════════════════╣\n");
		System.out.println("  ⟅1⟆ Menu pokemons");
		System.out.println("  ⟅2⟆ Menu equipos");
		System.out.println("  ⟅3⟆ Menu movimientos");
		System.out.println("  ⟅4⟆ Batalla 1vs1 (Jugador VS Maquina)");
		System.out.println("  ⟅5⟆ Batalla 1vs1 (Jugador VS Jugador)");
		System.out.println("  ⟅6⟆ Batalla equipos (Jugador VS Maquina)");
		System.out.println("  ⟅7⟆ Batalla equipos (Jugador VS Jugador)");
		System.out.println("  ⟅0⟆ SALIR");
		System.out.println("\n╚═══════════════════ •●• ═══════════════════╝\n");
		
	}
	
	// Submenus Pokemons
	
	public void mostrarMenuPokemons () {
		
		System.out.println("\n┌───────────── • POKEMONS • ─────────────┐\n");
		System.out.println("  ⟅1⟆ Mostrar pokedex");
		System.out.println("  ⟅2⟆ Mostrar pokemon por nombre");
		System.out.println("  ⟅3⟆ Mostrar pokemons por tipo");
		System.out.println("  ⟅4⟆ Mostrar pokemons por estadística");
		System.out.println("  ⟅0⟆ VOLVER");
		System.out.println("\n└───────────── • POKEMONS • ─────────────┘\n");
		
	}
	
	public void salidaMenuPokemons () {
		
		System.out.println("\n  [INFO] Submenu de pokemons cerrado.");
		
	}
	
	// Submenus Equipos
	
	public void mostrarMenuEquipos () {
		
		System.out.println("\n┌───────────── • EQUIPOS • ─────────────┐\n");
		System.out.println("  ⟅1⟆ Mostrar equipos");
		System.out.println("  ⟅2⟆ Mostrar equipo por nombre");
		System.out.println("  ⟅3⟆ Crear nuevo equipo");
		System.out.println("  ⟅4⟆ Modificar equipo");
		System.out.println("  ⟅5⟆ Eliminar equipo");
		System.out.println("  ⟅0⟆ VOLVER");
		System.out.println("\n└───────────── • EQUIPOS • ─────────────┘\n");
		
	}
	
	public void salidaMenuEquipos () {
		
		System.out.println("\n  [INFO] Submenu de equipos cerrado.");
		
	}
	
	// Submenus Movimientos
	
	public void mostrarMenuMovimientos () {
		
		System.out.println("\n┌───────────── • MOVIMIENTOS • ─────────────┐\n");
		System.out.println("  ⟅1⟆ Mostrar movimientos");
		System.out.println("  ⟅2⟆ Mostrar movimientos por nombre");
		System.out.println("  ⟅3⟆ Mostrar movimientos por tipo");
		System.out.println("  ⟅0⟆ VOLVER");
		System.out.println("\n└───────────── • MOVIMIENTOS • ─────────────┘\n");
		
	}
	
	public void salidaMenuMovimientos () {
		
		System.out.println("\n  [INFO] Submenu de movimientos cerrado.");
		
	}
	
	// MENSAJES DE ERROR
	
	public void errorMain (String error) {
		
		System.out.println("  [ERROR] Ha habido un problema: " + error);
		
	}
	
	public void errorValorMenu () {
		
		System.out.println("  [ERROR] La opcion seleccionada no es valida.");
		
	}
	
	public void errorNoExisteElPokemon (int opcion) {
		
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
	
	public void errorNoExisteElTipo () {
		
		System.out.println("\n  [ERROR] El tipo introducido no existe.");
		
	}
	
	public void errorNoExisteLaStat () {
		
		System.out.println("\n  [ERROR] La stat indicada no existe.");
		
	}
	
	// MENSAJE DE FIN DE PROGRAMA
	
	public void finPrograma () {
		
		System.out.println("\n  GRACIAS POR JUGAR! (ദ്ദി˙ᗜ˙)");
		
	}

}
