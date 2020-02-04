package pl.coderslab.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CityValidator implements ConstraintValidator<City, String> {
    @Override
    public void initialize(City constraintAnnotation) {

    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        return value.matches("([A-Z]{1}[a-z]+)|(\\1\\s\\1)|\\2\\s\\1|(\\1\\-\\1)|\\3\\-\\1");
    }
}
