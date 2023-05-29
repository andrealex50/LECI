package aula08.Ex2;

public class Peixe extends Alimento {
    String tipo;
    private TipoPeixe tipoPeixe;

    public Peixe(TipoPeixe tipoPeixe, double proteinas, double calorias, double peso) {
        super(proteinas, calorias, peso);
        this.tipoPeixe = tipoPeixe;
    }

    public TipoPeixe getTipoPeixe() {
        return tipoPeixe;
    }

    public void setTipoPeixe(TipoPeixe tipoPeixe) {
        this.tipoPeixe = tipoPeixe;
    }

    public String toString() {
        return "Peixe " + this.getTipoPeixe() + ", Proteinas " + this.getProteinas() + ", calorias " + this.getCalorias() + ", Peso " + this.getPeso();
    }
}
