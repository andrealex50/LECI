package PrepEP.POO2021;

import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

public class AgenciaTuristica {
    private String nome, endereco;
    private Set<PontosdeInteresse> listapasseios = new HashSet<>(); 
    private Set<Atividade> atividades;

    public AgenciaTuristica(String nome, String endereco) {
        this.nome = nome;
        this.endereco = endereco;
    }

    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }
    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public void add(Gastronomia exp1) {
        listapasseios.add(exp1);
    }
    public void add(PasseioBicicleta passeio) {
        listapasseios.add(passeio);
    }

    public String totalItems() {
        return String.valueOf(listapasseios.size());
    }    

    public Set<Atividade> atividades() {
        return atividades;
    }

    public Set<String> getAllItems() {
        Set<String> lista = new TreeSet<>();
        for (Atividade a : atividades){
            for (String s : a.locais()){
                lista.add(s);
            }
        }
        return lista;
    }

    public String toString() {
        return "Nome: " + nome + "; Endereço: " + endereco + "; Atividades: " + listapasseios;
    }

    
}
