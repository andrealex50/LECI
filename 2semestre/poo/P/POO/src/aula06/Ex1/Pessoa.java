package aula06.Ex1;
import aula07.Ex2.DateYMD;

public class Pessoa {
    public String name;
    public int cc;
    public DateYMD dataNasc;
    

    public Pessoa(String name, int cc, DateYMD dataNasc) {
        if (validName(name) && validInt(cc)) {
            this.name = name;
            this.cc = cc;
            this.dataNasc = dataNasc; 
        }
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public int getCC() {
        return cc;
    }
    public void setCC(int cc) {
        this.cc = cc;
    }

    public DateYMD getDataNasc() {
        return dataNasc;
    }
    public void setDataNasc(DateYMD dataNasc) {
        this.dataNasc = dataNasc;
    }  

    public boolean validName(String name) {
        if (name == null) { 
            return false;
        }
        String [] splitedName = name.split(" ");
        for (String eachname : splitedName) {
            for (int i = 0; i < eachname.length(); i++) {
                char c = eachname.charAt(i);
                if (!(Character.isLetter(c))) {
                    return false;
                }
            }
        }
        return true;
    }  

    public boolean validInt(int cc) {
        String ccString = String.valueOf(cc);
        if (ccString.length() != 8) {
            return false;
        }
        return true;        
    }
    
    @Override
    public String toString() {
        return name + "; " + "CC: " + cc + "; " + "Data de Nascimento: " + dataNasc; 
    }
}


