package aula10.Ex4;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;


public class Ex4 {
    public static void main(String[] args) throws IOException{
        Scanner input = new Scanner(new FileReader("C:\\Users\\alexa\\disciplinas\\2semestre\\poo\\P\\POO\\src\\aula10\\Ex4\\words.txt"));
        ArrayList<String> morethanTwo = new ArrayList<>();
        ArrayList<String> endswithS = new ArrayList<>();
        ArrayList<String> list = new ArrayList<>();
        while (input.hasNext()) {
            String word = input.next();
            System.out.println(word);
            if (word.length() > 2) {
                morethanTwo.add(word);
            }
            if (word.charAt(word.length()-1) == 's') {
                endswithS.add(word);
            }
            if (isAlpha(word)) {
                list.add(word);
            }
        }
        System.out.println("\nMais de 2 caracteres: ");
        System.out.print(morethanTwo);
        System.out.println();
        System.out.println("\nAcaba com S: ");
        System.out.print(endswithS);
        System.out.println();
        System.out.println("\nSem palavras com caracteres não alfabéticos: ");
        System.out.print(list);
    }

    public static boolean isAlpha(String word) {
		return word.matches("[a-zA-Z]+");
	}


}

