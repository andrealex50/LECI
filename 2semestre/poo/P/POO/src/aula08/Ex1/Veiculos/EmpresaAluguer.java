package aula08.Ex1.Veiculos;
import java.util.ArrayList;

public class EmpresaAluguer {
    private String nome, email;
    private String codigopostal;
    ArrayList<Veiculo> veiculos;

    public EmpresaAluguer(String nome, String codigopostal, String email) {
        this.nome = nome;
        this.codigopostal = codigopostal;
        this.email = email;
        this.veiculos = new ArrayList<>();
    }

    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCodigopostal() {
        return codigopostal;
    }
    public void setCodigopostal(String codigopostal) {
        this.codigopostal = codigopostal;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public ArrayList<Veiculo> getVeiculos() {
        return veiculos;
    }
    
    public void addVeiculo(Veiculo veiculo) {
        this.veiculos.add(veiculo);
    }

    public String toString() {
        return "Nome: " + nome + "; Código postal: " + codigopostal + "; email: " + email;
    }
}
