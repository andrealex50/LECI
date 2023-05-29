package aula09.Ex3;

public class CommercialPlane extends Plane {
    private int numOfCrewMembers;

    public CommercialPlane(String id, String manufacturer, String model, int year, int maxNumOfPassengers, double maxSpeed, int numOfCrewMembers) {
        super(id, manufacturer, model, year, maxNumOfPassengers, numOfCrewMembers);
        this.numOfCrewMembers = numOfCrewMembers;
    }

    public int getNumOfCrewMembers() {
        return numOfCrewMembers;
    }
    public void setNumOfCrewMembers(int numOfCrewMembers) {
        if (numOfCrewMembers > 0) {
            this.numOfCrewMembers = numOfCrewMembers;
        }
    }

    @Override
    public String toString() {
        return "Avião Comercial { ID: " +getId() + "; Fabricante: " + getFabricante() + "; Modelo: " + getModelo() + "; Ano de Produção: " + getAno() + "; Número máximo de passageiros: " + getNumpassageiros() + "; Velocidade máxima: " + getVelmaxima() + "; Número de tripulantes: " + getNumOfCrewMembers() + "}";
    }
    public String getPlaneType() {
        return "Comercial";
    }
}   
