package controller;

import java.sql.SQLException;
import java.util.List;

import dao.PokemonDAO;
import model.Movimiento;
import model.Pokemon;
import model.ResultadoAtaque;
import model.Tipo;
import view.PokemonView;

public class PokemonController {
	
	private PokemonDAO dao;
	private PokemonView pv;
	
	public PokemonController (PokemonDAO dao, PokemonView pv){
		
		this.dao = dao;
		this.pv = pv;
		
	}
    
    // Declaracion de constantes para los syso del view
    
    public static final int GENERICO = 1;
    public static final int ALIADO = 2;
    public static final int RIVAL = 3;
    
    // Declaracion de constantes para las salidas del menu y submenus
    
    public static final int GENERAL = 1;
    public static final int POKEMONS = 2;
    public static final int EQUIPOS = 3;
    public static final int MOVIMIENTOS = 4;
    
    // Menu principal con el arraque
    
    public void arranquePrograma () throws SQLException {
    	
		int opcionMenu = -1;
		
		while (opcionMenu != 0) {
			
			pv.mostrarMenuPrincipal();
			
			opcionMenu = pv.pedirOpcionMenu();
			
			switch (opcionMenu) {
			
				case 1 -> submenuPokemons();
				case 2 -> submenuEquipos();
				case 3 -> submenuMovimientos();
				/*case 4 -> ;
				case 5 -> ;
				case 6 -> ;
				case 7 -> ;*/
				default -> salidaMenu(opcionMenu,GENERAL);
			}
			
		}
    	
    }
	
	// OPCION 1: SUBMENU POKEMONS
    
    public void submenuPokemons () throws SQLException {
    	
    	int opcionMenu = -1;
    	
    	while (opcionMenu != 0) {
    		
    		pv.mostrarMenuPokemons();
    		
    		opcionMenu = pv.pedirOpcionMenu();
    		
    		switch (opcionMenu) {
    		
    			case 1 -> mostrarTodos();
    			case 2 -> mostrarPokemonNombre();
    			case 3 -> mostrarPokemonsTipo();
    			case 4 -> mostrarPokemonsMinStat();
    			default -> salidaMenu(opcionMenu, POKEMONS);
    		
    		}
    		
    	}
    	
    }
	
	public void mostrarTodos () throws SQLException {
		
		List<Pokemon> listaPokemons = dao.mostrarTodos();
		pv.mostrarTodos(listaPokemons);
		
	}
	
	public void mostrarPokemonNombre () throws SQLException {
		
		pv.mostrarPokemonNombre(dao.mostrarPokemonNombre(pv.pedirNombrePokemon(GENERICO)));
		
	}
	
	public void mostrarPokemonsTipo () throws SQLException {
		
		pv.mostrarPokemonsTipo(dao.mostrarPokemonsTipo(pv.pedirTipoPokemon()));
		
	}
	
	public void mostrarPokemonsMinStat () throws SQLException {
		
		pv.mostrarPokemonsMinStat(dao.mostrarPokemonsMinStat(pv.pedirNombreStat(), pv.pedirMinNumStat()));
		
	}
	
	// OPCION 2: SUBMENU EQUIPOS
    
    public void submenuEquipos () throws SQLException {
    	
    	int opcionMenu = -1;
    	
    	while (opcionMenu != 0) {
    		
    		switch (opcionMenu) {
    		
    			/*case 1 -> ;
    			case 2 -> ;
    			case 3 -> ;
    			case 4 -> ;
    			case 5 -> ;*/
    			default -> salidaMenu(opcionMenu, EQUIPOS);
    		
    		}
    		
    	}
    	
    }
    
	// OPCION 3: SUBMENU MOVIMIENTOS
    
    public void submenuMovimientos () throws SQLException {
    	
    	int opcionMenu = -1;
    	
    	while (opcionMenu != 0) {
    		
    		switch (opcionMenu) {
    		
    			/*case 1 -> ;
    			case 2 -> ;
    			case 3 -> ;*/
    			default -> salidaMenu(opcionMenu, MOVIMIENTOS);
    		
    		}
    		
    	}
    	
    }

	// OPCION 3: PELEA 1vs1
	
