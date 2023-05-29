package PrepEP.POO2021;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class Gastronomia implements PontosdeInteresse {
    private int numero;
    private String nome;
    private List<Restaurante> conjrestaurantes = new ArrayList<>();    /*nao sei o que fazer com isto */

    public Gastronomia(int numero, String nome, List<Restaurante> conjrestaurantes) {
        this.numero = numero;
        this.nome = nome;
        this.conjrestaurantes = conjrestaurantes;
    }

    public Gastronomia(int numero, String nome) {
        this.numero = numero;
        this.nome = nome;
    }

    public int getNumero() {
        return numero;
    }
    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }

    public Collection<String> locais() {
        ArrayList<String> restaurantes = new ArrayList<>();
        for (Restaurante restaurante : conjrestaurantes) {
            restaurantes.add(restaurante.toString());
        }
        return restaurantes;
    }

    public void add(Restaurante restaurante) {
        conjrestaurantes.add(restaurante);
    }

    public List<Restaurante> getLista() {
        return conjrestaurantes;
    }

    public int totalRestaurantes() {
        return conjrestaurantes.size();
    }

    public String toString() {
        if (conjrestaurantes == null) {
            return "Número : " + numero + "; Nome: " + nome;
        } else {
            return "Número : " + numero + "; Nome: " + nome + "Conjunto de restaurantes: " + conjrestaurantes;
        }
    }

}
