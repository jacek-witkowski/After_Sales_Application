package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.Manufacturer;


public interface ManufacturerRepository extends JpaRepository<Manufacturer, Integer> {

}
