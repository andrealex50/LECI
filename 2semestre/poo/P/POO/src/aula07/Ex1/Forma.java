package aula07.Ex1;

public abstract class Forma {
    private String color;

    public abstract double getArea();
    public abstract double getPerimetro();

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

}
