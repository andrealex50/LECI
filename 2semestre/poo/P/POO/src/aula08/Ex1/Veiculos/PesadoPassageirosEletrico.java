package aula08.Ex1.Veiculos;

import aula08.Ex1.Interfaces.VeiculoEletrico;

public class PesadoPassageirosEletrico extends PesadoPassageiros implements VeiculoEletrico {

    private int autonomiamaxima;
    private int carga = 100;

    public PesadoPassageirosEletrico(String matricula, String marca, String modelo, int potencia, int numeroquadro, int peso, int passageiromaxima, int autonomia, int carga) {
        super(matricula, marca, modelo, potencia, numeroquadro, peso, passageiromaxima);
        this.autonomiamaxima = autonomia;
        this.carga = carga;
    }

    public int autonomiaMaxima() {
        return this.autonomiamaxima;
    }

    public int autonomia() {
        return this.autonomiamaxima * carga/100;
    }

    public void carregar(int percentagem) {
        this.carga += percentagem;
        if (this.carga > 100) this.carga = 100;
    }

    public int getCarga() {
        return this.carga;
    }

    @Override
    public String toString() {
        return "PesadoPassageirosEletrico {" + "matricula=" + getMatricula() + ", marca=" + getMarca() + ", modelo=" + getModelo() + ", potencia=" + getPotencia() + ", numeroDoQuadro=" + getNumeroquadro() + ", peso=" + getPeso() + ", nMaxPassageiros=" + getPassageiromaxima() + ", autonomia_maxima=" + autonomiamaxima + ", carga=" + carga + '}';
    }
}
