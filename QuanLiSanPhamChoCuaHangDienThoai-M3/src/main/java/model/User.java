package model;

import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class User {
    protected int idUser;
    protected String image;
    protected String userName;
    protected String password;
    protected int idRole;
    protected String email;
    protected String phone;
    protected int idCountry;

    public User() {
    }

    public User(int idUser, String image, String userName, String password, int idRole, String email, int idCountry, String phone) {
        this.idUser = idUser;
        this.image = image;
        this.userName = userName;
        this.password = password;
        this.idRole = idRole;
        this.email = email;
        this.idCountry = idCountry;
        this.phone = phone;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @NotBlank
    @Length(min= 5, max = 20, message = "Length of password from 5 to 20 character")
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @NotBlank
    @Length(min= 5, max = 20, message = "Length of Name from 5 to 20 character")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @NotNull
    public int getIdRole() {
        return idRole;
    }

    public void setIdRole(int idRole) {
        this.idRole = idRole;
    }

    @NotEmpty
    @Email(regexp = "(\\b[\\w\\.-]+@[\\w\\.-]+\\.\\w{2,4}\\b)", message = "Email format not right")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @NotNull
    public int getIdCountry() {
        return idCountry;
    }

    public void setIdCountry(int idCountry) {
        this.idCountry = idCountry;
    }

    @NotBlank
    @Length(min = 10, max = 10, message = "phone number must be ten digits")
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "User{" +
                "idUser=" + idUser +
                ", image='" + image + '\'' +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", idRole='" + idRole + '\'' +
                ", email='" + email + '\'' +
                ", idCountry=" + idCountry +
                '}';
    }
}