	public void batallaIndividual () throws SQLException {
		
		Pokemon pokeAliado = dao.mostrarPokemonNombre(pv.pedirNombrePokemon(ALIADO));
		Pokemon pokeRival = dao.mostrarPokemonNombre(pv.pedirNombrePokemon(RIVAL));
		
		if (pokeAliado == null) {
			
			pv.errorNoExisteElPokemon(ALIADO);
			
			return;
			
		}
		
		if (pokeRival == null) {
			
			pv.errorNoExisteElPokemon(RIVAL);
			
			return;
			
		}
		
		Pokemon rapido;
		Pokemon lento;
		
		if (pokeAliado.getVel() >= pokeRival.getVel()) {
		    
		    rapido = pokeAliado;
		    lento = pokeRival;
		    
		} else {
			
		    rapido = pokeRival;
		    lento = pokeAliado;
		    
		}
		
		pv.comenzarPeleaIndividual(pokeAliado, pokeRival); // Muestra el comienzo del combate
		pv.mostrarPokemonRapido(rapido); // Muestra que pokemon es mas rapido
		
		double hpAliado = pokeAliado.getPs();
		double hpRival = pokeRival.getPs();
		
		int[] ppAliado = new int[4];
		int[] ppRival = new int[4];
		
		// Se rellenan los array de PPs
		
		for (int i = 0;i < pokeAliado.getMovimientos().size();i++) {
			
			ppAliado[i] = pokeAliado.getMovimientos().get(i).getPp();
			
		}
		
		for (int i = 0;i < pokeRival.getMovimientos().size();i++) {

			ppRival[i] = pokeRival.getMovimientos().get(i).getPp();
			
		}
		
		while (hpAliado > 0 && hpRival > 0) {
			
			// Se crea el objeto ResultadoAtaque para que haga de mensajero para el daño, el multiplicador y si falla o no
			
			ResultadoAtaque resAtq;
			
			// Primero ataca el mas rapido
			
			if (rapido == pokeAliado) {
				
				// VALIDAR NO PODER USAR EL MOVIMIENTO CUANDO LLEGA A 0 Y QUE ELIJA UN MOVIMIENTO EXISTENTE (-1 ETC...)
				
				pv.mostrarMoviminetosConPPDiponibles(rapido, ppAliado);
				
				// Se comprueba que el movimiento que se quiere usar existe y esta disponible (Tiene 1 PP restante o mas)
				
				int numMov = -1;
				
				while (numMov == -1) {
					
					numMov = pv.seleccionarMovimiento();
					
					if (numMov == -1) {
						
						System.out.println("\n  Seleccione un movimiento existente.");
						
					}
					
					try {
						
						if (ppAliado[numMov] < 1) {
							
							pv.noQuedanPP();
							numMov = -1;
							
						}
						
					} catch (ArrayIndexOutOfBoundsException e) {
						
					}
					
				}
				
				resAtq = realizarDmg(rapido,lento,pokeAliado.getMovimientos().get(numMov));
				
				ppAliado[numMov] -= 1; // Se resta 1 PP a la habilidad usada
				
				double primerGolpe = resAtq.getDmg(); // Uso solo la parte del daño del mensajero ResultadoAtaque()
				
				hpRival -= primerGolpe;
				
				pv.mostrarMensajeAtaque(rapido, lento, hpRival, resAtq.getDmg(), resAtq.getEfectividad(), resAtq.getFallo(), pokeAliado.getMovimientos().get(numMov)); // Muestra quien daña a quien, la vida del defensor y el daño recibido
				
			} else {
				
				int numMov = (int) (Math.random() * 4); // Generar numero aleatorio entre el 0 y 3 para que seleccione el movimineto del rival
				
				resAtq = realizarDmg(rapido,lento,pokeRival.getMovimientos().get(numMov));
				
				ppRival[numMov] -= 1; // Se resta 1 PP a la habilidad usada
				
				double primerGolpe = resAtq.getDmg(); // Uso solo la parte del daño del mensajero ResultadoAtaque()
				
				hpAliado -= primerGolpe;
				
				pv.mostrarMensajeAtaque(rapido, lento, hpAliado, resAtq.getDmg(), resAtq.getEfectividad(), resAtq.getFallo(), pokeRival.getMovimientos().get(numMov)); // Muestra quien daña a quien, la vida del defensor y el daño recibido
				
			}
			
			// Si el pokemon lento sigue vivo despues del golpe, golpea el
			
			if (hpAliado > 0 && hpRival > 0) {
				
				if (lento == pokeAliado) {
					
					pv.mostrarMoviminetosConPPDiponibles(lento, ppAliado);
					
					int numMov = pv.seleccionarMovimiento();
					
					resAtq = realizarDmg(lento,rapido,pokeAliado.getMovimientos().get(numMov));
					
					ppAliado[numMov] -= 1; // Se resta 1 PP a la habilidad usada
					
					double segundoGolpe = resAtq.getDmg(); // Uso solo la parte del daño del mensajero ResultadoAtaque()
					
					hpRival -= segundoGolpe;
					
					pv.mostrarMensajeAtaque(lento, rapido, hpRival, resAtq.getDmg(), resAtq.getEfectividad(), resAtq.getFallo(), pokeAliado.getMovimientos().get(numMov)); // Muestra quien daña a quien, la vida del defensor y el daño recibido
					
				} else {
					
					int numMov = (int) (Math.random() * 4); // Generar numero aleatorio entre el 0 y 3 para que seleccione el movimineto del rival
					
					resAtq = realizarDmg(lento,rapido,pokeRival.getMovimientos().get(numMov));
					
					ppRival[numMov] -= 1; // Se resta 1 PP a la habilidad usada
					
					double segundoGolpe = resAtq.getDmg(); // Uso solo la parte del daño del mensajero ResultadoAtaque()
					
					hpAliado -= segundoGolpe;
					
					pv.mostrarMensajeAtaque(lento, rapido, hpAliado, resAtq.getDmg(), resAtq.getEfectividad(), resAtq.getFallo(), pokeRival.getMovimientos().get(numMov)); // Muestra quien daña a quien, la vida del defensor y el daño recibido
					
				}
				
			}
			
			pv.enterParaContinuar();
			
		}
		
		if (hpAliado > hpRival) {
			
			pv.mostrarVictoriaUsuario(pokeAliado);
			
		} else {
			
			pv.mostrarVictoriaRival(pokeRival);
			
		}
		
		pv.terminarPeleaIndividual();
		
	}
	
