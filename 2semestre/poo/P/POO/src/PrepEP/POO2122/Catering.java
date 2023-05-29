package PrepEP.POO2122;

public class Catering implements Activity {
    private Option option;
    private int participants;

    public Catering (Option option, int participants) {
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
        return 25;
    }

    public int getParticipants() {
        return participants;
    }
    public void setParticipants(int participants) {
        this.participants = participants;
    }

    public static class Option{
        static Option DRINKS_AND_SNACKS = new Option("DRINKS_AND_SNACKS");
        static Option LIGHT_BITES = new Option("LIGHT_BITES");
        static Option FULL_MENU = new Option("FULL_MENU");

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
        return "Catering{" +
                "option=" + option.getName() +
                ", participants=" + participants +
                '}';
    }

}
