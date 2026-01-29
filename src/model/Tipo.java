package model;

public enum Tipo {
	
	NORMAL,FUEGO,AGUA,PLANTA,ELECTRICO,HIELO,LUCHA,VENENO,TIERRA,VOLADOR,PSIQUICO,BICHO,ROCA,FANTASMA,DRAGON,SINIESTRO,ACERO,HADA;
	
	public static double obtenerMultiplicador (String atq, String def) {
		
		Tipo tipoAtq = corregirTildes(atq);
		Tipo tipoDef = corregirTildes(def);
		
		return tipoAtq.multDmg(tipoDef);
		
	}
	
	private static Tipo corregirTildes (String tipo) {
		
		String limpio = tipo.toUpperCase().replace("Á", "A").replace("É", "E").replace("Í", "I").replace("Ó", "O").replace("Ú", "U");
		
		return Tipo.valueOf(limpio);
		
	}
	
	public double multDmg(Tipo tipo) {
		
		switch (this) {
		
			case NORMAL:
				
				if (tipo == ROCA || tipo == ACERO) return 0.5;
				if (tipo == FANTASMA) return 0.0;
				
				break;
				
			case FUEGO:
				
				if (tipo == PLANTA || tipo == HIELO || tipo == BICHO || tipo == ACERO) return 2.0;
				if (tipo == FUEGO || tipo == AGUA || tipo == ROCA || tipo == DRAGON) return 0.5;
				
				break;
				
			case AGUA:
				
				if (tipo == FUEGO || tipo == TIERRA || tipo == ROCA) return 2.0;
				if (tipo == AGUA || tipo == PLANTA || tipo == DRAGON) return 0.5;
				
				break;
				
			case PLANTA:
				
				if (tipo == AGUA || tipo == ROCA || tipo == TIERRA) return 2.0;
				if (tipo == VOLADOR || tipo == VENENO || tipo == BICHO || tipo == ACERO || tipo == FUEGO || tipo == PLANTA || tipo == DRAGON) return 0.5;
				
				break;
				
			case ELECTRICO:
				
				if (tipo == VOLADOR || tipo == AGUA) return 2.0;
				if (tipo == PLANTA || tipo == ELECTRICO || tipo == DRAGON) return 0.5;
				if (tipo == TIERRA) return 0.0;
				
				break;
				
			case HIELO:
				
				if (tipo == VOLADOR || tipo == TIERRA || tipo == PLANTA || tipo == DRAGON) return 2.0;
				if (tipo == ACERO || tipo == FUEGO || tipo == AGUA || tipo == HIELO) return 0.5;
				
				break;
				
			case LUCHA:
				
				if (tipo == NORMAL || tipo == ROCA || tipo == ACERO || tipo == HIELO || tipo == SINIESTRO) return 2.0;
				if (tipo == VOLADOR || tipo == VENENO || tipo == BICHO || tipo == PSIQUICO || tipo == HADA) return 0.5;
				if (tipo == FANTASMA) return 0.0;
				
				break;
				
			case VENENO:
				
				if (tipo == PLANTA || tipo == HADA) return 2.0;
				if (tipo == VENENO || tipo == TIERRA || tipo == ROCA || tipo == FANTASMA) return 0.5;
				if (tipo == ACERO) return 0.0;
				
				break;
				
			case TIERRA:
				
				if (tipo == VENENO || tipo == ROCA || tipo == ACERO || tipo == FUEGO || tipo == ELECTRICO) return 2.0;
				if (tipo == BICHO || tipo == PLANTA) return 0.5;
				if (tipo == VOLADOR) return 0.0;
				
				break;
				
			case VOLADOR:
				
				if (tipo == LUCHA || tipo == BICHO || tipo == PLANTA) return 2.0;
				if (tipo == ROCA || tipo == ACERO || tipo == ELECTRICO) return 0.5;
				
				break;
				
			case PSIQUICO:
				
				if (tipo == LUCHA || tipo == VENENO) return 2.0;
				if (tipo == ACERO || tipo == PSIQUICO) return 0.5;
				if (tipo == SINIESTRO) return 0.0;
				
				break;
				
			case BICHO:
				
				if (tipo == PLANTA || tipo == PSIQUICO || tipo == SINIESTRO) return 2.0;
				if (tipo == LUCHA || tipo == VOLADOR || tipo == VENENO || tipo == FANTASMA || tipo == ACERO || tipo == FUEGO || tipo == HADA) return 0.5;
				
				break;
				
			case ROCA:
				
				if (tipo == VOLADOR || tipo == BICHO || tipo == FUEGO || tipo == HIELO) return 2.0;
				if (tipo == LUCHA || tipo == TIERRA || tipo == ACERO) return 0.5;
				
				break;
				
			case FANTASMA:
				
				if (tipo == FANTASMA || tipo == PSIQUICO) return 2.0;
				if (tipo == SINIESTRO) return 0.5;
				if (tipo == NORMAL) return 0.0;
				
				break;
				
			case DRAGON:
				
				if (tipo == DRAGON) return 2.0;
				if (tipo == ACERO) return 0.5;
				if (tipo == HADA) return 0.0;
				
				break;
				
			case SINIESTRO:
				
				if (tipo == FANTASMA || tipo == PSIQUICO) return 2.0;
				if (tipo == LUCHA || tipo == SINIESTRO || tipo == HADA) return 0.5;
				
				break;
				
			case ACERO:
				
				if (tipo == ROCA || tipo == HIELO || tipo == HADA) return 2.0;
				if (tipo == ACERO || tipo == FUEGO || tipo == AGUA || tipo == ELECTRICO) return 0.5;
				
				break;
				
			case HADA:
				
				if (tipo == LUCHA || tipo == DRAGON || tipo == SINIESTRO) return 2.0;
				if (tipo == VENENO || tipo == ACERO || tipo == FUEGO) return 0.5;
				
				break;
				
		}
		
		return 1.0;
		
	}

}
