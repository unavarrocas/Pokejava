package model;

// Esta clase se usa como metodo de transporte de datos, se podria hacer un return de un double[] pero esta forma es mas limpia
// Al ser solo para transportar datos, no es necesario hacerle un toString

public class ResultadoAtaque {
	
	public double dmg;
	public double efectividad;
	
	// CONSTRUCTORES
	
	public ResultadoAtaque() {
		
	}
	
	public ResultadoAtaque(double dmg, double efectividad) {
		
		this.dmg = dmg;
		this.efectividad = efectividad;
		
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

}
