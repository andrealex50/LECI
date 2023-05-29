package aula10.Ex3;
import java.util.Scanner;
import java.util.Map;
import java.util.HashMap;
import java.util.ArrayList;

public class Ex3 {
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Introduz a frase: ");
        String frase = sc.nextLine();

        Map<String, ArrayList<Integer>> letras = new HashMap<String, ArrayList<Integer>>();
        
        for (int i = 0; i < frase.length(); i++) {
            Character letraatual = frase.charAt(i);
            if (!letras.containsKey(letraatual.toString())) {
                letras.put(letraatual.toString(), new ArrayList<Integer>());
            }
            letras.get(letraatual.toString()).add(i);
        }
        
        for (String letra : letras.keySet()) {
            System.out.println(letra + ": " + letras.get(letra));
        }
        
        sc.close();

    }

}

