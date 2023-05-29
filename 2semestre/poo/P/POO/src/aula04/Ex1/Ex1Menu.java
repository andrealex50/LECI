package aula04.Ex1;
import java.util.Scanner;

public class Ex1Menu {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double lado11, lado21, lado31, lado12, lado22, lado32, comprimento1, altura1, comprimento2, altura2, raio1, raio2;
        boolean circulo1criado = false;
        boolean circulo2criado = false;
        Circulo Circulo1 = null;
        Circulo Circulo2 = null;
        Triangulo Triangulo1 = null;
        Triangulo Triangulo2 = null;
        boolean triangulo1criado = false;
        boolean triangulo2criado = false;
        Retangulo Retangulo1 = null;
        Retangulo Retangulo2 = null;
        boolean retangulo1criado = false;
        boolean retangulo2criado = false;


 
        int escolha;
        do {
            System.out.println("---------Operações para figuras---------");
            System.out.println("(1) Criar/Mudar Círculo 1");
            System.out.println("(2) Criar/Mudar Círculo 2");
            System.out.println("(3) Comparar Círculos");
            System.out.println("(4) Criar/Mudar Triângulo 1");
            System.out.println("(5) Criar/Mudar Triângulo 2");
            System.out.println("(6) Comparar Triângulos");
            System.out.println("(7) Criar/Mudar Retângulo 1");
            System.out.println("(8) Criar/Mudar Retângulo 2");
            System.out.println("(9) Comparar Retângulos");
            System.out.println("(0) Sair");
            System.out.print(">> ");
            escolha = sc.nextInt();

            switch(escolha) {
                case 1:
                    do {
                        System.out.print("Introduz o raio: ");
                        raio1 = sc.nextDouble();    
                    } while(!Circulo.validateRaio(raio1));
                    Circulo1 = new Circulo(raio1);
                    circulo1criado = true;
                    System.out.println(Circulo1);
                    break;
                    
                case 2:
                    do {
                        System.out.print("Introduz o raio: ");
                        raio2 = sc.nextDouble();    
                    } while (!Circulo.validateRaio(raio2));
                    Circulo2 = new Circulo(raio2);
                    circulo2criado = true;
                    System.out.println(Circulo2);
                    break; 

                case 3:
                    if (!circulo1criado || !circulo2criado) {
                        System.out.println("Cria os dois círculos primeiros!");
                        break;
                    }
                    else {
                        if (Circulo.equals(Circulo1, Circulo2)) {
                            System.out.println("Os dois círculos são Iguais");
                        }
                        else {
                            System.out.println("Os dois círculos são Diferentes");
                        }
                    }                    
                    break;
                
                case 4:
                    do {
                        System.out.print("Introduz o valor do lado 1: ");
                        lado11 = sc.nextDouble();
                        System.out.print("Introduz o valor do lado 2: ");
                        lado21 = sc.nextDouble();
                        System.out.print("Introduz o valor do lado 3: ");
                        lado31 = sc.nextDouble(); 
                    } while (!Triangulo.validateLados(lado11, lado21, lado31));
                    Triangulo1 = new Triangulo(lado11, lado21, lado31); 
                    triangulo1criado = true;
                    System.out.println(Triangulo1);
                    break;

                case 5:
                    do {
                        System.out.print("Introduz o valor do lado 1: ");
                        lado12 = sc.nextDouble();
                        System.out.print("Introduz o valor do lado 2: ");
                        lado22 = sc.nextDouble();
                        System.out.print("Introduz o valor do lado 3: ");
                        lado32 = sc.nextDouble();     
                    } while (!Triangulo.validateLados(lado12, lado22, lado32));                    
                    Triangulo2 = new Triangulo(lado12, lado22, lado32);  
                    triangulo2criado = true;
                    System.out.println(Triangulo2); 
                    break;

                case 6:
                    if (!triangulo1criado || !triangulo2criado) {
                        System.out.println("Cria os dois triângulos primeiros!");
                        break;  
                    }
                    else {
                        if (Triangulo.equals(Triangulo1, Triangulo2)) {
                            System.out.println("Os dois triângulos são Iguais");
                        }
                        else {
                            System.out.println("Os dois triângulos são Diferentes");
                        }
                    }
                    break;

                case 7:
                    do {
                        System.out.print("Introduz o valor do comprimento: ");
                        comprimento1 = sc.nextDouble();
                        System.out.print("Introduz o valor da altura: ");
                        altura1 = sc.nextDouble();    
                    } while (!Retangulo.validateValores(comprimento1, altura1));
                    Retangulo1 = new Retangulo(comprimento1, altura1);
                    retangulo1criado = true;
                    System.out.println(Retangulo1);
                    break;

                case 8:
                    do {
                        System.out.print("Introduz o valor do comprimento: ");
                        comprimento2 = sc.nextDouble();
                        System.out.print("Introduz o valor da altura: ");
                        altura2 = sc.nextDouble();    
                    } while (!Retangulo.validateValores(comprimento2, altura2));
                    Retangulo2 = new Retangulo(comprimento2, altura2);
                    retangulo2criado = true;
                    System.out.println(Retangulo2);
                    break;

                case 9:
                    if (!retangulo1criado || !retangulo2criado) {
                        System.out.println("Cria os dois retângulos primeiros!");
                        break; 
                    }
                    else {
                        if (Retangulo.equals(Retangulo1, Retangulo2)) {
                            System.out.println("Os dois retângulos são Iguais");
                        }
                        else {
                            System.out.println("Os dois retângulos são Diferentes");
                        }
                    }
                    break;
                
                case 0:
                    break; 

            }
            System.out.println();
        } while (escolha != 0);
        
        sc.close();
        
    }
}
