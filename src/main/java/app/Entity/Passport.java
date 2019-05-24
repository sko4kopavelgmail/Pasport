package app.Entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Passport {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String fullName;

    private String shortName;

    private String model;

    private String patent;

    private String standard;

    private String unit;

    private String mass;

    private String approximateMass;

    private String perspective;

    private String purpose;

    private int OKP;

    private boolean SAPRIntegration;

    private boolean criticalPosition;

}
