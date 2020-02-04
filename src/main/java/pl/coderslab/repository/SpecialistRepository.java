package pl.coderslab.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.Specialist;

public interface SpecialistRepository extends JpaRepository<Specialist, Integer> {


}
