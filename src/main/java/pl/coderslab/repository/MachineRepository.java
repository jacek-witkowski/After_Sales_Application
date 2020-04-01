package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.Machine;

public interface MachineRepository extends JpaRepository<Machine, Integer> {

}
