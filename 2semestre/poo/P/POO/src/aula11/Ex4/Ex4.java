package aula11.Ex4;

import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.TreeMap;


public class Ex4 {

    private static Map<String, String> companhias = new TreeMap<>();
    private static ArrayList<Voo> voos = new ArrayList<Voo>();
    private static Map<String, ArrayList<Integer>> mapaatrasos = new TreeMap<>();

    public static void main(String[] args) throws IOException {
        readCompanhias("C:\\Users\\alexa\\disciplinas\\2semestre\\poo\\P\\POO\\src\\aula11\\Ex4\\companhias.txt");
        readVoos("C:\\Users\\alexa\\disciplinas\\2semestre\\poo\\P\\POO\\src\\aula11\\Ex4\\voos.txt");
        
        System.out.println("Hora    Voo      Companhia           Origem                Atraso    Obs");
        for (Voo voo : voos) {
            System.out.print(voo + "\n");
        }
        writeVoos();

        Map<String, Double> averageDelays = new TreeMap<>();
        for (Map.Entry<String, ArrayList<Integer>> entry : mapaatrasos.entrySet()) {
            String companhia = entry.getKey();
            ArrayList<Integer> atrasos = entry.getValue();
            int sum = 0;
            for (int atraso : atrasos) {
                sum += atraso;
            }
            double average = (double) sum / atrasos.size();
            averageDelays.put(companhia, average);
        }

        List<Map.Entry<String, Double>> sortedAverageDelays = new ArrayList<>(averageDelays.entrySet());
        Collections.sort(sortedAverageDelays, Comparator.comparingDouble(Map.Entry::getValue));

        System.out.println("Companhia\tAtraso médio");
        for (Map.Entry<String, Double> entry : sortedAverageDelays) {
            System.out.printf("%s\t%.2f%n", entry.getKey(), entry.getValue());
        }


    }

    public static void readCompanhias(String path) throws IOException {
        Scanner input = new Scanner(new FileReader(path));
        input.nextLine();
        input.useDelimiter("\t");
        while (input.hasNext()) {
            String line = input.nextLine();
            String[] separatedline = line.split("\t");
            companhias.put(separatedline[0], separatedline[1]);
        }
    }

    public static void readVoos(String path) throws IOException {
        Scanner input = new Scanner(new FileReader(path));
        input.nextLine();
        input.useDelimiter("\t");
    
        while (input.hasNext()) {
            String line = input.nextLine();
            String[] separatedline = line.split("\t");
            String companhiasigla = separatedline[1].substring(0, 2);
            String companhia = companhias.get(companhiasigla);
            ArrayList<Integer> atrasos;
    
            if (companhia != null) {
                atrasos = mapaatrasos.get(companhia);
            } else {
                atrasos = new ArrayList<>();
            }
    
            if (atrasos == null) {
                atrasos = new ArrayList<>();
                mapaatrasos.put(companhia, atrasos);
            }
    
            Voo addvoo = null;
    
            if (separatedline.length == 3) {
                addvoo = new Voo(separatedline[0], separatedline[1], companhia, separatedline[2], " ", " ");
            } else if (separatedline.length == 4) {
                String previsto = sumTime(separatedline[0], separatedline[3]);
                addvoo = new Voo(separatedline[0], separatedline[1], companhia, separatedline[2], separatedline[3], "Previsto: " + previsto);
                atrasos.add(Integer.parseInt(separatedline[3].substring(3, 5)));
                if (companhia != null) {
                    mapaatrasos.put(companhia, atrasos);
                }
            }
    
            voos.add(addvoo);
        }
    }
    

    public static void writeVoos() throws IOException {
        FileWriter myWriter = new FileWriter("C:\\Users\\alexa\\disciplinas\\2semestre\\poo\\P\\POO\\src\\aula11\\Ex4\\Infopublico.txt");
        myWriter.write("Hora    Voo      Companhia           Origem                Atraso    Obs \n");
        for (Voo voo : voos) {
            myWriter.write(voo + "\n");
        }
        myWriter.close();
    }

    private static String sumTime(String time1, String time2) {
        String[] parts1 = time1.split(":");
        String[] parts2 = time2.split(":");
        int hours1 = Integer.parseInt(parts1[0]);
        int minutes1 = Integer.parseInt(parts1[1]);
        int hours2 = Integer.parseInt(parts2[0]);
        int minutes2 = Integer.parseInt(parts2[1]);
        
        int sumHours = hours1 + hours2;
        int sumMinutes = minutes1 + minutes2;
        
        if (sumMinutes >= 60) {
            sumHours += 1;
            sumMinutes -= 60;
        }
        
        String sumHoursString = String.format("%02d", sumHours);
        String sumMinutesString = String.format("%02d", sumMinutes);
        
        return sumHoursString + ":" + sumMinutesString;
    }
}
