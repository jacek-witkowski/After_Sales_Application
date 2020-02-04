package pl.coderslab.entity;

import javax.persistence.*;
import javax.validation.constraints.*;

@Entity
@Table(name = "submission")
public class Submission {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;

    @Column(name = "error_message")
    String errorCode;

    @Min(5)
    @Max(1024)
    @Column(name = "description")
    @NotEmpty
    @NotBlank
    String description;

    @Size(min = 2, max = 20)
    @Column(name = "contact_first_name")
    private String contactFirstName; // zwalidować!

    @Size(min = 2, max = 30)
    @Column(name = "contact_last_name")
    private String contactLastName; // zwalidować!

    @Email
    @Column(name = "contact_email")
    @NotEmpty
    private String contactEmail;

    @Column(name = "contact_phone")
    @NotEmpty
    private String contactPhone; // zwalidować!


}
