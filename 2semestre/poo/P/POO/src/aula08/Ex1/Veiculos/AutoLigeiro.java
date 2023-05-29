package aula08.Ex1.Veiculos;

public class AutoLigeiro extends Veiculo {
    private int numeroquadro, capacidadebag;

    public AutoLigeiro(String matricula, String marca, String modelo, int potencia, int numeroquadro, int capacidadebag) {
        super(matricula, marca, modelo, potencia);
        this.numeroquadro = numeroquadro;
        this.capacidadebag = capacidadebag;
    }

    public int getNumeroquadro() {
        return numeroquadro;
    }
    public void setNumeroquadro(int numeroquadro) {
        if (CheckPositiveNumbers(numeroquadro)) {
            this.numeroquadro = numeroquadro;
        }
    }

    public int getCapacidadebag() {
        return capacidadebag;
    }
    public void setCapacidadedebag(int capacidadebag) {
        if (CheckPositiveNumbers(capacidadebag)) {
            this.capacidadebag = capacidadebag;
        }
    }


    

}
