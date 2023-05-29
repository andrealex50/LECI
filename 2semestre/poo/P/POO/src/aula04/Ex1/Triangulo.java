package aula04.Ex1;

public class Triangulo {
    private double lado1, lado2, lado3;

    public Triangulo( double lado1, double lado2, double lado3) {
        if (validateLados(lado1, lado2, lado3)) {
            this.lado1 = lado1;
            this.lado2 = lado2;
            this.lado3 = lado3;            
        }
    }

    public double getlado1() {
        return lado1;
    }
    public void setlado1(double lado1) {
        if (validateLados(lado1, lado2, lado3)) {
            this.lado1 = lado1;
        }
    }

    public double getlado2() {
        return lado2;
    }
    public void setlado2(double lado2) {
        if (validateLados(lado1, lado2, lado3)) {
        this.lado2 = lado2;
        }
    }

    public double getlado3() {
        return lado3;
    }
    public void setlado3(double lado3) {
        if (validateLados(lado1, lado2, lado3)) {
        this.lado3 = lado3;
        }
    }

    public void setLados(double lado1, double lado2, double lado3) {
        if (validateLados(lado1,lado2,lado3)) {
			this.lado1 = lado1;
			this.lado2 = lado2;
			this.lado3 = lado3;
		}
    }
    
    public double trianguloPerimetro() {
        return lado1 + lado2 + lado3;
    }

    public double trianguloArea() {
        double semiperimetro = (lado1 + lado2 + lado3) / 2;
        return Math.sqrt(semiperimetro*(semiperimetro-lado1)*(semiperimetro-lado2)*(semiperimetro-lado3));
    }

    
    public String toString() {
        return "Triângulo de lados " + lado1 + ", " + lado2 + ", " + lado3 + " com área " + trianguloArea() + " e perímetro " + trianguloPerimetro();
    }

    public static boolean equals(Triangulo Triangulo1, Triangulo Triangulo2) {
        if (Triangulo1.lado1 == Triangulo2.lado1 && Triangulo1.lado2 == Triangulo2.lado2 && Triangulo1.lado3 == Triangulo2.lado3) {
            return true;
        }
        return false;
    }

    public static boolean validateLados(double lado1, double lado2, double lado3) {
        if (lado1 <= 0 || lado2 <= 0 || lado3 <= 0) {
            return false;
        }
        if (lado1 + lado2 <= lado3 || lado2 + lado3 <= lado1 || lado1 + lado3 <= lado2) {
            return false;
        }
        return true;
    }
}
