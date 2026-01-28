package model;

import java.util.ArrayList;

public class Equipo {
	
	private String nombreEquipo;
	private ArrayList<Pokemon> miembrosEquipo = new ArrayList<Pokemon>();
	
	// CONSTRUCTORES
	
	public Equipo() {
		
	}


	public Equipo(String nombreEquipo) {
		
		this.nombreEquipo = nombreEquipo;
		
	}
	
	// GETTERS Y SETTERS

	public String getNombreEquipo() {
		return nombreEquipo;
	}


	public void setNombreEquipo(String nombreEquipo) {
		this.nombreEquipo = nombreEquipo;
	}


	public ArrayList<Pokemon> getMiembrosEquipo() {
		return miembrosEquipo;
	}


	public void setMiembrosEquipo(ArrayList<Pokemon> miembrosEquipo) {
		this.miembrosEquipo = miembrosEquipo;
	}

	// toStrings personalizados

	@Override
	public String toString() {
		return "Equipo [nombreEquipo=" + nombreEquipo + ", miembrosEquipo=" + miembrosEquipo + "]";
	}
	
	public String bulkToString() {
		
		String pokemons = listarMiembrosEquipo();
		
		return nombreEquipo + " - Pokemons[" + pokemons + "]";
	
	}
	
	public String equipoToString() {
		
		String[] pokemons = listarMiembrosEquipo().replace(" ", "").split(",");
		
		String miembros = "";
		
		for (int i = 0;i < pokemons.length;i++) {
			
			miembros += "  " + pokemons[i] + "\n";
			
		}
		
		return "\n╔═════ ∘◦ " + nombreEquipo + " ◦∘ ══════╗\n\n"
			 + miembros
			 + "\n╚═════ ∘◦ " + nombreEquipo + " ◦∘ ══════╝\n";
		
	}
	
	// METODOS
	
	public void agregarPokemon (Pokemon p) {
		
		miembrosEquipo.add(p);
		
	}
	
	private String listarMiembrosEquipo () {
		
		String pokemons = "";
		
		for (int i = 0;i < miembrosEquipo.size();i++) {
			
			if (i == miembrosEquipo.size() - 1) {
				
				pokemons += miembrosEquipo.get(i).getNombre();
				
			} else {
				
				pokemons += miembrosEquipo.get(i).getNombre() + ", ";
				
			}
			
		}
		
		return pokemons;
		
	}
	

}
