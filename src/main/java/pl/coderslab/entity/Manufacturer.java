package pl.coderslab.entity;

import pl.coderslab.validator.City;
import pl.coderslab.validator.Phone;
import pl.coderslab.validator.PostalCode;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Manufacturer {

    @Column(name = "id")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "name")
    @NotEmpty
    @Size(min = 3, max = 30)
    private String name;

    @Column(name = "postal_code")
    @PostalCode
    private String postalCode; // zwalidować kod pocztowy

    @Column(name = "city")
    @NotNull
    @Size(min = 3, max = 30)
    @City
    private String city;

    @Column(name = "street")
    @NotNull
    @Size(min = 3, max = 30)
    private String street;

    @Column(name = "bldg_number")
    @NotNull
    @Size(min = 1, max = 15)
    private String bldgNumber;

    @Column(name = "country")
    @NotNull
    private String country; // państwo wybierane z listy

    @Column(name = "main_email")
    @Email
    private String mainEmail;

    @Column(name = "main_phone")
    @Phone
    private String mainPhone; // zwalidować!

    @Column(name = "main_fax")
    @Phone
    private String mainFax; // zwalidować tak jak telefon!

    @Column(name = "website")
    private String webSite; // zwalidować!

    @Column(name = "contact_first_name")
    @Size(min = 2, max = 20)
    private String contactFirstName; // zwalidować!

    @Column(name = "contact_last_name")
    @Size(min = 2, max = 30)
    private String contactLastName; // zwalidować!

    @Column(name = "contact_position")
    private String contactPosition;

    @Column(name = "contact_email")
    @Email
    private String contactEmail;

    @Column(name = "contact_phone")
    @Phone
    private String contactPhone; // zwalidować!

    @Column(name = "contact_fax")
    @Phone
    private String contactFax; // zwalidować tak jak telefon!


    public Manufacturer() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getBldgNumber() {
        return bldgNumber;
    }

    public void setBldgNumber(String bldgNumber) {
        this.bldgNumber = bldgNumber;
    }

    public String getMainEmail() {
        return mainEmail;
    }

    public void setMainEmail(String mainEmail) {
        this.mainEmail = mainEmail;
    }

    public String getMainPhone() {
        return mainPhone;
    }

    public void setMainPhone(String mainPhone) {
        this.mainPhone = mainPhone;
    }

    public String getMainFax() {
        return mainFax;
    }

    public void setMainFax(String mainFax) {
        this.mainFax = mainFax;
    }

    public String getWebSite() {
        return webSite;
    }

    public void setWebSite(String webSite) {
        this.webSite = webSite;
    }

    public String getContactFirstName() {
        return contactFirstName;
    }

    public void setContactFirstName(String contactFirstName) {
        this.contactFirstName = contactFirstName;
    }

    public String getContactLastName() {
        return contactLastName;
    }

    public void setContactLastName(String contactLastName) {
        this.contactLastName = contactLastName;
    }

    public String getContactPosition() {
        return contactPosition;
    }

    public void setContactPosition(String contactPosition) {
        this.contactPosition = contactPosition;
    }

    public String getContactEmail() {
        return contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }

    public String getContactPhone() {
        return contactPhone;
    }

    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone;
    }

    public String getContactFax() {
        return contactFax;
    }

    public void setContactFax(String contactFax) {
        this.contactFax = contactFax;
    }
}
