package base;

import java.io.File;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Scanner;

public class PokejavaAPP {
	
	private static Scanner sc = new Scanner(System.in);
	private static ArrayList<Pokemon> listaPokemon = new ArrayList<Pokemon>();
	private static ArrayList<Equipo> listaEquipos = new ArrayList<Equipo>();

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int opcionMenu = -1;
		
		cargaPokedex();
		
		while (opcionMenu != 0) {
			
			// Vaciado y carga dentro del bucle para que los equipos se mantengan actualizados
			
			listaEquipos.clear();
			cargaEquipos();
			
			mostrarMenuPrincipal();
			
			System.out.println("  Elija una opcion: ");
			opcionMenu = Integer.parseInt(sc.nextLine());
			
			switch (opcionMenu) {
			
				case 1:
					
					mostrarPokedex();
					
					break;
					
				case 2:
					
					mostrarPokemon();
					
					break;
					
				case 3:
					
					peleaIndividual();
					
					break;
					
				case 4:
					
					mostrarEquipos();
					
					break;
					
				case 5:
				
					mostrarUnEquipo();
				
					break;
					
				case 6:
					
					crearEquipo();
					
					break;
					
				case 7:
					
					borrarEquipo();
					
					break;
					
				case 8:
					
					modificarEquipo();
					
					break;
					
				case 9:
					
					peleaEquiposPokemon();
					
					break;
					
				default:
						
					if (opcionMenu != 0) {
						
						System.out.println("  [ERROR] La opcion seleccionada no es valida.");
						
					} else {
						
						System.out.println("  GRACIAS POR JUGAR! (ദ്ദി˙ᗜ˙)\n");
						
					}
					
			
			}
			
		}
		
		

	}
	
	// ----------------------------------
	// OPCION 1: Mostrar pokedex completa
	// ----------------------------------

	private static void mostrarPokedex() {
		// TODO Auto-generated method stub
		
		for (Pokemon p : listaPokemon) {
			
			System.out.println("  " + p.bulkToString());
			
		}
		
	}
	
	// -------------
	// OPCION 1: FIN
	// -------------
	
	
	
	// -----------------------------------------------
	// OPCION 2: Mostrar pokemon indicado por pantalla
	// -----------------------------------------------

	private static void mostrarPokemon() {
		// TODO Auto-generated method stub
		
		String pokemonUsu = "";
		
		boolean existe = false;
		
		System.out.println("  Escriba el nombre del pokemon: ");
		pokemonUsu = sc.nextLine();
		
		for (int i = 0;i < listaPokemon.size();i++) {
			
			if (listaPokemon.get(i).getNombre().equalsIgnoreCase(pokemonUsu)) {
				
				System.out.println(listaPokemon.get(i).pokemonToString());
				
				existe = true;
				
				break; // Break tactico :D
				
			}
			
		}
		
		if (!existe) {
			
			System.out.println("  [ERROR] El nombre de pokemon indicado no existe.");
			
		}
		
	}
	
	// -------------
	// OPCION 2: FIN
	// -------------
	
	
	
	// ------------------------------------
	// OPCION 3: Batalla entre dos pokemons
	// ------------------------------------

	private static void peleaIndividual() {
		// TODO Auto-generated method stub
		
		String pokemonUsu = "";
		
		System.out.println("  Escriba el nombre del pokemon que quiere usar: ");
		pokemonUsu = sc.nextLine();
		
		if (!comprobarPokemon(pokemonUsu)) {
			
			System.out.println("  [ERROR] El pokemon indicado no existe.");
			
		} else {
			
			int opcionMenu = -1;
			
			Pokemon pokeUsu = devolverPokemon(pokemonUsu);
			
			while (opcionMenu != 0) {
				
				mostrarMenuPeleaIndividual();
				
				System.out.println("  Elija una opcion: ");
				opcionMenu = Integer.parseInt(sc.nextLine());
				
				switch (opcionMenu) {
				
					case 1:
						
						elegirRivalIndividual(pokeUsu);
						
						opcionMenu = 0;
						
						break;
						
					case 2:
						
						rivalAleatorioIndividual(pokeUsu);
						
						opcionMenu = 0;
						
						break;
						
					default:
						
						if (opcionMenu != 0) {
							
							System.out.println("  [ERROR] Seleccione una opcion valida.");
							
						} else {
							
							System.out.println("  [INFO] Pelea cancelada.");
							
						}
				
				}
				
			}
			
		}
		
	}
	
	private static void elegirRivalIndividual(Pokemon pokeUsu) {
		// TODO Auto-generated method stub
		
		String pokemonRival = "";
		
		System.out.println("  Escriba el nombre del pokemon rival: ");
		pokemonRival = sc.nextLine();
		
		if (!comprobarPokemon(pokemonRival)) {
			
			System.out.println("  [ERROR] El pokemon indicado no existe.");
			
		} else {
			
			Pokemon pokeRival = devolverPokemon(pokemonRival);
			
			batallaIndividual(pokeUsu,pokeRival);
			
		}
		
	}
	
	private static void rivalAleatorioIndividual(Pokemon pokeUsu) {
		// TODO Auto-generated method stub
		
		Pokemon pokeRival = listaPokemon.get((int) (Math.random() * 210));
		
		System.out.println("  El pokemon rival es: " + pokeRival.getNombre());
		
		batallaIndividual(pokeUsu,pokeRival);
		
	}
	
	// ---------------------------------------------
	// Metodo para relizar un combate uno contra uno
	// ---------------------------------------------
	
	private static void batallaIndividual (Pokemon pokeUsu, Pokemon pokeRival) {
		// TODO Auto-generated method stub
		
		double hpUsu = pokeUsu.getPs();
		double hpRival = pokeRival.getPs();
		
		System.out.println("\n•• ━━━━━━━━━━━━━━━━ ••●•• ━━━━━━━━━━━━━━━━ ••\n");

		System.out.println("  COMIENZA EL COMBATE!\n");
		System.out.println("  ♫ (Musica tensa) -> [https://www.youtube.com/watch?v=qtzPna9yFjg] ♫\n");
		
		if (pokeUsu.getVel() >= pokeRival.getVel()) {
			
			System.out.println("  ¡" + pokeUsu.getNombre() + " es mas rapido!\n");
			
			while (hpUsu > 0 && hpRival > 0) {
				
				hpRival -= dañoRealizado(pokeUsu,pokeRival);
				
				System.out.println("  " + pokeUsu.getNombre() + " ha golpeado a " + pokeRival.getNombre() + "\n");
				
				if (hpRival > 0) {
					
					hpUsu -= dañoRealizado(pokeUsu,pokeRival);
					
					System.out.println("  " + pokeRival.getNombre() + " ha golpeado a " + pokeUsu.getNombre() + "\n");
					
					if (hpUsu <= pokeUsu.getPs() * 0.25) {
						
						System.out.println("  Oh no... Parece que " + pokeUsu.getNombre() + " se esta debilitando. ¡Animo!\n");
						
					}
					
					if (hpRival <= pokeRival.getPs() * 0.25) {
						
						System.out.println("  Los movimientos de " + pokeRival.getNombre() + " parecen poco condundentes, se nota que esta cansado, ya falta poco...\n");
						
					}
					
				}
				
				System.out.println("  -> Pulsa enter para continuar...");
				sc.nextLine();
				
			}
			
			if (hpRival < hpUsu) {
				
				System.out.println("  " + pokeUsu.getNombre() + " ha ganado la batalla.\n");
				
			} else {
				
				System.out.println("  " + pokeRival.getNombre() + " ha ganado la batalla.\n");
				
			}
			
			
		} else {
			
			System.out.println("  ¡" + pokeRival.getNombre() + " es mas rapido!\n");
			
			while (hpUsu > 0 && hpRival > 0) {
				
				hpUsu -= dañoRealizado(pokeRival,pokeUsu);
				
				System.out.println("  " + pokeRival.getNombre() + " ha golpeado a " + pokeUsu.getNombre() + "\n");
				
				if (hpUsu > 0) {
					
					hpRival -= dañoRealizado(pokeUsu,pokeRival);
					
					System.out.println("  " + pokeUsu.getNombre() + " ha golpeado a " + pokeRival.getNombre() + "\n");
					
					if (hpUsu <= pokeUsu.getPs() * 0.25) {
						
						System.out.println("  Oh no... Parece que " + pokeUsu.getNombre() + " se esta debilitando. ¡Animo!\n");
						
					}
					
					if (hpRival <= pokeRival.getPs() * 0.25) {
						
						System.out.println("  Los movimientos de " + pokeRival.getNombre() + " parecen poco condundentes, se nota que esta cansado, ya falta poco...\n");
						
					}
					
				}
				
				System.out.println("  -> Pulsa enter para continuar...");
				sc.nextLine();
				
			}
			
			if (hpRival < hpUsu) {
				
				System.out.println("  " + pokeUsu.getNombre() + " ha ganado la batalla.\n");
				
			} else {
				
				System.out.println("  " + pokeRival.getNombre() + " ha ganado la batalla.\n");
				
			}
			
		}
		
		System.out.println("  FIN DEL COMBATE!");
		System.out.println("\n•• ━━━━━━━━━━━━━━━━ ••●•• ━━━━━━━━━━━━━━━━ ••\n");
		
	}
	
	// -------------
	// OPCION 3: FIN
	// -------------
	
	
	
	// ---------------------------------------
	// OPCION 4: Mostrar los equipos guardados
	// ---------------------------------------

	private static void mostrarEquipos() {
		// TODO Auto-generated method stub
		
		System.out.println("  Equipos guardados:");
		
		for (Equipo e : listaEquipos) {
			
			System.out.println("  " + e.bulkToString());
			
		}
		
	}
	
	// -------------
	// OPCION 4: FIN
	// -------------

	
	
	// ---------------------------------------------------------------------
	// OPCION 5: Se muestra el equipo con el nombre introducido por pantalla
	// ---------------------------------------------------------------------
	
	private static void mostrarUnEquipo() {
		// TODO Auto-generated method stub
		
		String equipoUsu = "";
		
		System.out.println("  Escriba el nombre del equipo que quiere consultar: ");
		equipoUsu = sc.nextLine();
		
		if (!comprobarEquipo(equipoUsu)) {
			
			System.out.println("  [ERROR] El equipo introducido no existe.");
			
		} else {
			
			for (Equipo e : listaEquipos) {
				
				if (e.getNombreEquipo().equalsIgnoreCase(equipoUsu)) {
					
					System.out.println(e.equipoToString());
					
					break; // Break tactico :D
					
				}
				
			}
			
		}
		
	}
	
	// -------------
	// OPCION 5: FIN
	// -------------
	
	
	
	// ---------------------------------------
	// OPCION 6: Permite crear un equipo nuevo
	// ---------------------------------------

	private static void crearEquipo() {
		// TODO Auto-generated method stub
		
		String newNomEquipo = "";
		
		System.out.println("  Introduzca el nombre del nuevo equipo: ");
		newNomEquipo = sc.nextLine();
		
		if(comprobarEquipo(newNomEquipo)) {
			
			System.out.println("  [ERROR] El equipo indicado ya existe.");
			
		} else {
			
			int cantidadMiembros = 0;
			
			System.out.println("  Escriba la cantidad de pokemons que va a tener su equipo(Min: 2 / Max: 6): ");
			cantidadMiembros = Integer.parseInt(sc.nextLine());
			
			if (cantidadMiembros < 2 || cantidadMiembros > 6) {
				
				System.out.println("  [ERROR] Un equipo tiene que estar compuesto por 2 pokemons minimo y 6 como maximo.");
				
			} else {
				
				int opcionMenu = -1;
				
				Equipo newEquipo = new Equipo(newNomEquipo);
				
				while (opcionMenu != 0) {
					
					mostrarMenuCrearEquipo();
					
					System.out.println("  Elija una opcion: ");
					opcionMenu = Integer.parseInt(sc.nextLine());
					
					switch (opcionMenu) {
					
						case 1:
							
							crearEquipoUsuario(newEquipo,cantidadMiembros);
							
							opcionMenu = 0;
							
							break;
							
						case 2:
							
							crearEquipoAleatorio(newEquipo,cantidadMiembros);
							
							opcionMenu = 0;
							
							break;
							
						default:
							
							if (opcionMenu != 0) {
								
								System.out.println("  [INFO] Creador de equipos cerrado.");
								
							}
					
					}
					
				}
				
			}
			
			
		}
		
	}
	
	// ---------------------------------------------------------------------------------
	// Crear un equipo pokemon permitiendo al usuario elegir cada uno de los integrantes
	// ---------------------------------------------------------------------------------
	
	private static void crearEquipoUsuario(Equipo newEquipo, int cantidad) {
		// TODO Auto-generated method stub
		
		for (int i = 0;i < cantidad;i++) {
			
			String pokemonUsu = "";
			
			boolean existe = false;
			
			while(!existe) {
				
				System.out.println("  Escriba el nombre del pokemon que quiere añadir [Nº " + (i + 1) + "]: ");
				pokemonUsu = sc.nextLine();
				
				if (!comprobarPokemon(pokemonUsu)) {
					
					System.out.println("  [ERROR] El pokemon indicado no existe, pruebe de nuevo...");
					
				} else {
					
					newEquipo.agregarPokemon(devolverPokemon(pokemonUsu));
					
					existe = true;
					
				}
				
			}
			
		}
		
		listaEquipos.add(newEquipo);
		
		String guardar = "";
		
		boolean salir = false;
		
		while (!salir) {
			
			System.out.println("  Desea guardar el equipo para proximas partidas? (S/N): ");
			guardar = sc.nextLine().toUpperCase();
			
			switch (guardar) {
			
				case "S":
					
					salir = true;
					
					guardarEquipos();
					
					break;
					
				case "N":
					
					salir = true;
					
					System.out.println("  [INFO] Este equipo solo estara disponible durante esta partida.\n");
					
					break;
					
				default:
					
					System.out.println("  [ERROR] La seleccionada opcion no es valida, vuelva a intentarlo...\n");
			
			}
			
		}
		
	}

	// -----------------------------------------------------------------
	// Crear un equipo pokemon generando los miembros de forma aleatoria
	// -----------------------------------------------------------------
	
	private static void crearEquipoAleatorio(Equipo newEquipo, int cantidad) {
		// TODO Auto-generated method stub
		
		for (int i = 0;i < cantidad;i++) {
			
			int rand = (int) (Math.random() * 210);
			
			newEquipo.agregarPokemon(listaPokemon.get(rand));
			
			System.out.println("  [INFO] " + listaPokemon.get(rand).getNombre() + " ha sido añadido a tu equipo.");
			
		}
		
		listaEquipos.add(newEquipo);
		
		String guardar = "";
		
		boolean salir = false;
		
		while (!salir) {
			
			System.out.println("\n  Desea guardar el equipo para proximas partidas? (S/N): ");
			guardar = sc.nextLine().toUpperCase();
			
			switch (guardar) {
			
				case "S":
					
					salir = true;
					
					guardarEquipos();
					
					break;
					
				case "N":
					
					salir = true;
					
					System.out.println("  [INFO] Este equipo solo estara disponible TEMPORALMENTE durante esta partida.");
					
					break;
					
				default:
					
					System.out.println("  [ERROR] La seleccionada opcion no es valida, vuelva a intentarlo...\n");
			
			}
			
		}
		
	}
	
	// -------------
	// OPCION 6: FIN
	// -------------
	
	
	
	// ---------------------------------------------
	// OPCION 7: Permite eliminar un equipo guardado
	// ---------------------------------------------

	private static void borrarEquipo() {
		// TODO Auto-generated method stub
		
		String eliminarEquipo = "";
		
		System.out.println("  [INFO] Si elimina un equipo TEMPORAL, se eliminara de forma PERMANENTE.");
		System.out.println("  Escriba el nombre del equipo que quiere eliminar: ");
		eliminarEquipo = sc.nextLine();
		
		if (!comprobarEquipo(eliminarEquipo)) {
			
			System.out.println("  [ERROR] El equipo proporcionado no existe.");
			
		} else {
			
			for (int i = 0;i < listaEquipos.size();i++) {
				
				if (listaEquipos.get(i).getNombreEquipo().equalsIgnoreCase(eliminarEquipo)) {
					
					listaEquipos.remove(i);
					
				}
				
			}
			
			boolean salir = false;
						
			while (!salir) {
				
				System.out.println("  Desea eliminar el equipo de forma PERMANENTE? (S/N): ");
				eliminarEquipo = sc.nextLine().toUpperCase();
				
				switch (eliminarEquipo) {
				
					case "S":
						
						guardarEquipos();
						
						salir = true;
						
						break;
						
					case "N":
						
						System.out.println("  [INFO] El equipo quedara eliminado para esta partida.");
						
						salir = true;
						
						break;
						
					default:
						
						System.out.println("  [ERROR] Introduzca una opcion valida, vuelva a interntarlo...");
				
				}
				
			}
			
		}
		
	}
	
	// -------------
	// OPCION 7: FIN
	// -------------
	
	
	
	// --------------------------------------------------------------------------------
	// OPCION 8: Permite modificar los pokemons pertenecientes y el nombre de un equipo
	// --------------------------------------------------------------------------------

	private static void modificarEquipo() {
		// TODO Auto-generated method stub
		
	}
	
	// -------------
	// OPCION 8: FIN
	// -------------
	
	
	
	// -------------------------------------------
	// OPCION 9: Batalla entre dos equipos pokemon
	// -------------------------------------------

	private static void peleaEquiposPokemon() {
		// TODO Auto-generated method stub
		
	}
	
	// -------------
	// OPCION 9: FIN
	// -------------
	
	
	
	// #####################
	//
	// METODOS REUTILIZABLES 
	//
	// #####################
	
	// -----------------------------------------
	// Cantidad de daño realizado por el pokemon
	// -----------------------------------------

	private static double dañoRealizado (Pokemon p1, Pokemon p2) {
		// TODO Auto-generated method stub
		
		double dmgAtacante = 0;
		double defDefensor = 0;
		double totalDmg = 0;
		
		double random = 0.85 + (Math.random() * (1.0 - 0.85)); // Randomizador del daño base
		
		if (p1.getAtq() >= p1.getAtEsp()) {
			
			dmgAtacante = p1.getAtq();
			defDefensor = p2.getDef();
			
		} else {
			
			dmgAtacante = p1.getAtEsp();
			defDefensor = p2.getDefEsp();
			
		}
		
		totalDmg = ((( (2 * 50 / 5.0) + 2) * 90 * (dmgAtacante / defDefensor)) / 50.0) + 2; // Daño base
		
		return totalDmg * random;
		
	}
	
	// -----------------------------------------------------------------------------------------------------
	// Lectura del fichero con los pokemons y sus estadisticas que se introducen en el arraylist de pokemons
	// -----------------------------------------------------------------------------------------------------

	private static void cargaPokedex() {
		// TODO Auto-generated method stub
		
		try {
			
			File file = new File("data/PokemonsGen4.txt");
			Scanner scFile = new Scanner(file);
			
			scFile.nextLine();
			
			while (scFile.hasNext()) {
				
				String[] valores = scFile.nextLine().split("::");	
				String[] tipos = valores[2].split("/");
				
				Pokemon p = new Pokemon(Integer.parseInt(valores[0]), valores[1], tipos, Double.parseDouble(valores[3]), Double.parseDouble(valores[4]), Double.parseDouble(valores[5]), Double.parseDouble(valores[6]), Double.parseDouble(valores[7]), Double.parseDouble(valores[8]));
				
				listaPokemon.add(p);
				
			}
			
			scFile.close();
			
		} catch (Exception e) {
			
			System.out.println("  [ERROR] Ha habido un problema para leer el fichero: " + e.getMessage());
			
		}
		
	}
	
	// -------------------------------------------------------------------
	// Lectura del fichero con el nombre del equipo y el Nº de los pokemon
	// -------------------------------------------------------------------
	
	private static void cargaEquipos () {
		// TODO Auto-generated method stub
		
		try {
			
			File file = new File("data/EquiposPokemon.txt");
			Scanner scFile = new Scanner(file);
			
			scFile.nextLine();
			
			while(scFile.hasNextLine()) {
				
				String[] valores = scFile.nextLine().split("::");
				String[] pokemons = valores[1].split(",");
				
				Equipo equipo = new Equipo(valores[0]);
				
				for (int i = 0;i < pokemons.length;i++) {
					
					for (Pokemon p : listaPokemon) {
						
						if (Integer.parseInt(pokemons[i]) == p.getNumPokedex()) {
							
							equipo.agregarPokemon(p);
							
						}
						
					}
					
				}
				
				listaEquipos.add(equipo);
				
			}
			
			scFile.close();
			
		} catch (Exception e) {
			
			System.out.println("  [ERROR] Ha habido un problema para leer el fichero: " + e.getMessage());
			
		}
		
	}
	
	private static void guardarEquipos () {
		
		try {
			
			File file = new File("data/EquiposPokemon.txt");
			PrintWriter pw = new PrintWriter(file);
			
			pw.println("NombreEquipo::NumeroDePokemon");
			
			for (int i = 0;i < listaEquipos.size();i++) {
				
				String numPokemons = "";
				
				for (int j = 0;j < listaEquipos.get(i).getMiembrosEquipo().size();j++) {
					
					if (j == listaEquipos.get(i).getMiembrosEquipo().size() - 1) {
						
						numPokemons += listaEquipos.get(i).getMiembrosEquipo().get(j).getNumPokedex();
						
					} else {
						
						numPokemons += listaEquipos.get(i).getMiembrosEquipo().get(j).getNumPokedex() + ",";
						
					}
					
				}
				
				pw.println(listaEquipos.get(i).getNombreEquipo() + "::" + numPokemons);
				
			}
			
			pw.close();
			
			System.out.println("  [INFO] Equipos actualizados correctamente.");
			
		} catch (Exception e) {
			
			System.out.println("  [ERROR] ha habido un problema al guardar los equipos: " + e.getMessage());
			
		}
		
	}
	
	// --------------------------------------------------------------
	// Comprobar la existencia del pokemon introducido por el usuario
	// --------------------------------------------------------------
	
	private static boolean comprobarPokemon (String pokemonUsu) {
		// TODO Auto-generated method stub
		
		boolean existe = false;
		
		for (Pokemon p : listaPokemon) {
			
			if (p.getNombre().equalsIgnoreCase(pokemonUsu)) {
				
				existe = true;
				
				break; // Break tactico :D
				
			}
			
		}
		
		return existe;
		
	}
	
	// -----------------------------------------------
	// Conversor de nombre de pokemon a objeto Pokemon
	// -----------------------------------------------
	
	private static Pokemon devolverPokemon (String nomPokemon) {
		// TODO Auto-generated method stub
		
		Pokemon pokemon = new Pokemon();
		
		for (int i = 0;i < listaPokemon.size();i++) {
			
			if (listaPokemon.get(i).getNombre().equalsIgnoreCase(nomPokemon)) {
				
				pokemon = listaPokemon.get(i);
				
			}
			
		}
		
		return pokemon;
		
	}
	
	// -------------------------------------------------------------
	// Comprobar la existencia del equipo introducido por el usuario
	// -------------------------------------------------------------
	
	private static boolean comprobarEquipo (String equipoUsu) {
		
		boolean existe = false;
		
		for (Equipo e : listaEquipos) {
			
			if (e.getNombreEquipo().equalsIgnoreCase(equipoUsu)) {
				
				existe = true;
				
				break; // Break tactico :D
				
			}
			
		}
		
		return existe;
		
	}
	
	// ---------------------------------
	// Procedimientos para mostrar menus
	// ---------------------------------
	
	private static void mostrarMenuPrincipal() {
		// TODO Auto-generated method stub
		
		System.out.println("\n╔═══════════════════ •●• ═══════════════════╗\n");
		System.out.println("                   POKEJAVA");
		System.out.println("\n╠═══════════════════ •●• ═══════════════════╣\n");
		System.out.println("  ⟅1⟆ Mostrar pokedex");
		System.out.println("  ⟅2⟆ Mostrar pokemon por nombre");
		System.out.println("  ⟅3⟆ Batalla 1vs1");
		System.out.println("  ⟅4⟆ Mostrar todos los equipos");
		System.out.println("  ⟅5⟆ Mostrar un equipo especifico");
		System.out.println("  ⟅6⟆ Crear nuevo equipo");
		System.out.println("  ⟅7⟆ Borrar un equipo");
		System.out.println("  ⟅8⟆ Modificar un equipo (EN DESARROLLO)");
		System.out.println("  ⟅9⟆ Batalla entre equipos pokemon (EN DESARROLLO)");
		System.out.println("  ⟅0⟆ SALIR");
		System.out.println("\n╚═══════════════════ •●• ═══════════════════╝\n");
		
	}
	
	private static void mostrarMenuPeleaIndividual() {
		// TODO Auto-generated method stub
		
		System.out.println("\n┌────── • BATALLA INDIVIDUAL • ──────┐\n");
		System.out.println("  ⟅1⟆ Elegir rival");
		System.out.println("  ⟅2⟆ Rival aleatorio");
		System.out.println("  ⟅0⟆ SALIR");
		System.out.println("\n└────── • BATALLA INDIVIDUAL • ──────┘\n");
	
	}
	
	private static void mostrarMenuCrearEquipo() {
		
		System.out.println("\n┌────── • CREACION EQUIPO • ──────┐\n");
		System.out.println("  ⟅1⟆ Elegir miembros del equipo");
		System.out.println("  ⟅2⟆ Generar equipo aleatorio");
		System.out.println("  ⟅0⟆ SALIR");
		System.out.println("\n└────── • CREACION EQUIPO • ──────┘\n");
		
	}

}
