package aula09.Ex3;

public class Plane {
    private String id, fabricante, modelo;
    private int ano, numpassageiros;
    private double velmaxima;

    public Plane(String id, String fabricante, String modelo, int ano, int numpassageiros, double velmaxima) {
        this.id = id;
        this.fabricante = fabricante;
        this.modelo = modelo;
        this.ano = ano;
        this.numpassageiros = numpassageiros;
        this.velmaxima = velmaxima;
    }

    public String getId() {
        return id;
    }
    public void setId(String id) {
        if (containsOnlyDigits(id)) {
            this.id = id;
        }
    }

    public String getFabricante() {
        return fabricante;
    }
    public void setFabricante(String fabricante) {
        this.fabricante = fabricante;
    }

    public String getModelo() {
        return modelo;
    }
    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public int getAno() {
        return ano;
    }
    public void setAno(int ano) {
        if (ano > 0) {
            this.ano = ano;
        }
    }

    public int getNumpassageiros() {
        return numpassageiros;
    }
    public void setNumpassageiros(int numpassageiros) {
        if (numpassageiros > 0) {
            this.numpassageiros = numpassageiros;
        }
    }

    public double getVelmaxima() {
        return velmaxima;
    }
    public void setVelmaxima(double velmaxima) {
        if (velmaxima > 0) {
            this.velmaxima = velmaxima;
        }
    }

    @Override
    public String toString() {
        return "Avião { ID: " + id + "; Fabricante: " + fabricante + "; Modelo: " + modelo + "; Ano de Produção: " + ano + "; Número máximo de passageiros: " + numpassageiros + "; Velocidade máxima: " + velmaxima + "}";
    }

    private static boolean containsOnlyDigits(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }
    
}
