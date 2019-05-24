package app.Repository;

import app.Entity.Passport;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PassportRepo extends JpaRepository<Passport, Long> {

}
