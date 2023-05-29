package aula06.Ex1;
import aula07.Ex2.DateYMD;

public class Professor extends Pessoa {
    public String categoria;
    public String departamento;
    public String profname;

    public Professor(String profname, int cc, DateYMD dataNasc, String categoria, String departamento) {
        super(profname, cc, dataNasc);
        if (validCategoria(categoria)) {
            this.profname = profname;
            this.categoria = categoria;
            this.departamento = departamento;    
        }
    }

    public String getCategoria() {
        return categoria;
    }
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getProfname() {
        return profname;
    }
    public void setProfname(String profname) {
        this.profname = profname;
    }

    public String getDepartamento() {
        return departamento;
    }
    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public boolean validCategoria(String categoria) {
        if (categoria == null) {
            return false;
        }
        if (categoria.toLowerCase().equals("auxiliar") || categoria.toLowerCase().equals("catedrático") || categoria.toLowerCase().equals("associado")) {
            return true;
        }
        return false;
    }

    @Override
    public String toString() {
        return "Nome professor: " + profname + "; " + "Categoria: " + categoria + "; " + "Departamento: " + departamento;
    }
}
