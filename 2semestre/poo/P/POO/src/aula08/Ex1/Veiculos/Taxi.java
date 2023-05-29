package aula08.Ex1.Veiculos;

public class Taxi extends Veiculo {
    int numerolicença, numeroquadro, capacidadebag;

    public Taxi(String matricula, String marca, String modelo, int potencia, int numeroquadro, int capacidadebag, int numerolicença) {
        super(matricula, marca, modelo, potencia);
        this.numeroquadro = numeroquadro;
        this.capacidadebag = capacidadebag;
        this.numeroquadro = numeroquadro;
        this.numerolicença = numerolicença;
    }


    public int getNumeroquadro() {
        return numeroquadro;
    }
    public void setNumeroquadro(int numeroquadro) {
        this.numeroquadro = numeroquadro;
    }

    public int getNumerolicença() {
        return numerolicença;
    }
    public void setNumerolicença(int numerolicença) {
        this.numerolicença = numerolicença;
    }

    
    
    
}
