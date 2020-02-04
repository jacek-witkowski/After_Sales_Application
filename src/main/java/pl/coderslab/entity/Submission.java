package pl.coderslab.entity;

import pl.coderslab.validator.Phone;

import javax.persistence.*;
import javax.validation.constraints.*;

@Entity
@Table(name = "submission")
public class Submission {

    @Column(name = "id")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;

    @Column(name = "error_message")
    String errorCode;

    @Column(name = "description")
    @Min(5)
    @Max(1024)
    @NotEmpty
    @NotBlank
    String description;

    @Column(name = "contact_first_name")
    @Size(min = 2, max = 20)
    private String contactFirstName; // zwalidować!

    @Column(name = "contact_last_name")
    @Size(min = 2, max = 30)
    private String contactLastName; // zwalidować!

    @Column(name = "contact_email")
    @Email
    @NotEmpty
    private String contactEmail;

    @Column(name = "contact_phone")
    @NotEmpty
    @Phone
    private String contactPhone; // zwalidować!

    public Submission() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(String errorCode) {
        this.errorCode = errorCode;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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
}
