package PrepEP.POO2122;


public class Culture implements Activity {
    private Option option;
    private int participants;

    public Culture (Option option, int participants) {
        this.option = option;
        this.participants = participants;
    }

    public Option getOption() {
        return option;
    }
    public void setOption(Option option) {
        this.option = option;
    }
    public int getPrice() {
        return 22;
    }

    public int getParticipants() {
        return participants;
    }
    public void setParticipants(int participants) {
        this.participants = participants;
    }

    public static class Option{
        static Option ARCHITECTURAL_TOUR = new Option("ARCHITECTURAL_TOUR");
        static Option RIVER_TOUR = new Option("RIVER_TOUR");
        static Option ART_MUSEUM = new Option("ART_MUSEUM");
        static Option WINE_TASTING = new Option("WINE_TASTING");

        private String name;

        public Option(String name) {
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
        return "Culture{" +
                "option=" + option.getName() +
                ", participants=" + participants +
                '}';
    }

}
