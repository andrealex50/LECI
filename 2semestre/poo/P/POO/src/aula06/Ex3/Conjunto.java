package aula06.Ex3;

public class Conjunto {
    
    int[] ArrayNumeros = new int[100];
    int tamanho = 0;
    
    public void insert(int n) {
        if (!contains(n)) {
            for (int i = 0; i < ArrayNumeros.length; i++) {
                if (ArrayNumeros[i] == 0) {
                    ArrayNumeros[i] = n;
                    tamanho++;
                    break;
                }
            }    
        }
    }

    public boolean contains(int n) {
        for (int i = 0; i < tamanho; i++) {
            if (ArrayNumeros[i] == n) {
                return true;
            }
        }
        return false;
    }

    public void remove(int n) {
        if(contains(n)) {
            for (int i = 0; i < tamanho; i++) {
                if (ArrayNumeros[i] == n) {
                    ArrayNumeros[i] = ArrayNumeros[tamanho - 1];
                    ArrayNumeros[tamanho - 1] = 0;
                    tamanho--;
                    break;
                }
            }
        }
    }

    public void empty() {
        for (int i = 0; i < tamanho; i++) {
            ArrayNumeros[i] = 0;
        }
        tamanho = 0;
    }

    public String toString() {
        String str = "";
        for (int i = 0; i < tamanho; i++) {
            str += ArrayNumeros[i] + " ";
        }
        return str;
    }
    

    public int size() {
        return tamanho;
    }

    public Conjunto combine(Conjunto add) {
        Conjunto conjuntofinal = new Conjunto();
        for (int i = 0; i < tamanho; i++) {
            conjuntofinal.insert(ArrayNumeros[i]);
        }
        for (int i = 0; i < add.tamanho; i++) {
            if (!contains(add.ArrayNumeros[i])) {
                conjuntofinal.insert(add.ArrayNumeros[i]);
            }
        }
        return conjuntofinal;
    }

    public Conjunto subtract(Conjunto dif) {
        Conjunto conjuntofinal = new Conjunto();
        for (int i = 0; i < tamanho; i++) {
            if (!dif.contains(ArrayNumeros[i])) {
                conjuntofinal.insert(ArrayNumeros[i]);
            }
        }
        return conjuntofinal;
    }

    public Conjunto intersect(Conjunto inter) {
        Conjunto conjuntofinal = new Conjunto();
        for (int i = 0; i < tamanho; i++) {
            if (inter.contains(ArrayNumeros[i])) {
                conjuntofinal.insert(ArrayNumeros[i]);
            }
        }
        return conjuntofinal;
    }

}
