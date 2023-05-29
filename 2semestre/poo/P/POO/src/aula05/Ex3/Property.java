package aula05.Ex3;
import aula05.Ex1.DateYMD;

public class Property {
    private final int id;
    private final String address;
    private final int rooms;
    private final int price;
    private boolean isAvailable;
    private DateYMD auctionBegin;
    private DateYMD auctionEnd;

    public Property(int id, String address, int rooms, int price) {
        this.id = id;
        this.address = address;
        this.rooms = rooms;
        this.price = price;
        this.isAvailable = true;
        this.auctionBegin = null;
        this.auctionEnd = null;
    }

    public int getId() {
        return id;
    }

    public boolean isAvailable() {
        return isAvailable;
    }

    public void setAvailable(boolean available) {
        isAvailable = available;
    }

    public void setAuction(DateYMD begin, DateYMD end) {
        this.auctionBegin = begin;
        this.auctionEnd = end;
    }

    public DateYMD[] getAuction() {
        return new DateYMD[] {this.auctionBegin, this.auctionEnd};
    }

    public boolean isAuction() {
        return this.auctionBegin != null && this.auctionEnd != null;
    }

    public String toString() {
        return String.format("Imóvel %d; quartos: %d; localidade: %s; preço: %d; disponível: %s%s", this.id, this.rooms, this.address, this.price, this.isAvailable ? "sim" : "não", this.isAuction() ? String.format("; leilão: %s : %s", this.auctionBegin, this.auctionEnd) : "");
    }
}