package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.Owner;

import java.util.List;
import java.util.Optional;

public interface OwnerRepository extends JpaRepository<Owner, Integer> {

    Optional<Owner> findFirstById(Integer id);

    //@Query("select o from Owner o where o.active = true")
    Optional<List<Owner>> findAllByNameContainingIgnoreCaseAndActiveIsTrue(String name);

    //@Query("select o from Owner o where o.active = false")
    Optional<List<Owner>> findAllByNameContainingIgnoreCaseAndActiveIsFalse(String name);

    Optional<List<Owner>> findAllByNameContainingIgnoreCase(String name);


}
