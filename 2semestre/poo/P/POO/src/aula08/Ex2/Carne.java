package aula08.Ex2;

public class Carne extends Alimento {
    String variedade;
    private VariedadeCarne variedadeCarne;

    public Carne(VariedadeCarne variedadeCarne, double proteinas, double calorias, double peso) {
        super(proteinas, calorias, peso);
        this.variedadeCarne = variedadeCarne;
    }

    public VariedadeCarne getVariedadeCarne() {
        return variedadeCarne;
    }

    public void setVariedadeCarne(VariedadeCarne variedadeCarne) {
        this.variedadeCarne = variedadeCarne;
    }


    public String toString() {
        return "Carne " + this.getVariedadeCarne() + ", Proteinas " + this.getProteinas() + ", calorias " + this.getCalorias() + ", Peso " + this.getPeso();
    }
}
