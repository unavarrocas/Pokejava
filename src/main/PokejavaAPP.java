package main;

import java.sql.SQLException;

import controller.PokemonController;
import dao.PokemonDAO;
import view.PokemonView;

public class PokejavaAPP {

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
		
	    PokemonView pv = new PokemonView();
		
		try {
			
		    // Declaracion del DAO, view y controller
		    
		    PokemonDAO dao = new PokemonDAO();
		    PokemonController pc = new PokemonController(dao,pv);
		    
		    // Arranque del programa
		    
		    pc.arranquePrograma();
			
		} catch (Exception e) {
			
			pv.errorMain(e.getMessage());
			
		}

	}

}
