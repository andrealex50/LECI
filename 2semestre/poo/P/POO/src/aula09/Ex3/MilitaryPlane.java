package aula09.Ex3;

public class MilitaryPlane extends Plane {
    private int numMissiles;

    public MilitaryPlane(String id, String manufacturer, String model, int year, int maxPassengers, double maxSpeed, int numMissiles) {
        super(id, manufacturer, model, year, maxPassengers, numMissiles);
        this.numMissiles = numMissiles;
    }

    public int getNumMissiles() {
        return numMissiles;
    }
    public void setNumMissiles(int numMissiles) {
        if (numMissiles >= 0) {
            this.numMissiles = numMissiles;
        }
    }

    @Override
    public String toString() {
        return "Avião Militar { ID: " +getId() + "; Fabricante: " + getFabricante() + "; Modelo: " + getModelo() + "; Ano de Produção: " + getAno() + "; Número máximo de passageiros: " + getNumpassageiros() + "; Velocidade máxima: " + getVelmaxima() + "; Número de munições: " + getNumMissiles() + "}";
    }
    public String getPlaneType() {
        return "Militar";
    }
}