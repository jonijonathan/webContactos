package Modelo;

import Auxiliar.Constantes;
import java.sql.*;
import java.util.HashMap;
import java.util.LinkedList;
import javax.swing.JOptionPane;

public class ConexionEstatica {

    //********************* Atributos *************************
    private static java.sql.Connection Conex;
    //Atributo a través del cual hacemos la conexión física.
    private static java.sql.Statement Sentencia_SQL;
    //Atributo que nos permite ejecutar una sentencia SQL
    private static java.sql.ResultSet Conj_Registros;


    public static void nueva(){
        try {
         //Cargar el driver/controlador
            String controlador = "com.mysql.jdbc.Driver";
            //String controlador = "com.mysql.cj.jdbc.Driver";
            //String controlador = "oracle.jdbc.driver.OracleDriver";
            //String controlador = "sun.jdbc.odbc.JdbcOdbcDriver"; 
            //String controlador = "org.mariadb.jdbc.Driver"; // MariaDB la version libre de MySQL (requiere incluir la librería jar correspondiente).
            //Class.forName("org.mariadb.jdbc.Driver");              
            //Class.forName(controlador).newInstance();
            //Class.forName(controlador);
            //Class.forName("com.mysql.jdbc.Driver").newInstance(); 

            String URL_BD = "jdbc:mysql://127.0.0.1:3306/" + Constantes.BBDD;
            //String URL_BD = "jdbc:mariadb://"+this.servidor+":"+this.puerto+"/"+this.bbdd+"";
            //String URL_BD = "jdbc:oracle:oci:@REPASO";
            //String URL_BD = "jdbc:oracle:oci:@REPASO";
            //String URL_BD = "jdbc:odbc:REPASO";
            String connectionString = "jdbc:mysql://localhost:3306/" + Constantes.BBDD + "?user=" + Constantes.usuario + "&password=" + Constantes.password + "&useUnicode=true&characterEncoding=UTF-8";

            //Realizamos la conexión a una BD con un usuario y una clave.
            Conex = java.sql.DriverManager.getConnection(connectionString);
            //Conex = java.sql.DriverManager.getConnection(URL_BD, Constantes.usuario, Constantes.password);
            //Conex = DriverManager.getConnection(  
                //   "jdbc:mariadb://localhost:3306/"+ Constantes.BBDD, Constantes.usuario, Constantes.password); 
            Sentencia_SQL = Conex.createStatement();
            System.out.println("Conexion realizada con éxito");
        } catch (Exception e) {
            System.err.println("Exception: " + e.getMessage());
        }
    }
    
    public static void cerrarBD() {
        try {
            // resultado.close();
            Conex.close();
            System.out.println("Desconectado de la Base de Datos"); // Opcional para seguridad
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage(), "Error de Desconexion", JOptionPane.ERROR_MESSAGE);
        }
    }

   public static Usuario loggear(String user, String contra) {
        nueva();
        Usuario p = null;
        String Sentencia = "select * from " + Constantes.tablaUsuarios + " where email= '" + user + "' and clave = '" + contra + "'";
        System.out.println(Sentencia);

        try {
            ConexionEstatica.Conj_Registros = ConexionEstatica.Sentencia_SQL.executeQuery(Sentencia);
            if (ConexionEstatica.Conj_Registros.next()) {
                p = new Usuario(Conj_Registros.getString("email"), Conj_Registros.getString("nombre"), 
                        Conj_Registros.getString("foto"), Conj_Registros.getBoolean("rSeria"),
                        Conj_Registros.getInt("deportivo"), Conj_Registros.getInt("artistico"), 
                        Conj_Registros.getInt("politico"), Conj_Registros.getBoolean("tieneHijos"),
                        Conj_Registros.getBoolean("quiereHijos"), Conj_Registros.getString("sexo"),
                        Conj_Registros.getString("interesadoEn"));
            }
           
        } catch (Exception e) {
            System.out.println(e);
        };
        cerrarBD();
        return p;
    }

   public static boolean addUsuario(Usuario p){
        nueva();
        boolean conseguido = false;
        String Sentencia = "INSERT INTO " + Constantes.tablaUsuarios + " VALUES "
                + "('" + p.getEmail() + "'," + "'" + p.getNombre() + "','" + p.getClave() + "','"
                + p.getFoto() + "'," + p.isrSeria() + ", " + p.getDeportivo() 
                + "," + p.getArtistico() + "," + p.getPolitico() + ", " + p.isTieneHijos() + ","
                + p.isQuiereHijos() + ",'" + p.getSexo() + "','"+ p.getInteresadoEn() +"'," + p.ispActivado() + ");";
        System.out.println(Sentencia);
        
        //--- Meter las asignaturas
        try {
            ConexionEstatica.Sentencia_SQL.executeUpdate(Sentencia);
            Sentencia = "INSERT INTO " + Constantes.tablaRolUser +
                    " VALUES ('" + p.getEmail() + "', 2 )";
            ConexionEstatica.Sentencia_SQL.executeUpdate(Sentencia);
            System.out.println(Sentencia);
            conseguido = true;
            cerrarBD();
        } catch (Exception e) {
            System.out.println(e);
        };

        return conseguido;
   }
   
   
    public static LinkedList dimeRoles(String email){
    nueva();
    LinkedList roles = new LinkedList<String>();
    //select nombre, identificador from rol 
    //HAVING identificador in (SELECT identificador from rolUser WHERE email = "pera@gmail.com") 
    String sentencia = "select  nombre, identificador  from " + Constantes.tablaRol +
            " HAVING identificador in (select identificador from " + Constantes.tablaRolUser + " where email = '" + email + "')" ;
        System.out.println(sentencia);
    try{
        ConexionEstatica.Conj_Registros = ConexionEstatica.Sentencia_SQL.executeQuery(sentencia);
        while(ConexionEstatica.Conj_Registros.next()){
            roles.add(Conj_Registros.getString("nombre"));   
        }
    }catch(Exception e){}
    cerrarBD();
    return roles;
    }
    
     public static Usuario buscaEmail(String email) {
        nueva();
        Usuario p = null;
        String Sentencia = "select * from " + Constantes.tablaUsuarios + " where email= '" + email + "';";
        System.out.println(Sentencia);

        try {
            ConexionEstatica.Conj_Registros = ConexionEstatica.Sentencia_SQL.executeQuery(Sentencia);
            if (ConexionEstatica.Conj_Registros.next()) {
                //String nombre, int edad, String sexo, String fecha, String curso, String contra, String apellido, String email, String rol
                p = new Usuario(Conj_Registros.getString("email"));
            }
            cerrarBD();
        } catch (Exception e) {
            System.out.println(e);
        };

        return p;
    }
     
     public static boolean modificarContraseña(Usuario p) {
        boolean modificado = false;
        nueva();
        try {
            String sentencia = "UPDATE " + Constantes.tablaUsuarios
                    + " set contra = '" + p.getClave()
                    + "' where email = '" + p.getEmail() + "';";
            ConexionEstatica.Sentencia_SQL.executeUpdate(sentencia);
            modificado = true;

        } catch (Exception e) {
        }
        cerrarBD();
        return modificado;
    }
}
