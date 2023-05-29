package PrepEP.ExContactos;

import java.time.LocalDate;

public class Contact {
    private int id, phone;
    private static int lastid = 0;
    private String name, email;
    private LocalDate datebirth;

    public Contact(int id, String name, int phone, String email, LocalDate datebirth) {
        this.id = lastid++;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.datebirth = datebirth;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public LocalDate getDatebirth() {
        return datebirth;
    }
    public void setDatebirth(LocalDate datebirth) {
        this.datebirth = datebirth;
    }

    public String toString() {
        return "ID: " + id + "; Nome: " + name + "; Telemóvel: " + phone + "; Email: " + email + "; Data de nascimento: " + datebirth;
    }
}
