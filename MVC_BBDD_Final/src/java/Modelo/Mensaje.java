package Modelo;

/**
 *
 * @author jonathan
 */
public class Mensaje {

    private int id;
    private String asunto;
    private String cuerpo;
    private String emisor;
    private String receptor;
    private String fecha;
    private boolean leido;
    private boolean ficheroAdjunto;

    public Mensaje() {
    }

    //mirar este constructor
    public Mensaje(String asunto, String cuerpo, String emisor, String receptor, String fecha) {
        this.asunto = asunto;
        this.cuerpo = cuerpo;
        this.emisor = emisor;
        this.receptor = receptor;
        this.fecha = fecha;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAsunto() {
        return asunto;
    }

    public void setAsunto(String asunto) {
        this.asunto = asunto;
    }

    public String getCuerpo() {
        return cuerpo;
    }

    public void setCuerpo(String cuerpo) {
        this.cuerpo = cuerpo;
    }

    public String getEmisor() {
        return emisor;
    }

    public void setEmisor(String emisor) {
        this.emisor = emisor;
    }

    public String getReceptor() {
        return receptor;
    }

    public void setReceptor(String receptor) {
        this.receptor = receptor;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public boolean isLeido() {
        return leido;
    }

    public void setLeido(boolean leido) {
        this.leido = leido;
    }

    public boolean isFicheroAdjunto() {
        return ficheroAdjunto;
    }

    public void setFicheroAdjunto(boolean ficheroAdjunto) {
        this.ficheroAdjunto = ficheroAdjunto;
    }
    
    
    
    
}
