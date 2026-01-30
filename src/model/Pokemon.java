package model;

import java.util.Arrays;
import java.util.List;
import java.util.ArrayList;

public class Pokemon {
	
	private int id;
	private String nombre;
	private String[] tipos = new String[2];
	private double ps;
	private double atq;
	private double def;
	private double atEsp;
	private double defEsp;
	private double vel;
	private List<Movimiento> movimientos;
	
	// CONSTRUCTORES
	
	public Pokemon () {
		
		this.movimientos = new ArrayList<>();
		
	}
	
	public Pokemon(int id, String nombre, String[] tipos, double ps, double atq, double def, double atEsp, double defEsp, double vel) {
		
		this.id = id;
		this.nombre = nombre;
		this.tipos = tipos;
		this.ps = ps;
		this.atq = atq;
		this.def = def;
		this.atEsp = atEsp;
		this.defEsp = defEsp;
		this.vel = vel;
		this.movimientos = new ArrayList<>();
		
	}
	
	// GETTERS Y SETTERS

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String[] getTipos() {
		return tipos;
	}

	public void setTipos(String[] tipos) {
		this.tipos = tipos;
	}
	
	public double getPs() {
		return ps;
	}

	public void setPs(double ps) {
		this.ps = ps;
	}

	public double getAtq() {
		return atq;
	}

	public void setAtq(double atq) {
		this.atq = atq;
	}

	public double getDef() {
		return def;
	}

	public void setDef(double def) {
		this.def = def;
	}

	public double getAtEsp() {
		return atEsp;
	}

	public void setAtEsp(double atEsp) {
		this.atEsp = atEsp;
	}

	public double getDefEsp() {
		return defEsp;
	}

	public void setDefEsp(double defEsp) {
		this.defEsp = defEsp;
	}

	public double getVel() {
		return vel;
	}

	public void setVel(double vel) {
		this.vel = vel;
	}
	
	// toStrings personalizados

	@Override
	public String toString() {
		return "Pokemon [numPokedex=" + id + ", nombre=" + nombre + ", tipos=" + Arrays.toString(tipos)
				+ ", atq=" + atq + ", def=" + def + ", atEsp=" + atEsp + ", defEsp=" + defEsp + ", vel=" + vel + "]";
	}
	
	public String pokemonToString() {
		
		String tiposPokemon = mostrarTipos();
		String movPokemon = mostrarMov();
		
		return "\n╔═════════ ∘◦ " + nombre + " ◦∘ ══════════╗\n"
			 + "\n  Nº Pokedex: " + id + "\n"
			 + "  Tipo/s: " + tiposPokemon + "\n"
			 + "  PS: " + ps + "\n"
			 + "  Ataque: " + atq + "\n"
			 + "  Defensa: " + def + "\n"
			 + "  Atq. Especial: " + atEsp + "\n"
			 + "  Def. Especial: " + defEsp + "\n"
			 + "  Velocidad: " + vel + "\n\n"
			 + "  Movimientos: " + "\n\n"
			 + "  " + movPokemon
			 + "\n╚═════════ ∘◦ " + nombre + " ◦∘ ══════════╝\n";
		
	}
	
	public String bulkToString() {
		
		String tiposPokemon = mostrarTipos();
		
		return "Nº" + id + " - Nombre: " + nombre + " - Tipo/s: " + tiposPokemon + " - Estadisticas [PS: " + ps + ", Atq: " + atq + ", Def: " + def + ", At. Esp: " + atEsp + ", Def. Esp: " + defEsp + ", Vel: " + vel + "]";
		
	}
	
	// METODOS
	
	private String mostrarTipos () {
		
		String tiposPokemon = "";
		
		for (int i = 0;i < tipos.length;i++) {
			
			if (i < tipos.length - 1) {
				
				tiposPokemon += tipos[i] + ", ";
				
			} else {
				
				tiposPokemon += tipos[i];
				
			}
			
		}
		
		return tiposPokemon;
		
	}
	
	private String mostrarMov () {
		
		String movPokemon = "";
		
		for (int i = 0;i < movimientos.size();i++) {
						
			if (i == 0) {
				
				movPokemon += "-> [" + movimientos.get(i).getPp() + "] - " + movimientos.get(i).getNombre() + "\n";
				
			} else {
				
				movPokemon += "  -> [" + movimientos.get(i).getPp() + "] - " + movimientos.get(i).getNombre() + "\n";
	
			}
			
		}
		
		return movPokemon;
		
	}
	
	public void agregarMovimiento (Movimiento m) {
		
		this.movimientos.add(m);
		
	}
}
