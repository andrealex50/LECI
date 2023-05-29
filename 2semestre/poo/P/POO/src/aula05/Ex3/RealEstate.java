package aula05.Ex3;

import aula05.Ex1.DateYMD;

public class RealEstate {
    private Property[] properties;
    private int currentId;

    public RealEstate() {
        this.properties = new Property[10];
        this.currentId = 1000;
    }

    public void newProperty(String address, int rooms, int price) {
        Property newProperty = new Property(currentId++, address, rooms, price);
        int i = 0;
        while (i < this.properties.length) {
            if (this.properties[i] == null) {
                this.properties[i] = newProperty;
                break;
            }
            i++;
        }
        if (i == this.properties.length) {
            System.out.println("Não é possível adicionar mais propriedades.");
        }
    }

    public void sell(int id) {
        for (int i = 0; i < this.properties.length; i++) {
            if (this.properties[i] != null && this.properties[i].getId() == id) {
                if (!this.properties[i].isAvailable()) {
                    System.out.printf("Imóvel %d não está disponível.\n", id);
                    return;
                } else {
                    this.properties[i].setAvailable(false);
                    System.out.printf("Imóvel %d vendido.\n", id);
                    return;
                }
            }
        }
        System.out.printf("Imóvel %d não existe.\n", id);
    }

    public void setAuction(int id, DateYMD date, int duration) {
        for (int i = 0; i < this.properties.length; i++) {
            if (this.properties[i] != null && this.properties[i].getId() == id) {
                if (!this.properties[i].isAvailable()) {
                    System.out.printf("Imóvel %d não está disponível.\n", id);
                    return;
                } else {
                    DateYMD end = new DateYMD(date.getDay(), date.getMonth(), date.getYear());
                    end.addDays(duration);
                    this.properties[i].setAuction(date, end);
                    return;
                }
            }
        }
        System.out.printf("Imóvel %d não existe.\n", id);
    }

    public String toString() {
        StringBuilder result = new StringBuilder().append("Propriedades:\n");
        for (int i = 0; i < this.properties.length; i++) {
            if (this.properties[i] != null) {
                result.append(this.properties[i]).append("\n");
            }
        }
        return result.toString();
    }
}
