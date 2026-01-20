# 🏥 MIMIC-III ICU Readmission Risk Factor Analysis

본 프로젝트는 실제 병원 환경과 동일한 구조의 공개 임상 데이터인  
**MIMIC-III Clinical Database Demo**를 활용하여,  
**ICU에 처음 입원한 환자(first admission)를 대상으로  
30일 이내 재입원 여부에 영향을 미치는 주요 요인을 분석**하는 것을 목표로 한다.

본 분석은 환자의 입·퇴원 기록과 진단 정보를 기반으로  
병원 임상 데이터의 구조를 이해하고,  
재입원(readmission)이라는 병원 핵심 지표를 데이터 기반으로 해석하는 데 중점을 둔다.

---

## 1. 데이터 출처

- **플랫폼**: PhysioNet  
- **데이터셋**: MIMIC-III Clinical Database Demo  
- **링크**: https://physionet.org  

PhysioNet은 실제 병원 임상 데이터를 연구 목적으로 공개하는  
대표적인 의료 데이터 플랫폼이다.  
MIMIC 데이터는 병원 데이터센터 및 의료데이터 분석 직무에서  
가장 널리 활용되는 공개 임상 데이터 중 하나로,  
환자 단위 분석과 병원 운영 지표 분석에 적합하다.

---

## 2. 데이터 선택 이유

MIMIC-III Demo 데이터는 전체 MIMIC-III 데이터의 축소판이지만,  
테이블 구조와 컬럼 의미가 실제 병원 데이터와 **100% 동일**하다.

이로 인해 다음과 같은 장점이 있다.

- 환자 단위 테이블 구조 (PATIENTS / ADMISSIONS / DIAGNOSES)
- 재입원, 사망, 입원 기간(Length of Stay) 등 병원 실무 질문 분석 가능
- SQL 및 Python 기반 분석 연습에 적합
- 소규모 데이터로 개인 프로젝트 완주 가능
- 병원 데이터센터 및 의료데이터 분석 직무 포트폴리오로 활용 용이

---

## 3. 사용 데이터

본 프로젝트에서는 다음 CSV 파일을 사용하였다.

- **PATIENTS.csv**: 환자 기본 정보 (성별, 생년월일 등)
- **ADMISSIONS.csv**: 입·퇴원 기록 및 입원 관련 정보
- **DIAGNOSES_ICD.csv**: 환자별 ICD 진단 코드
- **D_ICD_DIAGNOSES.csv**: ICD 진단 코드 설명
- **ICUSTAYS.csv**: ICU 체류 정보

---

## 4. 프로젝트 구조
```
mimic-readmission-analysis/
├─ data/ # MIMIC-III demo raw data
├─ notebooks/ # 분석 단계별 노트북
└─ README.md
```

---

## 5. 분석 환경

- Python  
- Pandas  
- Google Colab  
- GitHub  

---

## 6. 분석 흐름

1. 데이터 로드 및 테이블 구조 확인  
2. ICU 환자 대상 첫 입원(cohort) 정의  
3. 30일 이내 재입원(readmission) 라벨 생성  
4. 탐색적 데이터 분석(EDA)  
5. 주요 변수 비교 및 해석  
6. 간단한 예측 모델링을 통한 재입원 위험 요인 확인  

---

## 7. 프로젝트 목적

본 프로젝트를 통해 다음과 같은 역량을 기르는 것을 목표로 한다.

- 병원 임상 데이터 구조에 대한 이해
- 환자 단위 의료데이터 cohort 설계 경험
- 재입원과 같은 병원 핵심 지표에 대한 데이터 기반 분석 능력
- 의료데이터 분석 직무에 필요한 전체 분석 흐름 설계 역량
