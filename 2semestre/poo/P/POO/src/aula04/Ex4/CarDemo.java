package aula04.Ex4;
import java.util.Scanner;

class Car {
    public String make;
    public String model;
    public int year;
    public int kms;
    

    public Car(String make, String model, int year, int kms) {
        this.make = make;
        this.model = model;
        this.year = year;
        this.kms = kms;
    }

    public void drive(int distance) {
        if (distance >= 0) {
            kms += distance;    
        }
    }

    public String toString() {
        return make + " " + model + ", " + year + ", kms: " + kms;
    }

    public boolean validateKmsAndYear(int kms, int year) {
        if (kms < 0 || year < 1000) {
            return false;
        }
        return true;
    }
}

public class CarDemo {
    
    static Scanner sc = new Scanner(System.in);

    static int registerCars(Car[] cars) {
        // Pede dados dos carros ao utilizador e acrescenta ao vetor
        // Registo de carros termina quando o utilizador inserir uma linha vazia
        // Devolve número de carros registados
        String dados = "";
        int quantidade = 0;
    
        do {
            System.out.print("Insira dados do carro (marca modelo ano quilómetros): ");
            dados = sc.nextLine();
            if (!dados.equals("")) {
                String[] dadosArray = dados.split(" ");
                String marca = dadosArray[0];
                String modelo = "";
                int ano = 0;
                int quilometros = 0;

                if (dadosArray.length >= 4) {
                    marca = dadosArray[0];
                    quilometros = Integer.parseInt(dadosArray[dadosArray.length - 1]);
                    ano = Integer.parseInt(dadosArray[dadosArray.length - 2]);
                    modelo = dadosArray[1];
    
                    for (int i = 2; i < dadosArray.length - 2; i++) {
                        modelo += " " + dadosArray[i];
                    }
                } 
                else {
                    System.out.println("Dados mal formatados. Tente novamente.");
                    continue;
                }

                Car newCar = new Car(marca, modelo, ano, quilometros);
                if (newCar.validateKmsAndYear(quilometros, ano)) {
                    cars[quantidade] = newCar;
                    quantidade += 1;
                } 
                else {
                    System.out.println("Dados mal formatados. Tente novamente.");
                }
            }
        } while (!dados.equals(""));
        return quantidade;
    }
    
    

    static void registerTrips(Car[] cars, int numCars) {
    // registo de viagens termina quando o utilizador inserir uma linha vazia
        String viagem = "";
        do {
            System.out.print("Registe uma viagem no formato \"carro:distância\": ");
            viagem = sc.nextLine(); 
            if (!viagem.equals("")) {
                String[] viagemArray = viagem.split(":");
                if (viagemArray.length != 2) {
                    System.out.println("Dados mal formatados. Tente novamente.");
                    continue;
                }
                try {
                    int carro = Integer.parseInt(viagemArray[0]);
                    int distancia = Integer.parseInt(viagemArray[1]);
                    if (carro < 0 || carro >= numCars || distancia < 0) {
                        System.out.println("Dados mal formatados. Tente novamente.");
                        continue;
                    }
                    cars[carro].drive(distancia);
                } catch (NumberFormatException e) {
                    System.out.println("Dados mal formatados. Tente novamente.");
                }
            }
        } while (!viagem.equals(""));
    }


    static void listCars(Car[] cars, int numCars) {
        System.out.println("\nCarros registados: ");
        
        for (int i = 0; i < numCars; i++) {
            System.out.println(cars[i].toString());
        }
        // Exemplo de resultado
        // Carros registados: 
        // Toyota Camry, 2010, kms: 234346
        // Renault Megane Sport Tourer, 2015, kms: 32536
        
        System.out.println("\n");
    }

    public static void main(String[] args) {

        Car[] cars = new Car[10];

        int numCars = registerCars(cars);

        if (numCars>0) {
            listCars(cars, numCars);
            registerTrips(cars, numCars);
            listCars(cars, numCars);
        }

        sc.close();

    }

}