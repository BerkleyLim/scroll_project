# scroll_project
Front : React 기반, Back : spring boot를 이용하여 데이터를 받고 게시판 내용을 해당 리스트 출력을 해보고, 선택 후 이전화면으로 돌아갈 시 선택된 데이터에 포커싱을 맞춘다.

<br/>

# 작업 환경
- React
- Spring boot
- Mysql
- nodeJS 16.10.8
- My-Batis
- Gradle

<br/>

# Getting Start
JDBC 사전 작업을 먼저 수행 후 진행 바람 (back-end 실행 방법 참조).
<br/>
- front : nodejs 와 npm가 있어야 하며
- back : gradle 설치 필수

### scroll_project_front
```
#repo
cd *front
npm run start
```

### scroll_project_back
1) SQL에 삽입하였을 경우 <strong>src/main/resources/application.yml</strong>을 열고 아래와 같이 10번째 줄인 본인이 저장한 DB 환경 설정
```
 jdbc:mysql://localhost:3306/{본인DB명}?useSSL=false&serverTimezone=UTC&zeroDateTimeBehavior=convertToNull&allowPublicKeyRetrieval=true&autoReconnect=true
```

2) 실행
```
#repo
cd *back
gradle bootrun
```

# 블로그
- (1) [`[무한 스크롤] 게시판 리스트 출력 [1] - 사전 준비`](https://berkley.tistory.com/21)
- (2) [`[무한 스크롤] 게시판 리스트 출력 [2] - 스크롤 구현 후 포커싱 유지`](https://berkley.tistory.com/22)
