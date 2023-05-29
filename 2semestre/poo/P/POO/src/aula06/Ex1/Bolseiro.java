package aula06.Ex1;
import aula07.Ex2.DateYMD;

public class Bolseiro extends Aluno {
    public Professor orientador;
    private double montantemensal;

    public Bolseiro(String name, int cc, DateYMD dataNasc, Professor orientador, double montantemensal) {
        super(name, cc, dataNasc);
        this.orientador = orientador;
        this.montantemensal = montantemensal;
    }    

    
    public Professor getOrientador() {
        return orientador;
    }
    
    public void setOrientador(Professor orientador) {
        if (orientador != null) {
            this.orientador = orientador;    
        }
    }

    public double getBolsa() {
        return montantemensal;
    }
    public void setBolsa(double montantemensal) {
        this.montantemensal = montantemensal;
    }

    public boolean validBolsa(double montantemensal) {
        if (montantemensal < 0) {
            return false;
        }
        return true;
    }
    

    @Override
    public String toString() {
        return "Professor orientador: " + orientador + "; " + "Montante Mensal: " + montantemensal;
    }
}
