package aula11.Ex1;

import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Map;
import java.util.TreeMap;

public class Ex1 {

    public static void main(String[] args) throws IOException {

        ArrayList<String> words = readFile("C:\\Users\\alexa\\disciplinas\\2semestre\\poo\\P\\POO\\src\\aula11\\Ex1\\major.txt");
        Map<String, Map<String, Integer>> map = new TreeMap<>();

		for (int i = 0; i+1 < words.size(); i++) {
			String currentWord = words.get(i);
			String nextWord = words.get(i+1);

			if (!map.containsKey(currentWord)) {
				Map<String, Integer> mapNextWord = new TreeMap<>();
				mapNextWord.put(nextWord, 1);
				map.put(currentWord, mapNextWord);
			}
			else {
				Map<String, Integer> mapNextWord = map.get(currentWord);
				if (mapNextWord.containsKey(nextWord)) {
					mapNextWord.put(nextWord, mapNextWord.get(nextWord) + 1);
				}
				else {
					mapNextWord.put(nextWord, 1);
				}
			}
		}

		for (Map.Entry<String, Map<String, Integer>> entry : map.entrySet()) {
			System.out.println(entry.getKey() + "=" + entry.getValue() );
		}
	}


    public static ArrayList<String> readFile(String path) throws IOException {
		Scanner input = new Scanner(new FileReader(path));
		input.useDelimiter("[\\t\\n\\r.,:'‘’;?!-*{}=+&/()\\[\\]”“\"\\' ]+");

		ArrayList<String> words = new ArrayList<String>();

		while (input.hasNext()) {
			String word = input.next();
			if (word.length() > 2) {
                words.add(word.toLowerCase());
            }
		}
		return words;
	}
}