	// METODOS REUTILIZABLES
	
	public ResultadoAtaque realizarDmg (Pokemon pAtq, Pokemon pDef,Movimiento mov) {
		
		double dmgTotal = 0;
		double dmgAtacante = 0;
		double defDefensor = 0;
		double dmgHabilidad = mov.getPotencia(); // Daño de habilidad utilizada
		double probabilidad = (int) (Math.random() * 100) + 1;
		double precision = mov.getPrecision();
		double fallo = 1;
		double random = 0.85 + (Math.random() * (1.0 - 0.85)); // Randomizador del daño base (Suma de 0 a 0.15)
		double efectividad = Tipo.obtenerMultiplicador(mov.getTipo(), pDef.getTipos()[0]); // Multiplicador por efetividad
		
		// Otro multiplicador de efectividad si el defensor tiene dos tipos, no calculo si el atacante tiene otro tipo porque los ataques solo
		// tienen un tipo, se usa el tipo principal -> Tipos[0]. La segunda condicion es por si se traduce mal
		
		if (pDef.getTipos().length == 2 && !pDef.getTipos()[1].isBlank()) {
			
			efectividad *= Tipo.obtenerMultiplicador(mov.getTipo(), pDef.getTipos()[1]);
			
		}
		
		if (mov.getCategoria().equals("FIS")) {
			
			dmgAtacante = pAtq.getAtq();
			defDefensor = pDef.getDef();
			
		} else {
			
			dmgAtacante = pAtq.getAtEsp();
			defDefensor = pDef.getDefEsp();
			
		}
		
		// Condicional para saber si la habilidad falla o no en base a la precision del movimiento
		
		if (precision < probabilidad) {
			
			fallo = 0;
			
		}
		
		dmgTotal = ((((2 * 50 / 5.0) + 2) * dmgHabilidad * (dmgAtacante / defDefensor)) / 50.0) + 2; // Calculo de daño base
		
		// Se añade al daño base las variables del daño extra aleatorio(random), multiplicador de efectividad(efectividad) 
		// y se tiene en cuenta la precision(fallo)
		
		dmgTotal *= random * efectividad * fallo;
		
		return new ResultadoAtaque(dmgTotal,efectividad,fallo); // Uso el mensajero ResultadoAtaque() para enviar los datos dentro de un objeto
		
	}

	// MENUS
	
	public void salidaMenu (int opcionMenu, int tipoMenu) throws SQLException {
		
		if (opcionMenu != 0) {
			
			pv.errorValorMenu();
			
		} else {
			
			switch (tipoMenu) {
			
				case 1 -> pv.finPrograma(); // Fin programa completo
				case 2 -> pv.salidaMenuPokemons(); // Salir submenu pokemons
				case 3 -> pv.salidaMenuEquipos(); // Salir submenu equipos
				case 4 -> pv.salidaMenuMovimientos(); // Salir submenu movimientos
			
			}
			
		}
		
	}
	
}
