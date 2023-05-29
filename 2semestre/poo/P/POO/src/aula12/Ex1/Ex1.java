package aula12.Ex1;

import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;


public class Ex1 {

    private static ArrayList<String> wordstotal = new ArrayList<String>();
    private static Set<String> wordsDifferent = new HashSet<String>();
    public static void main(String[] args) throws IOException {

        readFile("C:\\Users\\alexa\\disciplinas\\2semestre\\poo\\P\\POO\\src\\aula12\\Ex1\\textfile.txt");
        
        System.out.println("Número Total de Palavras: " + wordstotal.size());
        System.out.println("Número de Diferentes Palavras: " + wordsDifferent.size());
        System.out.println(wordsDifferent);
        System.out.println(wordstotal);
        
    }


    public static void readFile(String path) throws IOException {
        Scanner input = new Scanner(new FileReader(path));

        while (input.hasNext()) {
            String word = input.next();
            wordstotal.add(word.toLowerCase());
            wordsDifferent.add(word.toLowerCase());
        }
    }
}
