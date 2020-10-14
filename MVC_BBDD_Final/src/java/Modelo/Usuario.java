package Modelo;

/**
 *
 * @author jonathan
 */
public class Usuario {

    private String email;
    private String nombre;
    private String clave;
    private String foto;
    private boolean rSeria;
    private int deportivo;
    private int artistico;
    private int politico;
    private boolean tieneHijos;
    private boolean quiereHijos;
    private String sexo;
    private String interesadoEn;
    

    public Usuario() {
    }

    public Usuario(String email, String nombre, String clave) {
        this.email = email;
        this.nombre = nombre;
        this.clave = clave;
        this.foto = "";
        this.rSeria = false;
        this.deportivo = 0;
        this.artistico = 0;
        this.politico = 0;
        this.tieneHijos = false;
        this.quiereHijos = false;
        this.sexo = "hombre";
        this.interesadoEn = "ambos";
        
    }

    public Usuario(String email, String nombre, String foto, boolean rSeria, int deportivo, int artistico, int politico, boolean tieneHijos, boolean quiereHijos, String sexo, String interesadoEn) {
        this.email = email;
        this.nombre = nombre;
        this.clave = "";
        this.foto = foto;
        this.rSeria = rSeria;
        this.deportivo = deportivo;
        this.artistico = artistico;
        this.politico = politico;
        this.tieneHijos = tieneHijos;
        this.quiereHijos = quiereHijos;
        this.sexo = sexo;
        this.interesadoEn = interesadoEn;
    }

    public Usuario(String email) {
        this.email = email;
        this.nombre = "";
        this.clave = "";
        this.foto = "";
        this.rSeria = false;
        this.deportivo = 0;
        this.artistico = 0;
        this.politico = 0;
        this.tieneHijos = false;
        this.quiereHijos = false;
        this.sexo = "";
        this.interesadoEn = "ambos";
    }
    
    
    

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public boolean isrSeria() {
        return rSeria;
    }

    public void setrSeria(boolean rSeria) {
        this.rSeria = rSeria;
    }

    public int getDeportivo() {
        return deportivo;
    }

    public void setDeportivo(int deportivo) {
        this.deportivo = deportivo;
    }

    public int getArtistico() {
        return artistico;
    }

    public void setArtistico(int artistico) {
        this.artistico = artistico;
    }

    public int getPolitico() {
        return politico;
    }

    public void setPolitico(int politico) {
        this.politico = politico;
    }

    public boolean isTieneHijos() {
        return tieneHijos;
    }

    public void setTieneHijos(boolean tieneHijos) {
        this.tieneHijos = tieneHijos;
    }

    public boolean isQuiereHijos() {
        return quiereHijos;
    }

    public void setQuiereHijos(boolean quiereHijos) {
        this.quiereHijos = quiereHijos;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getInteresadoEn() {
        return interesadoEn;
    }

    public void setInteresadoEn(String interesadoEn) {
        this.interesadoEn = interesadoEn;
    }

    
    

}
