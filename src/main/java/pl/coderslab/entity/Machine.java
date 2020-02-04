package pl.coderslab.entity;

import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.PastOrPresent;
import java.time.LocalDate;

@Entity
@Table(name = "machine")
public class Machine {

    @Column(name = "id")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "year")
    @Min(1970)
    // dodać walidację roku - nie może być późniejszy niż obecny
    private Integer year;

    @Column(name = "serial_number")
    private String serialNumber;

    @Column(name = "remarks")
    @Length(max = 255)
    private String remarks;

    @Column(name = "warranty_expiration_date")
    private LocalDate warrantyExpirationDate;

    @ManyToOne
    MachineType type;

    public Machine() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public LocalDate getWarrantyExpirationDate() {
        return warrantyExpirationDate;
    }

    public void setWarrantyExpirationDate(LocalDate warrantyExpirationDate) {
        this.warrantyExpirationDate = warrantyExpirationDate;
    }
}
