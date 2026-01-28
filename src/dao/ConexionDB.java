package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionDB {
    
	// Al ser constantes declaro las variables en mayusculas
	
    private static final String URL = "jdbc:mysql://localhost:3306/pokemons_db";
    private static final String USER = "root";
    private static final String PASS = "";

    private static Connection conexion = null; // Esto guarda la conexion que va a estar abierta

    public static Connection getConexion() {
        try {

            if (conexion == null || conexion.isClosed()) {
            	
                conexion = DriverManager.getConnection(URL, USER, PASS);
                System.out.println("  [INFO] Conexión establecida con la base de datos.");
                
            }
            
        } catch (SQLException e) {
        	
            System.out.println("  [ERROR] Error de conexión: " + e.getMessage());
            
        }
        
        return conexion;
    }
    
    public static void cerrarConexion() {
        try {
        	
            if (conexion != null && !conexion.isClosed()) {
            	
                conexion.close();
                System.out.println("  [INFO] Conexión cerrada correctamente.");
                
            }
            
        } catch (SQLException e) {
        	
            System.out.println("  [ERROR] No se pudo cerrar la conexión: " + e.getMessage());
            
        }
    }

}
