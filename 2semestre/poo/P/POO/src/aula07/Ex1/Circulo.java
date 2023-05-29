package aula07.Ex1;
import java.lang.Math;

public class Circulo extends Forma {
    private double raio;

    public Circulo(double raio, String color) {
        super();
        if (validateRaio(raio)) {
            this.raio = raio;
            this.setColor(color);
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

    public double getArea() {
        return Math.PI * raio * raio;
    }

    public double getPerimetro() {
        return 2 * Math.PI * raio;
    }

    public String toString() {
        return "Círculo de raio " + raio + " com área " + getArea() + " e perímetro " + getPerimetro() + " de cor " + getColor();
    }
    
    public static boolean equals(Circulo Circulo1 , Circulo Circulo2) {
        if (Circulo1.raio == Circulo2.raio && Circulo1.getColor().equals(Circulo2.getColor())) {
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
