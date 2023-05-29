package aula12.Ex3;


public class Movie {
    private String name, rating, genre;
    private double score, runningtime;

    public Movie(String name, Double score, String rating, String genre, Double runningtime) {
        this.name = name;
        this.score = score;
        this.rating = rating;
        this.genre = genre;
        this.runningtime = runningtime;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public double getScore() {
        return score;
    }
    public void setScore(double score) {
        this.score = score;
    }

    public String getRating() {
        return rating;
    }
    public void setRating(String rating) {
        this.rating = rating;
    }

    public String getGenre() {
        return genre;
    }
    public void setGenre(String genre) {
        this.genre = genre;
    }

    public double getRunningTime() {
        return runningtime;
    }
    public void setRunningTime(double runningtime) {
        this.runningtime = runningtime;
    }

    @Override
    public String toString() {
        return "Nome: " + name + "; Score: " + score + "; Rating: " + rating + "; Genre: " + genre + "; Running Time: " + runningtime;   
    }
}
