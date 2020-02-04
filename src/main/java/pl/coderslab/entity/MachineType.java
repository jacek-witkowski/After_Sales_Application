package pl.coderslab.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
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
