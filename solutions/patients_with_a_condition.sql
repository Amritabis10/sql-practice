-- Patients With a Condition
-- Write your solution here
Select patient_id, patient_name, conditions from 
Patients where conditions like 'DIAB1%' OR conditions like '% DIAB1%' 
