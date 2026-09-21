## MySQL 스키마 및 테이블 생성()

2) 데이터 삽입
'DB생성.sql' 파일의 데이터 삽입 코드 실행하여 데이터 추가

## 가상환경 생성 및 설정
파이썬 버전 : 3.13.xxx
방법1. VSCode또는 cmd에서 venv 를 이용한 생성
```bash
python venv 가상환경이름
```

방법2. conda를 이용한 가상환경 생성
```bash
conda create -n
```


## 필요한 라이브러리 설치
```
pip install streamlit numpy pandas matplotlib seaborn plotly openpyxl konlpy wordcloud pymysql sqlalchemy
```

## 패키지 기록
```
pip freeze > requirements.txt
```

## 프로젝트 구조
```
Sale_Order_dash/
├─ app.py                       # 애플리케이션 진입점
├─ onfig.py                    # 상품·지역·상태 등 공통 상수
├─ chema.sql                   # DB·테이블·샘플 데이터생성
├─ requirements.txt
├─ db/
│  ├─ onnection.py            # SQLAlchemy Engine과 연결 풀
│  └─ order_repository.py       SELECT·INSERT·UPDATE·DELETE·집계
├─ services/
│  └─ order_service.py         # 입력 검증과 금액 계산
├─ ui/
│  ├─ order_form.py            # 등록·수정 공통 입력 위젯
│  ├─ search_view.py           # 조건 검색 화면
│  ├─ create_view.py           # 등록 화면
│  ├─ manage_view.py           # 수정·삭제 화면
│  └─ analysis_view.py         # DB 집계 분석 화면
├─ utils/
│  └─ state.py                 # UI 세션 상태 초기화
└─ .streamlit/
   └─ secrets.toml
```