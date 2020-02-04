package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.Submission;

public interface SubmissionRepository extends JpaRepository<Submission, Integer> {


}
