package pl.coderslab.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class PhoneValidator implements ConstraintValidator<Phone, String> {
   public void initialize(Phone constraint) {
   }

   public boolean isValid(String value, ConstraintValidatorContext context) {
       return true;
       //return value.matches("(\\d\\s*\\-{0,1}){9}");
   }
}
