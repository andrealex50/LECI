package ExsAula.ExerAula;
import java.lang.Math;

public class StandardShippingCostCalculator implements ShippingCostCalculator{
    
    public double calculateShippingCost(Package pkg) {
        double peso = pkg.getWeight();
        double preco;
        if (peso < 5) {
            preco = Math.ceil(peso);
        } else if (peso <= 10 && peso >= 5) {
            preco = Math.ceil(peso) * 2;
        } else {
            preco = Math.ceil(peso) * 3;
        }
        return preco;
    }

}
