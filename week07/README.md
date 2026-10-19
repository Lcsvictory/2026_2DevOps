## docker에서 sclae out
```
docker compose up -d --scale [container name]=[number]
```
- 스케일 아웃으로 인해 여러개의 컨테이너가 작동중임.
![alt text](image.png)
![alt text](image-1.png)

## docker down vs docker down -v
- **-v** 옵션은 볼륨을 삭제하는 옵션임. 데이터가 삭제됨
- 기본 down은 컨테이너를 단순 종료함.

## .env는 우리집 비밀번호
- 우리집 비밀번호를 전 세계에 공개하지 말자.
- .env.example을 사용하여 어떤 데이터가 필요한지 항목만 남겨두자.
