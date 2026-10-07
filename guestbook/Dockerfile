# ---------------------------------------------------------------
# 학생 과제: 아래 각 줄이 무엇을 하는지 주석으로 설명을 달아보세요.
# ---------------------------------------------------------------

# 베이스가 될 이미지
FROM python:3.12-slim

# 작업 디렉토리는 /app 이다.
WORKDIR /app

# 호스트의 require... 파일을 /app 경로로 복사
COPY requirements.txt . 

# 라이브러리를 설치한다. 설치된 라이브러리의 캐시는 남기지 않는다.
RUN pip install --no-cache-dir -r requirements.txt

# 호스트의 현재 파일들을 /app으로 복제한다
COPY . . 

# appuser라는 유저를 생성한다. 홈 디렉토리도 생성한다.
RUN useradd -m appuser 

# root계정이 아닌, 방금만든 appuser 계정을 사용한다.
USER appuser

# 환경변수를 세팅한다.
ENV APP_TITLE="누가누가 왔다갔나" \
    THEME_COLOR="#8732a8" \
    PORT="5002"

# 이 이미지는 5002포트를 사용한다고 알린다.(실 적용 X)
EXPOSE 5002

 # 컨테이너 안에서 실행시킬 명령어다.
CMD ["python", "app.py"]
