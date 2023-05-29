package aula08.Ex1.Veiculos;

import aula08.Ex1.Interfaces.VeiculoEletrico;

public class AutoEletrico extends AutoLigeiro implements VeiculoEletrico {
    
    private int autonomiamaxima;
    private int carga = 100;

    public AutoEletrico(String matricula, String marca, String modelo, int potencia, int numeroquadro, int capacidadebag, int autonomia, int carga) {
        super(matricula, marca, modelo, potencia, numeroquadro, capacidadebag);
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

    public String toString() {
        return "AutomovelLigeiroEletrico {" + "matricula=" + getMatricula() + ", marca=" + getMarca() + ", modelo=" + getModelo() + ", potenciaCv=" + getPotencia() + ", numeroDoQuadro=" + getNumeroquadro() + ", capacidadeDaBagageira=" + getCapacidadebag() + ", autonomia_maxima=" + autonomiamaxima + ", carga=" + carga + '}';
    }
}
