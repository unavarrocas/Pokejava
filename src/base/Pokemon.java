package base;

import java.util.Arrays;

public class Pokemon {
	
	private int numPokedex;
	private String nombre;
	private String[] tipos = new String[2];
	private double ps;
	private double atq;
	private double def;
	private double atEsp;
	private double defEsp;
	private double vel;
	
	// CONSTRUCTORES
	
	public Pokemon () {
		
	}
	
	public Pokemon(int numPokedex, String nombre, String[] tipos, double ps, double atq, double def, double atEsp, double defEsp, double vel) {
		
		this.numPokedex = numPokedex;
		this.nombre = nombre;
		this.tipos = tipos;
		this.ps = ps;
		this.atq = atq;
		this.def = def;
		this.atEsp = atEsp;
		this.defEsp = defEsp;
		this.vel = vel;
		
	}
	
	// GETTERS Y SETTERS

	public int getNumPokedex() {
		return numPokedex;
	}

	public void setNumPokedex(int numPokedex) {
		this.numPokedex = numPokedex;
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
		return "Pokemon [numPokedex=" + numPokedex + ", nombre=" + nombre + ", tipos=" + Arrays.toString(tipos)
				+ ", atq=" + atq + ", def=" + def + ", atEsp=" + atEsp + ", defEsp=" + defEsp + ", vel=" + vel + "]";
	}
	
	public String pokemonToString() {
		
		String tiposPokemon = mostrarTipos();
		
		return "\n╔═════ ∘◦ " + nombre + " ◦∘ ══════╗\n"
			 + "\n  Nº Pokedex: " + numPokedex + "\n"
			 + "  Tipo/s: " + tiposPokemon + "\n"
			 + "  PS: " + ps + "\n"
			 + "  Ataque: " + atq + "\n"
			 + "  Defensa: " + def + "\n"
			 + "  Atq. Especial: " + atEsp + "\n"
			 + "  Def. Especial: " + defEsp + "\n"
			 + "  Velocidad: " + vel + "\n"
			 + "\n╚═════ ∘◦ " + nombre + " ◦∘ ══════╝\n";
		
	}
	
	public String bulkToString() {
		
		String tiposPokemon = mostrarTipos();
		
		return "Nº" + numPokedex + " - Nombre: " + nombre + " - Tipo/s: " + tiposPokemon + " - Estadisticas [PS: " + ps + ", Atq: " + atq + ", Def: " + def + ", At. Esp: " + atEsp + ", Def. Esp: " + defEsp + ", Vel: " + vel + "]";
		
	}
	
	// METODOS
	
	private String mostrarTipos () {
		
		String tiposPokemon = "";
		
		for (int i = 0; i < tipos.length;i++) {
			
			if (i < tipos.length - 1) {
				
				tiposPokemon += tipos[i] + ", ";
				
			} else {
				
				tiposPokemon += tipos[i];
				
			}
			
		}
		
		return tiposPokemon;
		
	}
}
