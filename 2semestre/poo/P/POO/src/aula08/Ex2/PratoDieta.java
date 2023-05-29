package aula08.Ex2;

public class PratoDieta extends Prato {

    private double limiteCalorias;
    private double calorias;

    public PratoDieta(String nome, double limiteCalorias) {
        super(nome);
        this.limiteCalorias = limiteCalorias;
    }

    public double getCalorias() {
        return calorias;
    }

    public double getLimiteCalorias() {
        return limiteCalorias;
    }

    public void setLimiteCalorias(double limiteCalorias) {
        this.limiteCalorias = limiteCalorias;
    }

    
    public boolean addIngrediente(Alimento alimento) {
        for (Alimento a : this.getAlimentos()) {
            this.calorias += a.getCalorias();
        }
        if (this.getLimiteCalorias() <= this.calorias + alimento.getCalorias()) {
            return super.addIngrediente(alimento);
        } else {
            return false;
        }
    }

    @Override
    public String toString() {
        return super.toString() + " - Dieta (" + this.getCalorias() + " Calorias)";
    }
}