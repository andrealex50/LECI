package aula08.Ex1.Veiculos;

public class Motociclo extends Veiculo {
    private String tipo;

    public Motociclo(String matricula, String marca, String modelo, int potencia, String tipo) {
        super(matricula, marca, modelo, potencia);
        this.tipo = tipo;
    }
    
    public String getTipo() {
        return tipo;
    }
    
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    
}
