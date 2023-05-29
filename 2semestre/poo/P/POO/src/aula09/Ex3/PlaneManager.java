package aula09.Ex3;

import java.util.ArrayList;
import java.util.List;


public class PlaneManager {

    ArrayList<Plane> Frota = new ArrayList<>();

    public void addPlane(Plane plane) {
        Frota.add(plane);
    }

    public void removePlane(String id) {
        for (Plane plane : Frota) {
            if (plane.getId().equals(id)) {
                Frota.remove(plane);
            }
        }
    }

    public Plane searchPlane(String id) {
        for (Plane plane : Frota) {
            if (plane.getId().equals(id)) {
                return plane;
            }
        }
        return null;
    }

    public List<CommercialPlane> getCommercialPlanes() {
        List<CommercialPlane> AvioesComerciais = new ArrayList<>();
        for (Plane plane : Frota) {
            if (plane instanceof CommercialPlane) {
                AvioesComerciais.add((CommercialPlane) plane);
            }
        }
        return AvioesComerciais;
    }

    public List<MilitaryPlane> getMilitaryPlanes() {
        List<MilitaryPlane> AvioesMilitares = new ArrayList<>();
        for (Plane plane : Frota) {
            if (plane instanceof MilitaryPlane) {
                AvioesMilitares.add((MilitaryPlane) plane);
            }
        }
        return AvioesMilitares;
    }

    public void printAllPlanes() {
        for (Plane plane : Frota) {
            System.out.println(plane);
        }
    }

    public Plane getFastestPlane() {
        double velmaximaatual = 0;
        Plane maisrapido = null;
        for (Plane plane : Frota) {
            if (plane.getVelmaxima() > velmaximaatual) {
                velmaximaatual = plane.getVelmaxima();
                maisrapido = plane;
            }
        }
        return maisrapido;
    }

}
