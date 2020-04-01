package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.MachineType;


public interface MachineTypeRepository extends JpaRepository<MachineType, Integer> {

}
