package aula11.Ex2;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class Gradebook implements IGradeCalculator {
    
    private Map<String, ArrayList<Double>> mapalunos = new TreeMap<>();

    public void load(String filename) throws IOException {
        BufferedReader reader = new BufferedReader(new FileReader("C:\\Users\\alexa\\disciplinas\\2semestre\\poo\\P\\POO\\src\\aula11\\Ex2\\" + filename));
        String line;
    
        while ((line = reader.readLine()) != null) {
            String[] parts = line.split("\\|");
            String name = parts[0];
            ArrayList<Double> grades = new ArrayList<>();
            for (int i = 1; i < parts.length; i++) {
                grades.add(Double.parseDouble(parts[i]));
            }
            mapalunos.put(name, grades);
        }
        reader.close();
    }
    
    public void removeStudent(String studentname) {
        mapalunos.remove(studentname);
    }
    
    public void addStudent(Student student) {
        String name = student.getName();
        ArrayList<Double> grades = new ArrayList<>();
        for (Double grade : student.getGrades()) {
            grades.add(grade.doubleValue());
        }
        mapalunos.put(name, grades);
    }
         
    
    public Student getStudent(String studentName) {
        ArrayList<Double> grades = mapalunos.get(studentName);
        return new Student(studentName, grades);
    }
    

    public double calculateAverageGrade(String studentname) {
        double soma = 0;
        for (double nota : mapalunos.get(studentname)) {
            soma += nota;
        }
        double mediaaluno = soma/(mapalunos.get(studentname).size());
        return mediaaluno;
    }

    public void printAllStudents() {
        for (Map.Entry<String, ArrayList<Double>> entry : mapalunos.entrySet()) {
            String nome = entry.getKey();
            ArrayList<Double> notas = entry.getValue();
            System.out.println(nome + ": " + notas);
        }
    }

    @Override
    public double calculate(List<Double> grades) {
        double soma = 0.0;
        for (double nota : grades) {
            soma += nota;
        }
    
        double average = soma / grades.size();
        return average;
    }
}
