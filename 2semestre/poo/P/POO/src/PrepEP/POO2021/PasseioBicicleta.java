package PrepEP.POO2021;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

public class PasseioBicicleta implements PontosdeInteresse {
    private int numero;
    private String nome;
    private String[] conjpasseios;
    private Set<String> listapasseios = new HashSet<>(); 

    public PasseioBicicleta(int numero, String nome, String[] conjpasseios) {
        this.numero = numero;
        this.nome = nome;
        this.conjpasseios = conjpasseios;
    }
    public PasseioBicicleta(int numero, String nome) {
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
        ArrayList<String> passeios = new ArrayList<>();
        if (conjpasseios != null) {
            for (String passeio : conjpasseios) {
                passeios.add(passeio);
            }
        } else {
            for (String passe : listapasseios) {
                passeios.add(passe);
            }
        }
        return passeios;
    }
    public void addLocal(String local) {
        listapasseios.add(local);
    }

    public String toString() {
        if (conjpasseios == null) {
            return "Número: " + numero + "; Nome: " + nome;
        } else {
            return "Número: " + numero + "; Nome: " + nome + "; Conjunto de passeio: " + conjpasseios;
        }
    }

}
