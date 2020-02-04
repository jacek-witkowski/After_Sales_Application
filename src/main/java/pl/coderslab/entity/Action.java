package pl.coderslab.entity;

import org.hibernate.validator.constraints.SafeHtml;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.time.LocalDate;

@Entity
public class Action {

    @Column(name = "id")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;

    @Column(name = "start_date")
    @FutureOrPresent
    LocalDate startDate;

    @Column(name = "end_date")
    @FutureOrPresent
    LocalDate endDate;

    @Column(name = "travel_time")
    @Digits(integer = 2, fraction = 1)
    @DecimalMin(value = "0.0", inclusive = true)
    @DecimalMax(value = "20.0", inclusive = true)
    // dodać walidację po liczbie godzin vs długość interwencji
            // np. w przypadku jednodniowej interwencji
            // praca + podróż nie mogą wynosić więcej niż 16 godz.
            // dwa dni = w sumie nie więcej niż 32 godz. itd.
            // trzeba doliczyć 8 godzin na sen.
            Float travelTime;

    @Column(name = "work_time")
    @Digits(integer = 2, fraction = 1)
    @DecimalMin(value = "1.0", inclusive = true)
    @DecimalMax(value = "99.9", inclusive = true)
    // dodać walidację jw.
            Float workTime;

    @Column(name = "report_link")
// pole generowane przez aplikację - nie ma potrzeby walidacji
            String reportLink;

    @Column(name = "recomendation")
    @Size(max = 255)
    String recomendation;

    @Column(name = "next_action")
    String nextAction;

    @ManyToOne
    private KindOfAction kind;

    @ManyToOne
    private Specialist specialist;

    @ManyToOne
    private Submission submission;

    public Action() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public LocalDate getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDate endDate) {
        this.endDate = endDate;
    }

    public Float getTravelTime() {
        return travelTime;
    }

    public void setTravelTime(Float travelTime) {
        this.travelTime = travelTime;
    }

    public Float getWorkTime() {
        return workTime;
    }

    public void setWorkTime(Float workTime) {
        this.workTime = workTime;
    }

    public String getReportLink() {
        return reportLink;
    }

    public void setReportLink(String reportLink) {
        this.reportLink = reportLink;
    }

    public String getRecomendation() {
        return recomendation;
    }

    public void setRecomendation(String recomendation) {
        this.recomendation = recomendation;
    }

    public String getNextAction() {
        return nextAction;
    }

    public void setNextAction(String nextAction) {
        this.nextAction = nextAction;
    }

    public KindOfAction getKind() {
        return kind;
    }

    public void setKind(KindOfAction kind) {
        this.kind = kind;
    }

    public Specialist getSpecialist() {
        return specialist;
    }

    public void setSpecialist(Specialist specialist) {
        this.specialist = specialist;
    }

    public Submission getSubmission() {
        return submission;
    }

    public void setSubmission(Submission submission) {
        this.submission = submission;
    }
}

