library "FemalePatientsUnder25" version '1.0.0'

using FHIR version '4.0.1'

context Patient

define "Patient is Female":
   Patient.gender.value = 'female'

define "Initial Population":
   "Patient is Female"

define "Denominator":
   "Initial Population"

define "Numerator":
   AgeInYears() <= 25
   
