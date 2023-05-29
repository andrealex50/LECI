package aula04.Ex1;
import java.lang.Math;

public class Circulo {
    private double raio;

    public Circulo(double raio) {
        if (validateRaio(raio)) {
            this.raio = raio;
        }
    }

    public double getRaio() {
        return raio;
    }

    public void setRaio(double raio) {
        if (validateRaio(raio)) {
            this.raio = raio;
        }
    }

    public double circuloArea() {
        return Math.PI * raio * raio;
    }

    public double circuloPerimetro() {
        return 2 * Math.PI * raio;
    }

    public String toString() {
        return "Círculo de raio " + raio + " com área " + circuloArea() + " e perímetro " + circuloPerimetro();
    }
    
    public static boolean equals(Circulo Circulo1 , Circulo Circulo2) {
        if (Circulo1.raio == Circulo2.raio) {
            return true;
        }
        return false;
    }

    public static boolean validateRaio(double raio) {
        if (raio <= 0) {
            return false;    
        }
        return true;
    }
}
