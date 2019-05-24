package app.Service;

import app.Entity.Passport;
import app.Repository.PassportRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class PassportService {

    @Autowired
    private PassportRepo passportRepo;

    public List<Passport> getAll() {
        return passportRepo.findAll();
    }

    public void updatePassport(Passport passport, Map<String, String> form) {
        setFields(passport, form);
        passportRepo.save(passport);
    }

    public void createPassport(Map<String, String> form) {
        Passport passport = new Passport();
        setFields(passport, form);
        passportRepo.save(passport);
    }

    private void setFields(Passport passport, Map<String, String> form) {
        int okp;
        try {
            okp = Integer.parseInt(form.get("OKP"));
        } catch (NumberFormatException e) {
            okp = 0;
        }
        passport.setFullName(form.get("fullName"));
        passport.setShortName(form.get("shortName"));
        passport.setModel(form.get("model"));
        passport.setPatent(form.get("patent"));
        passport.setStandard(form.get("standard"));
        passport.setUnit(form.get("unit"));
        passport.setMass(form.get("mass"));
        passport.setApproximateMass(form.get("approximateMass"));
        passport.setPerspective(form.get("perspective"));
        passport.setPurpose(form.get("purpose"));
        passport.setOKP(okp);
        passport.setSAPRIntegration(form.get("SAPRIntegration").equals("Да"));
        passport.setCriticalPosition(form.get("criticalPosition").equals("Да"));
    }
}
