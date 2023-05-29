package aula08.Ex1.Veiculos;

public class PesadoPassageiros extends Veiculo {
    private int passageiromaxima, peso, numeroquadro;

    public PesadoPassageiros(String matricula, String marca, String modelo, int potencia, int numeroquadro, int peso, int passageiromaxima) {
        super(matricula, marca, modelo, potencia);
        this.numeroquadro = numeroquadro;
        this.passageiromaxima = passageiromaxima;
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

    public int getPassageiromaxima() {
        return passageiromaxima;
    }
    public void setPassageiromaxima(int passageiromaxima) {
        if (CheckPositiveNumbers(potencia)) {
            this.passageiromaxima = passageiromaxima;
        }
    }

    public int getPeso() {
        return peso;
    }
    public void setPeso(int peso) {
        this.peso = peso;
    }

    
    

}

