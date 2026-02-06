# 🏥 MIMIC-III ICU Readmission Risk Factor Analysis

본 프로젝트는 실제 병원 환경과 동일한 구조의 공개 임상 데이터인  
**MIMIC-III Clinical Database Demo**를 활용하여  
**ICU에 처음 입원한 환자를 대상으로  
30일 이내 재입원(readmission)과 관련된 요인을 분석**하는 것을 목표로 한다.

본 분석은 재입원 여부를 정확히 예측하는 모델을 만드는 데 목적을 두기보다는  
병원 임상 데이터의 구조를 이해하고  
재입원이라는 병원 핵심 지표가  
어떤 환자 특성 및 입원 맥락과 함께 나타나는지를  
전처리와 해석 중심으로 살펴보는 데 중점을 둔다.

---

## 1. 데이터 출처

- **플랫폼**: PhysioNet  
- **데이터셋**: MIMIC-III Clinical Database Demo  
- **링크**: https://physionet.org  

PhysioNet은 실제 병원 임상 데이터를 연구 목적으로 공개하는  
대표적인 의료 데이터 플랫폼이다.  

MIMIC 데이터는 병원 데이터센터 및 의료데이터 분석 직무에서  
가장 널리 활용되는 공개 임상 데이터 중 하나로  
환자 단위 분석과 병원 운영 지표 분석에 적합하다.

---

## 2. 데이터 선택 이유

MIMIC-III Demo 데이터는 전체 MIMIC-III 데이터의 축소판이지만  
테이블 구조와 컬럼 의미는 실제 병원 데이터와 동일하다.

이로 인해 다음과 같은 장점을 가진다.

- 환자 단위 관계형 테이블 구조 제공  
  (PATIENTS ADMISSIONS DIAGNOSES ICUSTAYS)
- 재입원 사망 입원 기간과 같은 병원 핵심 지표 분석 가능
- 실제 병원 데이터와 동일한 전처리 및 cohort 설계 흐름 연습 가능
- 소규모 데이터로 전체 분석 파이프라인 완주 가능
- 병원 데이터센터 및 의료데이터 분석 직무 포트폴리오로 활용 가능

---

## 3. 사용 데이터

본 프로젝트에서는 다음 CSV 파일을 사용하였다.

- **PATIENTS.csv**  
  환자 기본 정보 (성별 생년월일 등)
- **ADMISSIONS.csv**  
  입원 및 퇴원 기록과 입원 관련 정보
- **DIAGNOSES_ICD.csv**  
  환자별 ICD 진단 코드
- **D_ICD_DIAGNOSES.csv**  
  ICD 진단 코드 설명
- **ICUSTAYS.csv**  
  ICU 체류 정보

---

## 4. 프로젝트 구조

```
mimic-readmission-analysis/
├─ data/
│ ├─ raw/ # Raw MIMIC-III tables
│ ├─ processed/ # Analysis-ready datasets
│ │ └─ first_icu_admissions.csv
│ └─ README.md # Data description and preprocessing notes
│
├─ notebooks/
│ ├─ 01_data_loading.ipynb
│ ├─ 02_cohort_definition.ipynb
│ ├─ 03_readmission_eda.ipynb
│ ├─ 04_baseline_model.ipynb
│ ├─ 05_readmission_risk_factors.ipynb
│ ├─ 06_readmission_model_extension.ipynb
│ └─ 07_lessons_from_readmission_analysis.ipynb
│
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

1. 병원 임상 테이블 로드 및 관계 구조 파악  
2. ICU 환자 대상 첫 입원 기준 cohort 정의  
3. 입·퇴원 시점을 활용한 30일 이내 재입원 라벨 생성  
4. 전처리된 cohort 기반 탐색적 데이터 분석 수행  
5. 재입원군과 비재입원군 간 주요 변수 분포 비교 및 해석  
6. baseline 모델을 통한 재입원 예측 문제의 난이도 확인  
7. 입원 및 퇴원 관련 변수를 확장하여 모델 신호 변화 탐색  
8. 분석 결과를 바탕으로 재입원 예측의 한계와 해석 포인트 정리  

본 프로젝트에서의 모델링 단계는  
예측 성능 향상보다는  
변수 구성과 데이터 구조에 따른 신호 존재 여부를 확인하고  
의료데이터에서 재입원 예측이 가지는 구조적 한계를 이해하기 위한  
보조적인 분석 단계로 활용하였다.

---

## 7. 프로젝트 목적

본 프로젝트는 다음과 같은 실무 역량을 기르는 것을 목표로 한다.

- 병원 임상 데이터의 관계형 구조 이해
- 환자 단위 cohort 정의 및 outcome 라벨 설계 경험
- 결측치 및 이상치를 포함한 의료데이터 전처리 경험
- 재입원과 같은 병원 핵심 지표에 대한 해석 중심 분석 능력
- 의료데이터 분석 직무에 필요한 전체 분석 흐름 이해

---

## 8. 정리

본 프로젝트는  
30일 재입원이라는 예측이 본질적으로 어려운 문제를 통해  
모델 성능 자체보다  
데이터 구조 이해와 결과 해석이  
의료데이터 분석에서 얼마나 중요한지를 보여주는 사례이다.

이를 통해 병원 데이터센터 및 의료데이터 분석 직무에서 요구되는  
전처리 능력과 분석 결과 설명 역량을 함께 경험하는 것을 목표로 하였다.
