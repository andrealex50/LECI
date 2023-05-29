package aula12.Ex2;

import java.io.FileReader;
import java.io.IOException;
import java.util.Map;
import java.util.Scanner;
import java.util.TreeMap;

public class Ex2 {

    private static Map<Character, Map<String, Integer>> words = new TreeMap<>();
    private static Map<String, Integer> allWordsCounted = new TreeMap<>();

    public static void main(String[] args) throws IOException {
        load("C:\\Users\\alexa\\disciplinas\\2semestre\\poo\\P\\POO\\src\\aula12\\Ex2\\A_cidade_e_as_serras.txt");

        for (Map.Entry<String, Integer> wordCounted : allWordsCounted.entrySet()) {
            String word = wordCounted.getKey();
            int counter = wordCounted.getValue();
            char firstchar = word.charAt(0);

            if (!words.containsKey(firstchar)) {
                words.put(firstchar, new TreeMap<>());
            }

            Map<String, Integer> wordMap = words.get(firstchar);
            wordMap.put(word, counter);
        }

        for (Map.Entry<Character, Map<String, Integer>> character : words.entrySet()) {
            System.out.println(character + ": ");
        }
    }

    public static void load(String path) throws IOException {
        Scanner input = new Scanner(new FileReader(path));
    
        while (input.hasNext()) {
            String wordInput = input.next();
            String wordLowerCase = wordInput.toLowerCase();
            String[] words = wordLowerCase.split("[\\s.,:'‘’;?!\\-*{}=+&/()\\[\\]”“\"]+");
            
            for (String word : words) {
                if (word.length() > 2) {
                    if (!allWordsCounted.containsKey(word)) {
                        allWordsCounted.put(word, 1);
                    } else {
                        allWordsCounted.put(word, allWordsCounted.get(word) + 1);
                    }
                }
            }
        }
    }    
    
    public static void printWords() {
        for (Map.Entry<Character, Map<String, Integer>> entry : words.entrySet()) {
            Map<String, Integer> wordMap = entry.getValue();
    
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, Integer> wordCounted : wordMap.entrySet()) {
                String word = wordCounted.getKey();
                Integer counter = wordCounted.getValue();
                sb.append(word).append(", ").append(counter).append("; ");
            }
    
            System.out.println(entry.getKey() + ": " + sb.toString());
        }
    }
    
}


