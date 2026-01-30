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

	
	
}
