package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.Owner;

public interface OwnerRepository extends JpaRepository<Owner, Integer> {

}
