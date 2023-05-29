package ExsAula.ExerAula;

import java.io.FileReader;
import java.io.IOException;
import java.util.Map;
import java.util.Scanner;
import java.util.TreeMap;

public class PackageManager {
    private static Map<Integer, Package> mappack = new TreeMap<>();
    
    public static void readFile(String path) throws IOException {
        Scanner input = new Scanner(new FileReader(path));
        input.nextLine();
        input.useDelimiter(";");

        while (input.hasNext()) {
            String line = input.nextLine();
            String[] separatedline = line.split(";");
            Package packagetoadd = new Package(Double.valueOf(separatedline[1]), separatedline[2], separatedline[3]);
            mappack.put(Integer.valueOf(separatedline[0]) ,packagetoadd);
        }
    }

    public void addPackage(Package pkg) {
        mappack.put(pkg.getId(), pkg);
    }

    public void removePackage(int id) {
        if (mappack.containsKey(id)) {
            mappack.remove(id);
        } else {
            System.out.println("ID does not exist.");
        }
    }

    public Package searchPackage(int id) {
        if (mappack.containsKey(id)) {
            for (Map.Entry<Integer, Package> entry : mappack.entrySet()) {
                Package pack = entry.getValue();
                if (pack.getId() == id) {
                    return pack;
                }
            }
            return null;
        } else {
            return null;
        }
    }

    public double calculateShippingCost(int id) {
        if (!mappack.containsKey(id)) {
            return -1;
        } else {
            Package pack = mappack.get(id);
            StandardShippingCostCalculator calculator = new StandardShippingCostCalculator();
            return calculator.calculateShippingCost(pack);
        }
    }    

    public void printAllPackages() {
        for (Map.Entry<Integer, Package> entry : mappack.entrySet()) {
            System.out.println(entry.getValue());
        }
    }

    public Map<Integer, Package> getPackageMap() {
        return mappack;
    }    


}
