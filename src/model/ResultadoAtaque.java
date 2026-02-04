package model;

// Esta clase se usa como metodo de transporte de datos, se podria hacer un return de un double[] pero esta forma es mas limpia
// Al ser solo para transportar datos, no es necesario hacerle un toString

public class ResultadoAtaque {
	
	public double dmg;
	public double efectividad;
	public double fallo;
	
	// CONSTRUCTORES
	
	public ResultadoAtaque() {
		
	}
	
	public ResultadoAtaque(double dmg, double efectividad, double fallo) {
		
		this.dmg = dmg;
		this.efectividad = efectividad;
		this.fallo = fallo;
		
	}
	
	// GETTERS Y SETTERS

	public double getDmg() {
		return dmg;
	}

	public void setDmg(double dmg) {
		this.dmg = dmg;
	}

	public double getEfectividad() {
		return efectividad;
	}

	public void setEfectividad(double efectividad) {
		this.efectividad = efectividad;
	}

	public double getFallo() {
		return fallo;
	}

	public void setFallo(double fallo) {
		this.fallo = fallo;
	}

}
