package aula06.Ex1;
import java.time.LocalDate;

import aula07.Ex2.DateYMD;

public class Aluno extends Pessoa {
    public int nummec;
    public DateYMD datainscr;
    private static int nextNummec = 100;

    
    public Aluno(String name, int cc, DateYMD dataNasc, DateYMD datainscr) {
        super(name, cc, dataNasc);
        if (validName(name) && validateNMec(cc)) {
            this.name = name;
            this.dataNasc = dataNasc;
            this.nummec = nextNummec++;
            this.datainscr = datainscr;
        }
    }    

    public Aluno(String name, int cc, DateYMD dataNasc) {
        super(name, cc, dataNasc);
        if (validName(name) && validateNMec(cc)) {
            this.name = name;
            this.nummec = nextNummec++;
            this.dataNasc = dataNasc;
            this.datainscr = getCurrentDate();
        }
    }    
    

    public int getNMec() {
        return nummec;
    }

    public DateYMD getDatainscricao() {
        return datainscr;
    }
    public void setDatainscricao(DateYMD datainscr) {
        this.datainscr = datainscr;
    }

    public boolean validateNMec(int nummec) {
        if (nummec < nextNummec) {
            return false;
        }
        return true;
    }

    private DateYMD getCurrentDate() {
        LocalDate localDate = LocalDate.now();
        return new DateYMD(localDate.getDayOfMonth(), localDate.getMonthValue(), localDate.getYear());
    }
    
    @Override
    public String toString() {
        return "Número Mecanográfico: " + nummec + ";\n" + "Data de Nascimento: " + dataNasc + "Data de Inscrição: " + datainscr;
    }

}
