package pl.coderslab.entity;

import pl.coderslab.validator.Phone;

import javax.persistence.*;
import javax.validation.constraints.Email;

@Entity
public class Specialist {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "first_name")
    private String firstName; // zwalidować!

    @Column(name = "last_name")
    private String lastName; // zwalidować!

    @Column(name = "email")
    @Email
    private String email;

    @Column(name = "phone")
    @Phone
    private String phone; // zwalidować!

    private String specialty; // pole połączone z "Manufacturer"

    public Specialist() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSpecialty() {
        return specialty;
    }

    public void setSpecialty(String specialty) {
        this.specialty = specialty;
    }
}
