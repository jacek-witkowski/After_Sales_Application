package pl.coderslab.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "machine_type")
public class MachineType {

    @Column(name = "id")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "line")
    private String line;  // zwalidować!!

    @Column(name = "type")
    @NotNull
    private String type;

    @ManyToOne
    private Manufacturer manufacturer;

    @OneToMany(mappedBy = "type")
    List<Machine> machines = new ArrayList<>();

    public MachineType() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLine() {
        return line;
    }

    public void setLine(String line) {
        this.line = line;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
