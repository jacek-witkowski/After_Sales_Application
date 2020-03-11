package pl.coderslab.entity;


import org.hibernate.validator.constraints.Length;
import org.mindrot.jbcrypt.BCrypt;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "login", unique = true)
    @NotNull
    @Length(min = 4, max = 20)
    private String login;

    /*@Column(name = "password")
    @NotNull*/
    @Transient
    @Length(min = 4, max = 200)
    private String password;

    @Column(name = "encoded_pass")
    private String hashedPwd;

    @PrePersist
    @PreUpdate
    public void encryptPwd() {
        hashedPwd = BCrypt.hashpw(password, BCrypt.gensalt());
    }

    public User() {
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getHashedPwd() {
        return hashedPwd;
    }

    public void setHashedPwd(String hashedPwd) {
        this.hashedPwd = hashedPwd;
    }
}
