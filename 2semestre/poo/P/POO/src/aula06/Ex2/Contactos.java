package aula06.Ex2;

public class Contactos {
    private String name;
    private int phonenumber;
    private String email;
    private int id = 1;
    private static int nextid = 1;

    public Contactos(String name, int phonenumber, String email ) {
        this.name = name;
        this.id = nextid++;
        this.phonenumber = phonenumber;
        this.email = email;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public int getPhonenumber() {
        return phonenumber;
    }
    public void setPhonenumber(int phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }


    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    
    public static boolean validPhonenumber(int phonenumber) {
        String stringphonenumber = Integer.toString(phonenumber);
        if (stringphonenumber.length() != 9 || stringphonenumber.charAt(0) != '9') {
            return false;
        }
        return true;
    }

    public static boolean validEmail(String email) {
        int numerocar = 0;
        int valido = 0;
        for (int i = 0; i < email.length(); i++) {
            if (email.charAt(i) == '@') {
                numerocar += 1;
            }
            if (email.charAt(i) == '.') {
                int proximo = i + 1;
                if (proximo < email.length()) {
                    valido ++;
                }
            }
        }
        if (numerocar == 1 && valido == 1) {
            return true;
        } else {
            return false;
        }
    }

    public String toString() {
        return "ID: " + id + "; Nome: " + name + "; Número de telefone: " + phonenumber + "; Email: " + email;
    }


}
