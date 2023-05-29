package aula11.Ex4;

public class Voo {
    private String hora;
    private String voo;
    private String companhia;
    private String origem;
    private String atraso;
    private String obs;

    public Voo(String hora, String voo, String companhia, String origem, String atraso, String obs) {
        this.hora = hora;
        this.voo = voo;
        this.companhia = companhia;
        this.origem = origem;
        this.atraso = atraso;
        this.obs = obs;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getVoo() {
        return voo;
    }

    public void setVoo(String voo) {
        this.voo = voo;
    }

    public String getCompanhia() {
        return companhia;
    }

    public void setCompanhia(String companhia) {
        this.companhia = companhia;
    }

    public String getOrigem() {
        return origem;
    }

    public void setOrigem(String origem) {
        this.origem = origem;
    }

    public String getAtraso() {
        return atraso;
    }

    public void setAtraso(String atraso) {
        this.atraso = atraso;
    }

    public String getObs() {
        return obs;
    }

    public void setObs(String obs) {
        this.obs = obs;
    }

    public String toString() {
        String formattedString = String.format("%-7s %-8s %-19s %-20s %-8s %s",
                hora, voo, companhia, origem, " " + atraso, obs);
        return formattedString;
    }    
    
}
