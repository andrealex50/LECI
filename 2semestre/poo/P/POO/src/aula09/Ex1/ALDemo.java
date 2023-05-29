package aula09.Ex1;
import aula06.Ex1.Pessoa;
import aula07.Ex2.DateYMD;
import aula07.Ex2.Date;


import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;


public class ALDemo {
    public static void main(String[] args) {
        ArrayList<Integer> c1 = new ArrayList<>();
        for (int i = 10; i <= 100; i+=10) 
            c1.add(i);
        System.out.println("Size: " + c1.size());
        for (int i = 0; i < c1.size(); i++) 
            System.out.println("Elemento: " + c1.get(i));
        
        ArrayList<String> c2 = new ArrayList<>();
        c2.add("Vento");
        c2.add("Calor");
        c2.add("Frio");
        c2.add("Chuva");
        c2.add("Nevoeiro");
        System.out.println(c2);
        Collections.sort(c2);
        System.out.println(c2);
        c2.remove("Frio"); 
        c2.remove(0);
        System.out.println(c2);
        if(c2.contains("Nevoeiro")) {
            System.out.println("Nevoeiro incluído");
        }
        System.out.println("Indíce de Nevoeiro: " + c2.indexOf("Nevoeiro"));
        System.out.println(c2.set(1, "Novo Calor"));
        System.out.println(c2);
        System.out.println(c2.subList(0, 1));
        System.out.println(c2.subList(0, 2));
        
        Set<Pessoa> c3 = new HashSet<>();
        
        Pessoa p1 = new Pessoa("André", 12345777, new DateYMD(18, 7, 1990));
        Pessoa p2 = new Pessoa("Afonso", 12346123, new DateYMD(8, 3, 1995));
        Pessoa p3 = new Pessoa("Manel", 12348345, new DateYMD(23, 3, 2002));
        Pessoa p4 = new Pessoa("Alexandre", 12354675, new DateYMD(3, 6, 2004));
        Pessoa p5 = new Pessoa("Joaquim", 12399973, new DateYMD(28, 9, 2006));

        c3.add(p1);
        c3.add(p2);
        c3.add(p3);
        c3.add(p4);
        c3.add(p5);

        for(Pessoa person : c3) {
            System.out.println(person.toString());
        }

        Set<Date> c4 = new TreeSet<>();

        c4.add(new DateYMD(29, 5, 1930));
		c4.add(new DateYMD(17, 12, 1966));
		c4.add(new DateYMD(23, 3, 1977));
		c4.add(new DateYMD(28, 2, 1870));
		c4.add(new DateYMD(5, 8, 2003));
		c4.add(new DateYMD(5, 9, 2003));

		System.out.println(c4);

        
    }
}