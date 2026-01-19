-- 환자 정보와 방문 기록을 함께 조회

SELECT
    p.patient_id,
    p.gender,
    p.age,
    v.visit_date
FROM patients p
JOIN visits v
    ON p.patient_id = v.patient_id;
