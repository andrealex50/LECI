package aula08.Ex1;

import aula08.Ex1.Veiculos.*;

public class Exer1 {

    public static void main(String[] args) {

        EmpresaAluguer empresa = new EmpresaAluguer("Empresa1", "1234-567", "abc@ua.pt");

        Motociclo motociclo1 = new Motociclo("12345", "Honda", "CBR", 125, "estrada");
        motociclo1.trajeto(20);
        Motociclo motociclo2 = new Motociclo("12346", "Honda", "CBR", 125, "estrada");
        motociclo2.trajeto(25);
        Motociclo motociclo3 = new Motociclo("12347", "Honda", "CBR", 125, "desportivo");
        motociclo3.trajeto(30);

        AutoLigeiro automovelLigeiro1 = new AutoLigeiro("12348", "Fiat", "Palio", 125, 12345, 5);
        automovelLigeiro1.trajeto(20);
        AutoLigeiro automovelLigeiro2 = new AutoLigeiro("12349", "Fiat", "Palio", 125, 12345, 5);
        automovelLigeiro2.trajeto(25);

        Taxi taxi1 = new Taxi("12350", "Fiat", "Palio", 125, 12345, 5, 123456789);
        taxi1.trajeto(20);
        Taxi taxi2 = new Taxi("12351", "Fiat", "Palio", 125, 12345, 5, 123456789);
        taxi2.trajeto(25);

        PesadoMercadorias pesadoMercadorias1 = new PesadoMercadorias("12352", "Fiat", "Palio", 125, 12345, 5, 150);
        pesadoMercadorias1.trajeto(20);
        PesadoMercadorias pesadoMercadorias2 = new PesadoMercadorias("12353", "Fiat", "Palio", 125, 12345, 5, 150);
        pesadoMercadorias2.trajeto(25);

        PesadoPassageiros pesadoPassageiros1 = new PesadoPassageiros("12354", "Fiat", "Palio", 125, 12345, 5, 30);
        pesadoPassageiros1.trajeto(20);
        PesadoPassageiros pesadoPassageiros2 = new PesadoPassageiros("12355", "Fiat", "Palio", 125, 12345, 5, 30);
        pesadoPassageiros2.trajeto(25);
        
        PesadoPassageirosEletrico pesadoPassageirosEletrico1 = new PesadoPassageirosEletrico("15735", "Ford", "Fiesta", 167, 15642, 5, 30, 1000, 300);
        pesadoPassageirosEletrico1.trajeto(26);

        
        empresa.addVeiculo(motociclo1);
        empresa.addVeiculo(motociclo2);
        empresa.addVeiculo(motociclo3);
        empresa.addVeiculo(automovelLigeiro1);
        empresa.addVeiculo(automovelLigeiro2);
        empresa.addVeiculo(taxi1);
        empresa.addVeiculo(taxi2);
        empresa.addVeiculo(pesadoMercadorias1);
        empresa.addVeiculo(pesadoMercadorias2);
        empresa.addVeiculo(pesadoPassageiros1);
        empresa.addVeiculo(pesadoPassageiros2);
        empresa.addVeiculo(pesadoPassageirosEletrico1);

        System.out.println(empresa.toString() + "\n");

        for ( Veiculo veiculo : empresa.getVeiculos() ) {
            System.out.println(veiculo.toString());
        }

        System.out.println("\n");

        Veiculo veiculoComMaiorDistancia = null;
        for ( Veiculo veiculo : empresa.getVeiculos() ) {
            if (veiculoComMaiorDistancia == null) {
                veiculoComMaiorDistancia = veiculo;
            } else if (veiculo.distanciaTotal() > veiculoComMaiorDistancia.distanciaTotal()) {
                veiculoComMaiorDistancia = veiculo;
            }
        }

        System.out.println("O veículo que percorreu maior distância foi: " + veiculoComMaiorDistancia.toString());
        
    }
}
