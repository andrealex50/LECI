package aula08.Ex1.Veiculos;
import aula08.Ex1.Interfaces.KmPercorridosInterface;

public abstract class Veiculo implements KmPercorridosInterface {
    String matricula, marca, modelo, tipo;
    int potencia;
    int ultimoTrajeto = 0;
    int distanciaTotal = 0;

    public Veiculo(String matricula, String marca, String modelo, int potencia) {
        this.matricula = matricula;
        this.marca = marca;
        this.modelo = modelo;
        this.potencia = potencia;
    }

    public String getMatricula() {
        return matricula;
    }

    public String getMarca() {
        return marca;
    }

    public String getModelo() {
        return modelo;
    }

    public int getPotencia() {
        return potencia;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public void setPotencia(int potencia) {
        if (CheckPositiveNumbers(potencia)) {
            this.potencia = potencia;
        }
    }

    public void trajeto(int quilometros) {
        System.out.println("O veículo " + this.getMatricula() + " percorreu " + quilometros + " quilômetros.");
        if (CheckPositiveNumbers(ultimoTrajeto)) {
            this.ultimoTrajeto = quilometros;
        } 
        if (CheckPositiveNumbers(distanciaTotal)) {
            this.distanciaTotal += quilometros;
        }
    }

    public int ultimoTrajeto() {
        return this.ultimoTrajeto;
    }

    public int distanciaTotal() {
        return this.distanciaTotal;
    }

    public boolean CheckPositiveNumbers(int number) {
        return number > 0;
    }

    public String toString() {
        return "Veiculo {" + "matricula=" + matricula + ", marca=" + marca + ", modelo=" + modelo + ", potencia=" + potencia + '}';
    }
}
