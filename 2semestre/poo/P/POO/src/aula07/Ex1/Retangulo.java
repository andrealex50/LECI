package aula07.Ex1;

public class Retangulo extends Forma{
    private double comprimento, altura;

    public Retangulo(double comprimento, double altura, String color) {
        if (validateValores(comprimento, altura)) {
        this.comprimento = comprimento;
        this.altura = altura;
        this.setColor(color);
        }
    }

    public double getComprimento() {
        return comprimento;
    }
    public void setComprimento(double comprimento) {
        if (validateValores(comprimento, altura)) {
        this.comprimento = comprimento;
        }
    }

    public double getAltura() {
        return altura;
    }
    public void setAltura(double altura) {
        if (validateValores(comprimento, altura)) {
            this.altura = altura;    
        }
    }

    public void setComprimentoseLargura(double comprimento, double altura) {
        this.comprimento = comprimento;
        this.altura = altura;
    }
    public double getArea() {
        return comprimento * altura;
    }

    public double getPerimetro() {
        return 2*comprimento + 2*altura;
    }       

    public String toString() {
        return "Retângulo de comprimento " + comprimento + " e altura " + altura + " com área " + getArea() + " e perímetro " + getPerimetro() + " de cor " + getColor();
    }

    public static boolean equals(Retangulo Retangulo1, Retangulo Retangulo2) {
        if (Retangulo1.comprimento == Retangulo2.comprimento && Retangulo1.altura == Retangulo2.altura && Retangulo1.getColor().equals(Retangulo2.getColor())) {
            return true;
        }
        return false;
    }

    public static boolean validateValores(double comprimento, double altura) {
        if (comprimento <= 0 || altura <= 0) {
            return false;
        }
        return true;
    }
}
