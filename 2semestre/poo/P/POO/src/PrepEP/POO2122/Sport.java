package PrepEP.POO2122;

public class Sport implements Activity {
    private int participants;
    private Modality modality;

    public Sport(Modality modality , int participants) {
        this.modality = modality;
        this.participants = participants;
    }

    public Modality getModality() {
        return modality;
    }
    public void setModality(Modality modality) {
        this.modality = modality;
    }

    public int getPrice() {
        return 30;
    }

    public int getParticipants() {
        return participants;
    }
    public void setParticipants(int participants) {
        this.participants = participants;
    }

    public static class Modality{
        static Modality KAYAK = new Modality("KAYAK");
        static Modality HIKING = new Modality("HIKING");

        private String name;

        public Modality(String name) {
            this.name = name;
        }

        public String getName() {
            return name;
        }
        public void setName(String name) {
            this.name = name;
        }
    }

    @Override
    public String toString() {
        return "Sport{" +
                "participants=" + participants +
                ", modality=" + modality.getName() +
                '}';
    }

}
