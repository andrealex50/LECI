package aula04.Ex3;
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
        kms += distance;    
    }

    public String toString() {
        return make + " " + model + ", " + year + ", kms: " + kms;
    }
}

public class SimpleCarDemo {

    static Scanner sc = new Scanner(System.in);

    static void listCars(Car[] cars) {
        
        for (Car car : cars) {
            System.out.println(car.toString());
        }
        
        // Exemplo de resultado
        // Carros registados: 
        // Renault Megane Sport Tourer, 2015, kms: 35356
        // Toyota Camry, 2010, kms: 32456
        // Mercedes Vito, 2008, kms: 273891
    }

    public static void main(String[] args) {
        
        Car[] cars = new Car[3];
        cars[0] = new Car("Renault", "Megane Sport Tourer", 2015, 35356); 
        cars[1] = new Car("Toyota", "Camry", 2010, 32456); 
        cars[2] = new Car("Mercedes", "Vito", 2008, 273891); 

        listCars(cars);
        System.out.println();

        // Adicionar 10 viagens geradas aleatoriamente
        for (int i=0; i<10; i++) {
            int j = (int)Math.round(Math.random()*2); // escolhe um dos 3 carros
            int kms = (int)Math.round(Math.random()*1000); // viagem até 1000 kms
            System.out.printf("Carro %d viajou %d quilómetros.\n", j, kms);
            
            cars[j].drive(kms);
        }

        System.out.println();
        listCars(cars);

        sc.close();

    }
}