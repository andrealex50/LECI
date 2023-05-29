package aula12.Ex3;

import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.Scanner;
import java.util.TreeMap;

public class Ex3 {

    private static ArrayList<Movie> movies = new ArrayList<Movie>();
    
    public static void main(String[] args) throws IOException{
        Scanner sc = new Scanner(System.in);

        readFile("C:\\Users\\alexa\\disciplinas\\2semestre\\poo\\P\\POO\\src\\aula12\\Ex3\\movies.txt");
        
        System.out.println("Ordenado pelo nome do filme: ");
        printMovies(movies);

        System.out.println("Ordem decrescente de score:");        
        ArrayList<Movie> moviesScore = new ArrayList<>(movies);
        moviesScore.sort(Comparator.comparing(Movie::getScore));
        Collections.reverse(moviesScore);
        printMovies(moviesScore);

        System.out.println("Ordem crescente de running time");
        ArrayList<Movie> moviesrunningtime = new ArrayList<>(movies);
        moviesrunningtime.sort(Comparator.comparing(Movie::getRunningTime));
        printMovies(moviesrunningtime);
        
        System.out.println("Géneros existentes");
        Map<String, Integer> genres = new TreeMap<String, Integer>();
        for (Movie movie : movies) {
            if(!genres.containsKey(movie.getGenre())) {
                genres.put(movie.getGenre(), 1);
            } else {
                genres.put(movie.getGenre(), genres.get(movie.getGenre()) + 1);
            }
        }
        System.out.println(genres);
        System.out.println();

        System.out.print("Gênero de filme a adicionar à sua seleção?: ");
        String generoindicado = sc.nextLine();

        writeMySelection(movies, generoindicado.toLowerCase());

        sc.close();
    }

    public static void readFile(String path) throws IOException {
        Scanner input = new Scanner(new FileReader(path));
        input.nextLine();
        input.useDelimiter("\t");

        while (input.hasNext()) {
            String line = input.nextLine();
            String[] separatedline = line.split("\t");
            Movie movieToAdd = new Movie(separatedline[0], Double.valueOf(separatedline[1]), separatedline[2], separatedline[3], Double.valueOf(separatedline[4]));
            movies.add(movieToAdd);
        }

        movies.sort(Comparator.comparing(Movie::getName));
    }

    public static void printMovies(ArrayList<Movie> movies) {
        for (Movie movie : movies) {
            System.out.println(movie);
        }
        System.out.println();
    }

    public static void writeMySelection(ArrayList<Movie> movies, String generoindicado) throws IOException {
        FileWriter myWriter = new FileWriter("C:\\Users\\alexa\\disciplinas\\2semestre\\poo\\P\\POO\\src\\aula12\\Ex3\\myselection.txt");
        for (Movie movie : movies) {
            if ((movie.getScore() > 60) && movie.getGenre().equals(generoindicado)) {
                myWriter.write(movie.toString() + "\n");
            }
        }
        myWriter.close();
    }
}
