package ExsAula.ExerAula;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Map;

public class PackagingTester {
    
    public static void main(String [] args) throws IOException{

        PackageManager packageManager = new PackageManager();

        Package pack1 = new Package(23.4, "Lisbon", "Porto");
        Package pack2 = new Package(423.3 , "Viseu", "Trancoso");

        packageManager.addPackage(pack1);
        packageManager.addPackage(pack2);
        packageManager.printAllPackages();
        System.out.println();

        packageManager.removePackage(1);
        packageManager.printAllPackages();
        System.out.println();

        PackageManager.readFile("C:\\Users\\alexa\\disciplinas\\2semestre\\poo\\P\\POO\\src\\ExsAula\\ExerAula\\encomendas.txt");
        packageManager.printAllPackages();
        System.out.println();

        Package searchedpack = packageManager.searchPackage(10);
        System.out.println(searchedpack);
        System.out.println();

        packageManager.printAllPackages();
        System.out.println();
        
        packageManager.calculateShippingCost(10);

        writeFile(packageManager);
        
    }

    public static void writeFile(PackageManager packageManager) throws IOException {
        FileWriter myWriter = new FileWriter("C:\\Users\\alexa\\disciplinas\\2semestre\\poo\\P\\POO\\src\\ExsAula\\ExerAula\\Listaencomendas.txt");
        Map<Integer, Package> packages = packageManager.getPackageMap();
        for (Map.Entry<Integer, Package> entry : packages.entrySet()) {
            Package pack = entry.getValue();
            myWriter.write(pack.getSender() + "; " + pack.getDestination() + "; " + pack.getWeight() + "; " + packageManager.calculateShippingCost(pack.getId()) + "\n");
        }
        myWriter.close();
    }
    
    
    
    
}
