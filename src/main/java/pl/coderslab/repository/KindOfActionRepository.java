package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.KindOfAction;


public interface KindOfActionRepository extends JpaRepository<KindOfAction, Integer> {


}
