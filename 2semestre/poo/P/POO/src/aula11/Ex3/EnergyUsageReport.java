package aula11.Ex3;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class EnergyUsageReport {

    private Map<Integer, List<Double>> customers = new TreeMap<>();

    public void load(String filename) throws IOException {
        try (BufferedReader reader = new BufferedReader(new FileReader("C:\\Users\\alexa\\disciplinas\\2semestre\\poo\\P\\POO\\src\\aula11\\Ex3\\" + filename))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split("\\|");
                int customerId = Integer.parseInt(parts[0]);
                List<Double> meterReadings = new ArrayList<>();
                for (int i = 1; i < parts.length; i++) {
                    meterReadings.add(Double.parseDouble(parts[i]));
                }
                customers.put(customerId, meterReadings);
            }
        } catch (FileNotFoundException e) {
            System.out.println("File not found: " + filename);
        }
    }

    public void addCustomer(Customer customer) {
        int customerId = customer.getCustomerId();
        List<Double> meterReadings = new ArrayList<>();
        for (Double meterReading : customer.getMeterReadings()) {
            meterReadings.add(meterReading.doubleValue());
        }
        customers.put(customerId, meterReadings);
    }

    public void removeCustomer(int customerId) {
        customers.remove(customerId);
    }

    public Customer getCustomer(int customerId) {
        List<Double> meterReadings = customers.get(customerId);
        return new Customer(customerId, meterReadings);
    }

    public double calculateTotalUsage(int customerId) {
        List<Double> meterReadings = customers.get(customerId);
        double totalUsage = 0.0;
        for (int i = 1; i < meterReadings.size(); i++) {
            double usage = meterReadings.get(i);
            totalUsage += usage;
        }
        return totalUsage;
    }

    public void generateReport(String filename) {
        try (PrintWriter writer = new PrintWriter("C:\\Users\\alexa\\disciplinas\\2semestre\\poo\\P\\POO\\src\\aula11\\Ex3\\energy_report.txt")) {
            for (Map.Entry<Integer, List<Double>> entry : customers.entrySet()) {
                writer.println("Client ID: " + entry.getKey() + ": " + entry.getValue());
            }
        } catch (IOException e) {
            System.out.println("Error writing to file: " + e.getMessage());
        }
    }
    

}

