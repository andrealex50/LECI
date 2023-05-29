package aula08.Ex2;

public abstract class Alimento {
    private double proteinas, calorias, peso;

    public Alimento (double proteinas, double calorias, double peso) {
        this.proteinas = proteinas;
        this.calorias = calorias;
        this.peso = peso;
    }

    public double getProteinas() {
        return proteinas;
    }
    public void setProteinas(double proteinas) {
        this.proteinas = proteinas;
    }

    public double getCalorias() {
        return calorias;
    }
    public void setCalorias(double calorias) {
        this.calorias = calorias;
    }

    public double getPeso() {
        return peso;
    }
    public void setPeso(double peso) {
        this.peso = peso;
    }

    public String toString() {
        return "Alimento {" + "proteinas=" + proteinas + ", calorias=" + calorias + ", peso=" + peso + '}';
    }
    
}
