package aula08.Ex2;

import java.util.ArrayList;

public class PratoVegetariano extends Prato implements AlimentoVegetariano {

    private ArrayList<Alimento> ingredientes;

    public PratoVegetariano(String nome) {
        super(nome);
        this.ingredientes = new ArrayList<>();
    }

    @Override
    public void setIngredientes(ArrayList<Alimento> alimentos) {
        this.ingredientes = alimentos;
    }

    public boolean addIngrediente(Alimento alimento) {
        return this.ingredientes.add(alimento);
    }
    
    @Override
    public String toString() {
        return super.toString() + " - Prato Vegetariano";
    }
}
