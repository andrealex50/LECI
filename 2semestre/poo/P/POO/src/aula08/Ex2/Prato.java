package aula08.Ex2;

import java.util.ArrayList;

public class Prato {
    
    private String nome;
    private ArrayList<Alimento> ingredientes;

    public Prato(String nome) {
        this.nome = nome;
        this.ingredientes = new ArrayList<>();
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public ArrayList<Alimento> getAlimentos() {
        return ingredientes;
    }

    public void setIngredientes(ArrayList<Alimento> alimentos) {
        this.ingredientes = alimentos;
    }

    public boolean addIngrediente(Alimento alimento) {
        return this.ingredientes.add(alimento);
    }
    
    @Override
    public String toString() {
        return "Prato" + " '" + this.getNome() + "', composto por " + this.ingredientes.size() + " Ingredientes";
    }

}