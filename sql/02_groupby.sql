-- 성별 환자 수 집계
SELECT gender, COUNT(*) AS patient_count
FROM patients
GROUP BY gender;

-- 전체 환자 평균 나이
SELECT AVG(age) AS avg_age
FROM patients;
