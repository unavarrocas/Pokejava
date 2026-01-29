package controller;

import java.sql.SQLException;
import java.util.List;

import dao.PokemonDAO;
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
    
    // Menu principal con el arraque
    
    public void arranquePrograma () throws SQLException {
    	
		int opcionMenu = -1;
		
		while (opcionMenu != 0) {
			
			pv.mostrarMenuPrincipal();
			
			opcionMenu = pv.pedirOpcionMenu();
			
			switch (opcionMenu) {
			
				case 1 -> mostrarTodos();
				case 2 -> mostrarPokemonNombre();
				case 3 -> batallaIndividual();
				/*case 4 -> ;
				case 5 -> ;
				case 6 -> ;
				case 7 -> ;
				case 8 -> ;
				case 9 -> ;*/
				default -> salidaMenu(opcionMenu);
			}
			
		}
    	
    }
	
	// OPCION 1: MOSTRAR TODOS LOS POKEMONS
	
	public void mostrarTodos () throws SQLException {
		
		List<Pokemon> listaPokemons = dao.mostrarTodos();
		pv.mostrarTodos(listaPokemons);
		
	}
	
	// OPCION 2: MOSTRAR POKEMON INDICADO POR EL USUARIO
	
	public void mostrarPokemonNombre () throws SQLException {
		
		pv.mostrarPokemonNombre(dao.mostrarPokemonNombre(pv.pedirNombrePokemon(GENERICO)));
		
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
		
		while (hpAliado > 0 && hpRival > 0) {
			
			// Se crea el objeto ResultadoAtaque para que haga de mensajero para el daño y el multiplicador
			
			ResultadoAtaque resAtq = realizarDmg(rapido,lento);
			
			// Primero ataca el mas rapido
			
			double primerGolpe = resAtq.getDmg(); // Uso solo la parte del daño del mensajero ResultadoAtaque()
			
			if (rapido == pokeAliado) {
				
				hpRival -= primerGolpe;
				
				pv.mostrarMensajeAtaque(rapido, lento, hpRival, resAtq.getDmg(), resAtq.getEfectividad()); // Muestra quien daña a quien, la vida del defensor y el daño recibido
				
			} else {
				
				hpAliado -= primerGolpe;
				
				pv.mostrarMensajeAtaque(rapido, lento, hpAliado, resAtq.getDmg(), resAtq.getEfectividad()); // Muestra quien daña a quien, la vida del defensor y el daño recibido
				
			}
			
			// Si el pokemon lento sigue vivo despues del golpe, golpea el
			
			if (hpAliado > 0 && hpRival > 0) {
				
				resAtq = realizarDmg(lento,rapido);
				
				double segundoGolpe = resAtq.getDmg();
				
				if (lento == pokeAliado) {
					
					hpRival -= segundoGolpe;
					
					pv.mostrarMensajeAtaque(lento, rapido, hpRival, resAtq.getDmg(), resAtq.getEfectividad()); // Muestra quien daña a quien, la vida del defensor y el daño recibido
					
				} else {
					
					hpAliado -= segundoGolpe;
					
					pv.mostrarMensajeAtaque(lento, rapido, hpAliado, resAtq.getDmg(), resAtq.getEfectividad()); // Muestra quien daña a quien, la vida del defensor y el daño recibido
					
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
	
	public int pedirOpcionMenu () {
		
		return pv.pedirOpcionMenu();
		
	}
	
	public ResultadoAtaque realizarDmg (Pokemon p1, Pokemon p2) {
		
		double dmgTotal = 0;
		double dmgAtacante = 0;
		double defDefensor = 0;
		double dmgPlanoHabilidad = 90; // Daño plano simulando una habilidad (cambiar a futuro)
		double random = 0.85 + (Math.random() * (1.0 - 0.85)); // Randomizador del daño base (Suma de 0 a 0.15)
		double efectividad = Tipo.obtenerMultiplicador(p1.getTipos()[0], p2.getTipos()[0]); // Multiplicador por efetividad
		
		// Otro multiplicador de efectividad si el defensor tiene dos tipos, no calculo si el atacante tiene otro tipo porque los ataques solo
		// tienen un tipo, se usa el tipo principal -> Tipos[0]. La segunda condicion es por si se traduce mal
		
		if (p2.getTipos().length == 2 && !p2.getTipos()[1].isBlank()) {
			
			efectividad *= Tipo.obtenerMultiplicador(p1.getTipos()[0], p2.getTipos()[1]);
			
		}
		
		if (p1.getAtq() >= p1.getAtEsp()) {
			
			dmgAtacante = p1.getAtq();
			defDefensor = p2.getDef();
			
		} else {
			
			dmgAtacante = p1.getAtEsp();
			defDefensor = p2.getDefEsp();
			
		}
		
		dmgTotal = ((((2 * 50 / 5.0) + 2) * dmgPlanoHabilidad * (dmgAtacante / defDefensor)) / 50.0) + 2; // Calculo de daño base
		
		dmgTotal *= random * efectividad;
		
		return new ResultadoAtaque(dmgTotal,efectividad); // Uso el mensajero ResultadoAtaque() para enviar ambos datos dentro de un objeto
		
	}

	// MENUS
	
	public void mostrarMenuPrincipal () {
		
		pv.mostrarMenuPrincipal();
		
	}
	
	public void salidaMenu (int opcionMenu) throws SQLException {
		
		if (opcionMenu != 0) {
			
			pv.errorValorMenu();
			
		} else {
			
			pv.finPrograma();
			
		}
		
	}
	
}
