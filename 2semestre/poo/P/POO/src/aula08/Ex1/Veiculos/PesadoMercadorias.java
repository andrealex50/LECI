package aula08.Ex1.Veiculos;

public class PesadoMercadorias extends Veiculo {
    private int cargamaxima, peso, numeroquadro;

    public PesadoMercadorias(String matricula, String marca, String modelo, int potencia, int numeroquadro, int peso, int cargamaxima) {
        super(matricula, marca, modelo, potencia);
        this.numeroquadro = numeroquadro;
        this.cargamaxima = cargamaxima;
        this.peso = peso;
    }

    public int getNumeroquadro() {
        return numeroquadro;
    }
    public void setNumeroquadro(int numeroquadro) {
        if (CheckPositiveNumbers(potencia)) {
            this.numeroquadro = numeroquadro;
        }
    }

    public int getCargamaxima() {
        return cargamaxima;
    }
    public void setCargamaxima(int cargamaxima) {
        if (CheckPositiveNumbers(cargamaxima)) {
            this.cargamaxima = cargamaxima;
        }
    }

    public int getPeso() {
        return peso;
    }
    public void setPeso(int peso) {
        if (CheckPositiveNumbers(peso)) {
            this.peso = peso;
        }
    }

    
}
