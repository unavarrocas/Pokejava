package view;

import java.sql.SQLException;
import java.util.Scanner;

import controller.PokemonController;

public class PokejavaAPP {
	
	private static PokemonView pv = new PokemonView();
	private static PokemonController pc = new PokemonController();
	
	private static Scanner sc = new Scanner(System.in);

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
		
		int opcionMenu = -1;
		
		while (opcionMenu != 0) {
			
			mostrarMenuPrincipal();
			
			System.out.println("  Elija una opcion: ");
			opcionMenu = Integer.parseInt(sc.nextLine());
			
			switch (opcionMenu) {
			
				case 1:
					
					pv.mostrarTodos();
					
					break;
					
				case 2:
					
					pv.mostrarPokemonNombre();
					
					break;
					
				case 3:
					
					
					
					break;
					
				case 4:
					
					
					
					break;
					
				case 5:
				
					
				
					break;
					
				case 6:
					
					
					
					break;
					
				case 7:
					
					
					
					break;
					
				case 8:
					
					
					
					break;
					
				case 9:
					
					
					
					break;
					
				default:
						
					if (opcionMenu != 0) {
						
						System.out.println("  [ERROR] La opcion seleccionada no es valida.");
						
					} else {
						
						pc.cerrarConexion();
						
						System.out.println("  GRACIAS POR JUGAR! (ദ്ദി˙ᗜ˙)\n");
						
					}
					
			
			}
			
		}	

	}
	
	// MENUS VISUALES
	
	private static void mostrarMenuPrincipal() {
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

}
