package model;

public class Movimiento {
	
	private int id;
	private String nombre;
	private String tipo;
	private String categoria;
	private double potencia;
	private double precision;
	private int pp;
	
	//CONSTRUCTORES
	
	public Movimiento() {
		
	}

	public Movimiento(int id, String nombre, String tipo, String categoria, double potencia, double precision, int pp) {
		
		this.id = id;
		this.nombre = nombre;
		this.tipo = tipo;
		this.categoria = categoria;
		this.potencia = potencia;
		this.precision = precision;
		this.pp = pp;
		
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

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public double getPotencia() {
		return potencia;
	}

	public void setPotencia(double potencia) {
		this.potencia = potencia;
	}

	public double getPrecision() {
		return precision;
	}

	public void setPrecision(double precision) {
		this.precision = precision;
	}

	public int getPp() {
		return pp;
	}

	public void setPp(int pp) {
		this.pp = pp;
	}

	// toString
	
	public String toString() {
		return "Movimiento [id=" + id + ", nombre=" + nombre + ", tipo=" + tipo + ", categoria=" + categoria
				+ ", potencia=" + potencia + ", precision=" + precision + ", pp=" + pp + ", getId()=" + getId()
				+ ", getNombre()=" + getNombre() + ", getTipo()=" + getTipo() + ", getCategoria()=" + getCategoria()
				+ ", getPotencia()=" + getPotencia() + ", getPrecision()=" + getPrecision() + ", getPp()=" + getPp()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
	public String nombreMovToString() {
		
		return nombre;
		
	}
	
	public String tipoMovimientoColor () {
		
		String RESET = "\u001B[0m";
		String NORMAL = "\u001b[38;5;250m";
		String FUEGO = "\u001b[38;5;196m";
		String AGUA = "\u001b[38;5;26m";
		String PLANTA = "\u001b[38;5;40m";
		String ELEC = "\u001b[38;5;220m";
		String HIELO = "\u001b[38;5;117m";
		String LUCHA = "\u001b[38;5;202m";
		String VEN = "\u001b[38;5;53m";
		String TIERRA = "\u001b[38;5;136m";
		String VOL = "\u001b[38;5;32m";
		String PSI = "\u001b[38;5;161m";
		String BICHO = "\u001b[38;5;64m";
		String ROCA = "\u001b[38;5;58m";
		String FAN = "\u001b[38;5;17m";
		String DRA = "\u001b[38;5;19m";
		String SIN = "\u001b[38;5;234m";
		String ACERO = "\u001b[38;5;240m";
		String HADA = "\u001b[38;5;206m";
		
		String tipoColorido = this.tipo.toUpperCase().replace("Á", "A").replace("É", "E").replace("Í", "I").replace("Ó", "O").replace("Ú", "U").substring(0,3);
		
		switch (tipoColorido) {
		
		case "NOR":
			
			tipoColorido = NORMAL + tipoColorido + RESET;
			
			break;
			
		case "FUE":
			
			tipoColorido = FUEGO + tipoColorido + RESET;
			
			break;
			
		case "AGU":
			
			tipoColorido = AGUA + tipoColorido + RESET;
			
			break;
			
		case "PLA":
			
			tipoColorido = PLANTA + tipoColorido + RESET;
			
			break;
			
		case "ELE":
			
			tipoColorido = ELEC + tipoColorido + RESET;
			
			break;
			
		case "HIE":
			
			tipoColorido = HIELO + tipoColorido + RESET;
			
			break;
			
		case "LUC":
			
			tipoColorido = LUCHA + tipoColorido + RESET;
			
			break;
			
		case "VEN":
			
			tipoColorido = VEN + tipoColorido + RESET;
			
			break;
			
		case "TIE":
			
			tipoColorido = TIERRA + tipoColorido + RESET;
			
			break;
			
		case "VOL":
			
			tipoColorido = VOL + tipoColorido + RESET;
			
			break;
			
		case "PSI":
			
			tipoColorido = PSI + tipoColorido + RESET;
			
			break;
			
		case "BIC":
			
			tipoColorido = BICHO + tipoColorido + RESET;
			
			break;
			
		case "ROC":
			
			tipoColorido = ROCA + tipoColorido + RESET;
			
			break;
			
		case "FAN":
			
			tipoColorido = FAN + tipoColorido + RESET;
			
			break;
			
		case "DRA":
			
			tipoColorido = DRA + tipoColorido + RESET;
			
			break;
			
		case "SIN":
			
			tipoColorido = SIN + tipoColorido + RESET;
			
			break;
			
		case "ACE":
			
			tipoColorido = ACERO + tipoColorido + RESET;
			
			break;
			
		case "HAD":
			
			tipoColorido = HADA + tipoColorido + RESET;
			
			break;
			
	}
		
		return tipoColorido;
		
	}

	
	
}
