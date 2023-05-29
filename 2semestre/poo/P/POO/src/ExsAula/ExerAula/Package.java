package ExsAula.ExerAula;

public class Package {
    private static int lastid = 0;
    private int id;
    private double weight;
    private String destination;
    private String sender;

    public Package(double weight, String sender, String destination) {
        this.id = ++lastid;
        this.weight = weight;
        this.destination = destination;
        this.sender = sender;
    }

    public int getId() {
        return id;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public String toString() {
        return "ID da encomenda: " + id + "; Peso do pacote: " + weight + "; Remetente: " + sender + "; Destino: " + destination;
    }
}

