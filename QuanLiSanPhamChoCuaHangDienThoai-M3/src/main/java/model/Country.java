package model;

public class Country {
    private int id;
    private String Country;
    public Country() {}

    public Country(int id, String country) {
        this.id = id;
        Country = country;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCountry() {
        return Country;
    }

    public void setCountry(String country) {
        Country = country;
    }

    @Override
    public String toString() {
        return "Country{" +
                "id=" + id +
                ", Country='" + Country + '\'' +
                '}';
    }
}
