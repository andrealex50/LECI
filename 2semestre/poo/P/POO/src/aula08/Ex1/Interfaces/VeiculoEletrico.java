package aula08.Ex1.Interfaces;

public interface VeiculoEletrico {
    int autonomia(); // devolve autonomia restante
    void carregar(int percentagem); // simula um carregamento até ‘percentagem’
}    