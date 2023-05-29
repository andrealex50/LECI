package PrepEP.POO2021;

public class Restaurante {
    private String nome;
    private TipoComida tipodecomida;

    public Restaurante(String nome, TipoComida tipodecomida) {
        this.nome = nome;
        this.tipodecomida = tipodecomida;
    }

    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }

    public TipoComida getTipoComida() {
        return tipodecomida;
    }
    public void setTipodecomida(TipoComida tipodecomida) {
        this.tipodecomida = tipodecomida;
    }

    public static class TipoComida {
        private String comida;
        static TipoComida CHURRASQUEIRA = new TipoComida("CHURRASQUEIRA");
        static TipoComida ITALIANO = new TipoComida("ITALIANO");
        static TipoComida MARISQUEIRA = new TipoComida("MARISQUEIRA");
        static TipoComida VEGETARIANO = new TipoComida("VEGETARIANO");

        public TipoComida(String comida) {
            this.comida = comida;
        }

        public String getTipodecomida() {
            return comida;
        }
        public void setTipodecomida(String comida) {
            this.comida = comida;
        }

        public String toString() {
            return "Tipo de comida: " + comida;
        }

    }

    public String toString() {
        return "Nome: " + nome + "; Tipo de comida: " + tipodecomida;
    }
}
