package aula09.Ex3;

import java.util.Scanner;

public class PlaneTester {
    public static void main(String[] args) {
        PlaneManager planeManager = new PlaneManager();
        Scanner scanner = new Scanner(System.in);
        int choice;

        do {
            System.out.println("\nPlane Fleet Menu:");
            System.out.println("1. Add a plane to the fleet");
            System.out.println("2. Remove a plane from the fleet");
            System.out.println("3. Search for a plane");
            System.out.println("4. Print summary of all planes in the fleet");
            System.out.println("5. Print list of all commercial planes in the fleet");
            System.out.println("6. Print list of all military planes in the fleet");
            System.out.println("7. Print the fastest plane in the fleet");
            System.out.println("0. Exit");

            System.out.print("Enter your choice: ");
            choice = scanner.nextInt();

            switch (choice) {
                case 1:
                    addPlane(planeManager, scanner);
                    break;
                case 2:
                    removePlane(planeManager, scanner);
                    break;
                case 3:
                    searchPlane(planeManager, scanner);
                    break;
                case 4:
                    printAllPlanes(planeManager);
                    break;
                case 5:
                    printCommercialPlanes(planeManager);
                    break;
                case 6:
                    printMilitaryPlanes(planeManager);
                    break;
                case 7:
                    printFastestPlane(planeManager);
                    break;
                case 0:
                    System.out.println("Exiting program...");
                    break;
                default:
                    System.out.println("Invalid choice. Please try again.");
                    break;
            }
        } while (choice != 0);

        scanner.close();
    }

    private static void addPlane(PlaneManager planeManager, Scanner scanner) {
        System.out.print("Introduza o tipo de Avião: ");
        String tipo = scanner.next();

        System.out.print("Insira o id: ");
        String id = scanner.next();

        System.out.print("Insira o fabricante: ");
        String fabricante = scanner.next();

        System.out.print("Insira o modelo: ");
        String modelo = scanner.next();

        System.out.print("Insira o ano: ");
        int ano = scanner.nextInt();

        System.out.print("Insira o numpassageiros: ");
        int numpassageiros = scanner.nextInt();

        System.out.print("Insira o velmaxima: ");
        double velmaxima = scanner.nextDouble();


        if (tipo.equals("Comercial")) {
            System.out.print("Insira o número de membros da tripulação: ");
            int numOfCrewMembers = scanner.nextInt();
            CommercialPlane planecomercial = new CommercialPlane(id, fabricante, modelo, numpassageiros, ano, velmaxima, numOfCrewMembers);
            planeManager.addPlane(planecomercial);
        }
        else if (tipo.equals("Militar")) {
            System.out.print("Insira o número de munição: ");
            int numMissiles = scanner.nextInt();
            MilitaryPlane planeMilitar = new MilitaryPlane(id, fabricante, modelo, ano, numpassageiros, velmaxima, numMissiles);
            planeManager.addPlane(planeMilitar);
        }
        else {
            System.out.print("Tipo inválido");
        }

    }

    private static void removePlane(PlaneManager planeManager, Scanner scanner) {
        System.out.print("Insira o ID do avião a remover: ");
        String idremover = scanner.next();
        planeManager.removePlane(idremover);
    }

    private static void searchPlane(PlaneManager planeManager, Scanner scanner) {
        System.out.print("Insira o ID do avião a procurar: ");
        String idprocurar = scanner.next();
        planeManager.searchPlane(idprocurar);
    }

    private static void printAllPlanes(PlaneManager planeManager) {
        
    }

    private static void printCommercialPlanes(PlaneManager planeManager) {
        for (Plane plane : planeManager.getCommercialPlanes()) {
            System.out.println(plane);
        }
    }

    private static void printMilitaryPlanes(PlaneManager planeManager) {
        for (Plane plane : planeManager.getMilitaryPlanes()) {
                System.out.println(plane);
        }
    }

    private static void printFastestPlane(PlaneManager planeManager) {
        Plane fastestPlane = planeManager.getFastestPlane();
        System.out.println(fastestPlane);
    }
}
