package aula06.Ex2;

import java.util.Scanner;

public class Ex2Menu {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int escolha, phonenumber;
        String name, email, pesquisa, alterar;
        Contactos[] ArrayContactos = new Contactos[100];
        ArrayContactos[0] = null;

        do {
            System.out.print("1. Inserir contacto\n2. Alterar contacto\n3. Apagar contacto\n4. Procurar contacto\n5. Listar contactos\n0. Sair\n>> ");
            escolha = sc.nextInt();
            switch(escolha) {
                case 1:
                    do {
                        System.out.print("Nome?: ");
                        name = sc.next();
                        System.out.print("Número de telefone?: ");
                        phonenumber = sc.nextInt();
                        System.out.print("Email?: ");
                        email = sc.next();
                    } while (!Contactos.validPhonenumber(phonenumber) || !Contactos.validEmail(email));                 
                    Contactos c1 = new Contactos(name, phonenumber, email);
                    ArrayContactos[c1.getId()] = c1;
                    break;


                case 2:
                    System.out.print("Escolha o contacto a alterar (Nome ou Número): ");
                    alterar = sc.next();
                    int contactoachado = -1; 
                    int contactosencontrados = 0;
                    if (isNumeric(alterar)) {
                        int numalterar = Integer.parseInt(alterar);
                        for (int i = 0; i < ArrayContactos.length; i++) {
                            if (ArrayContactos[i] != null && ((Contactos) ArrayContactos[i]).getPhonenumber() == numalterar) {
                                System.out.println("Contacto encontrado:");
                                System.out.println(ArrayContactos[i].toString());
                                contactosencontrados++;
                                contactoachado = i;
                            }
                        }
                    } else {
                        for (int i = 0; i < ArrayContactos.length; i++) {
                            if (ArrayContactos[i] != null && ((Contactos) ArrayContactos[i]).getName().equalsIgnoreCase(alterar)) {
                                System.out.println("Contacto encontrado:");
                                System.out.println(ArrayContactos[i].toString());
                                contactosencontrados++;
                                contactoachado = i;
                            }
                        }
                    }

                    if (contactosencontrados > 1) {
                        do {
                            System.out.print("Encontrados mais que um contacto! Introduza o ID do contacto: ");
                            contactoachado = sc.nextInt();
                        } while (contactoachado < 0 || contactoachado >= ArrayContactos.length || ArrayContactos[contactoachado] == null);
                    } else if (contactosencontrados == 0) {
                        System.out.println("Contacto não encontrado.");
                        break;
                    }

                    do {
                        System.out.print("Nome?: ");
                        name = sc.next();
                        System.out.print("Número de telefone?: ");
                        phonenumber = sc.nextInt();
                        System.out.print("Email?: ");
                        email = sc.next();
                    } while (!Contactos.validPhonenumber(phonenumber));
                    ArrayContactos[contactoachado].setName(name);
                    ArrayContactos[contactoachado].setPhonenumber(phonenumber);
                    ArrayContactos[contactoachado].setEmail(email);
                    System.out.println("Contacto alterado com sucesso.");
                    break;


                case 3:
                    System.out.print("Escolhe o contacto a apagar (Nome ou Número): ");
                    pesquisa = sc.next();
                    int apagar = -1; 
                    for (int i = 0; i < ArrayContactos.length; i++) {
                        if (ArrayContactos[i] != null) { 
                            if (pesquisa.equals(String.valueOf(ArrayContactos[i].getPhonenumber())) || pesquisa.equalsIgnoreCase(ArrayContactos[i].getName())) {
                                if (apagar == -1) {
                                    apagar = i; 
                                    System.out.println("Contacto encontrado:");
                                    System.out.println(ArrayContactos[i].toString());
                                } else {
                                    System.out.println(ArrayContactos[apagar].toString());
                                    System.out.print("Encontrados mais que um contacto! Introduza o ID do contacto: ");
                                    int id = sc.nextInt();
                                    if (id == apagar || id == i) {
                                        apagar = id;
                                        System.out.println("Contacto escolhido:");
                                        System.out.println(ArrayContactos[apagar].toString());
                                    } else {
                                        System.out.println("ID inválido.");
                                    }
                                }
                            }
                        }
                    }
                    if (apagar == -1) {
                        System.out.println("Contacto não encontrado.");
                    } else {
                        ArrayContactos[apagar] = null; 
                        System.out.println("Contacto apagado.");
                    }
                    break;

                
                case 4:
                    System.out.print("Pesquise pelo contacto (Nome ou Número): ");
                    pesquisa = sc.next();
                    int contencontrados = -1;
                    for (int i = 0; i < ArrayContactos.length; i++) {
                        if (ArrayContactos[i] != null) { 
                            if (pesquisa.equals(String.valueOf(ArrayContactos[i].getPhonenumber())) || pesquisa.equalsIgnoreCase(ArrayContactos[i].getName())) {
                                if (contencontrados == -1) {
                                    contencontrados = i;
                                } else {
                                    System.out.println(ArrayContactos[contencontrados].toString());
                                    System.out.println(ArrayContactos[i].toString());
                                    System.out.print("Encontrados mais que um contacto! Introduza o ID do contacto: ");
                                    int id = sc.nextInt();
                                    if (id == contencontrados || id == i) {
                                        contencontrados = id;
                                        System.out.println("Contacto escolhido:");
                                        System.out.println(ArrayContactos[contencontrados].toString());
                                    } else {
                                        System.out.println("ID inválido.");
                                    }
                                }
                            }
                        }
                    }
                    break;
            
                case 5:
                    for (int i = 0; i < ArrayContactos.length; i++) {
                        if (ArrayContactos[i] != null) {
                            System.out.println((i) + "- " + ArrayContactos[i].toString());
                        }
                    }
                    break;
                case 0:
                    System.exit(0);
                default:
                    System.out.println("Opção inválida");
                     
            }
        } while (escolha != 0);
        sc.close();

    }
    public static boolean isNumeric(String str){ 
        try {  
          Double.parseDouble(str);  
          return true;
        } catch(NumberFormatException e){  
          return false;  
        }  
    }

}
